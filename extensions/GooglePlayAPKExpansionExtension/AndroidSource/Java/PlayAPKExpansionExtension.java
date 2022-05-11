
package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

import android.util.Log;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import android.os.Messenger;
import android.content.pm.PackageInfo;
import android.app.PendingIntent;
import android.content.Intent;
import android.provider.Settings;
import androidx.core.content.ContextCompat;
import androidx.core.app.ActivityCompat;
import android.Manifest;

import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.Thread;
import java.util.zip.ZipFile;
import java.util.zip.ZipEntry;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.EnumSet;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

import com.google.android.vending.expansion.downloader.Constants;
import com.google.android.vending.expansion.downloader.DownloadProgressInfo;
import com.google.android.vending.expansion.downloader.DownloaderClientMarshaller;
import com.google.android.vending.expansion.downloader.DownloaderServiceMarshaller;
import com.google.android.vending.expansion.downloader.Helpers;
import com.google.android.vending.expansion.downloader.IDownloaderClient;
import com.google.android.vending.expansion.downloader.IDownloaderService;
import com.google.android.vending.expansion.downloader.IStub;


public class PlayAPKExpansionExtension extends RunnerSocial  implements IDownloaderClient
{
	//APK expansion - TODO can we move at least some of this to separate file
	
	public static boolean APKExpansionNoDownloadFiles = false;
	private IDownloaderService mRemoteService;
    private IStub mDownloaderClientStub;
	
	//APK expansion UI...    
    private ProgressBar mPB;
    private TextView mStatusText;
    private TextView mProgressFraction;
    private TextView mProgressPercent;
    private TextView mAverageSpeed;
    private TextView mTimeRemaining;
    private View mDashboard;
    private View mCellMessage;
    private Button mPauseButton;
    private Button mWiFiSettingsButton;
    private boolean mStatePaused;
    private int mState;
	public int MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE=1023;
	
	@Override
	public void Init()
	{
	
		
		
		
	}
	
	@Override
	public void onStop()
	{
		//APK expansion
    	if (null != mDownloaderClientStub) {
			mDownloaderClientStub.disconnect(RunnerActivity.CurrentActivity);
		}
	}
	@Override
	public void onResume()
	{
		//APK expansion
    	if (null != mDownloaderClientStub) {
			mDownloaderClientStub.connect(RunnerActivity.CurrentActivity);
		}
    	
	}
	
  //IDownloaderClient implementation
    @Override
    public void onServiceConnected(Messenger m) {
        Log.i("yoyo", "APKExpansion: onServiceConnected");
        mRemoteService = DownloaderServiceMarshaller.CreateProxy(m);
        mRemoteService.onClientUpdated(mDownloaderClientStub.getMessenger());
    }
    
    @Override
    public void onDownloadStateChanged(int newState) 
    {
		int stringDownloadID;
		stringDownloadID = Helpers.getDownloaderStringResourceIDFromState(newState);
		String stateText = RunnerActivity.CurrentActivity.getString(stringDownloadID); //mContext.getString(stringDownloadID);	//?
		Log.i("yoyo", "APKExpansion: onDownloadStateChanged:" + newState + ":" + stateText);

		setState(newState);
		boolean showDashboard = true;
        boolean showCellMessage = false;
        boolean paused;
        boolean indeterminate;
				
		switch (newState) {
            case IDownloaderClient.STATE_IDLE:
                // STATE_IDLE means the service is listening, so it's
                // safe to start making calls via mRemoteService.
                paused = false;
                indeterminate = true;
                break;
            case IDownloaderClient.STATE_CONNECTING:
            case IDownloaderClient.STATE_FETCHING_URL:
                showDashboard = true;
                paused = false;
                indeterminate = true;
                break;
            case IDownloaderClient.STATE_DOWNLOADING:
                paused = false;
                showDashboard = true;
                indeterminate = false;
                break;

            case IDownloaderClient.STATE_FAILED_CANCELED:
            case IDownloaderClient.STATE_FAILED:
            case IDownloaderClient.STATE_FAILED_FETCHING_URL:
            case IDownloaderClient.STATE_FAILED_UNLICENSED:
                paused = true;
                showDashboard = false;
                indeterminate = false;
                break;
            case IDownloaderClient.STATE_PAUSED_NEED_CELLULAR_PERMISSION:
            case IDownloaderClient.STATE_PAUSED_WIFI_DISABLED_NEED_CELLULAR_PERMISSION:
                showDashboard = false;
                paused = true;
                indeterminate = false;
                showCellMessage = true;
                break;

            case IDownloaderClient.STATE_PAUSED_BY_REQUEST:
                paused = true;
                indeterminate = false;
                break;
            case IDownloaderClient.STATE_PAUSED_ROAMING:
            case IDownloaderClient.STATE_PAUSED_SDCARD_UNAVAILABLE:
                paused = true;
                indeterminate = false;
                break;
            case IDownloaderClient.STATE_COMPLETED:
                showDashboard = false;
                paused = false;
                indeterminate = false;
                
                //ready to continue...
                //1st check that the expected .obb file is present
                String fileName = GetExpansionAPKFilename();
				File file = new File( fileName );
				if( file.exists() ) 
				{
					RunnerActivity.CurrentActivity.APKExpansionFileReady = true;
					RunnerActivity.CurrentActivity.setupView();
					return;
				}
				else
				{
					Log.i("yoyo", "Expansion file " + fileName + " not found" );
					mStatusText.setText("Error: APK Expansion version is incorrect");
				}
                break;
                
            default:
                paused = true;
                indeterminate = true;
                showDashboard = true;
        }
        
        int newDashboardVisibility = showDashboard ? View.VISIBLE : View.GONE;
        if (mDashboard.getVisibility() != newDashboardVisibility) {
            mDashboard.setVisibility(newDashboardVisibility);
        }
        int cellMessageVisibility = showCellMessage ? View.VISIBLE : View.GONE;
        if (mCellMessage.getVisibility() != cellMessageVisibility) {
            mCellMessage.setVisibility(cellMessageVisibility);
        }

        mPB.setIndeterminate(indeterminate);
        setButtonPausedState(paused);
    }
	
	@Override
    public void onDownloadProgress(DownloadProgressInfo progress) 
    {
        mAverageSpeed.setText(RunnerActivity.CurrentActivity.getString(R.string.kilobytes_per_second, Helpers.getSpeedString(progress.mCurrentSpeed)));
        mTimeRemaining.setText(RunnerActivity.CurrentActivity.getString(R.string.time_remaining,Helpers.getTimeRemaining(progress.mTimeRemaining)));

        progress.mOverallTotal = progress.mOverallTotal;
        mPB.setMax((int) (progress.mOverallTotal >> 8));
        mPB.setProgress((int) (progress.mOverallProgress >> 8));
        mProgressPercent.setText(Long.toString(progress.mOverallProgress * 100 / progress.mOverallTotal) + "%");
        mProgressFraction.setText(Helpers.getDownloadProgressString(progress.mOverallProgress, progress.mOverallTotal));
    }
	
	
	@Override
	public void onRequestPermissionsResult(int requestCode,String permissions[], int[] grantResults)
	{
		
		//Doesn't get called as when the result comes in the game hasn't yet evaluated extensions :(
		Log.i("yoyo", "RequestPermissionsResult received:"+ Integer.toString(requestCode));
		if(requestCode == MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE)
		{
			//It's our request!!
			
			
			for (int i = 0; i < permissions.length; i++) 
			{
				String permission = permissions[i];
				int grantResult = grantResults[i];
				
				Log.i("yoyo","permission=" + permission + " result=" + Integer.toString(grantResult));
				if(permission.equals("android.permission.READ_EXTERNAL_STORAGE"))
				{
				
					if(grantResult==0)
					{
						RunnerActivity.CurrentActivity.APKExpansionFileReady = true;
					}
					else
					{
						Toast toast = Toast.makeText(RunnerActivity.CurrentActivity,"Unable to run without storage permssions, please enable storage permission",Toast.LENGTH_LONG);
						toast.show();
						ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity,new String[]{Manifest.permission.READ_EXTERNAL_STORAGE},	MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE);
					}
				}
			}
			
		}
		
	}
	
	 //return true if expansion download initiated
    //hmm...recommended place for this is in activity onCreate...may need some jiggling about...
    public boolean StartAPKExpansionDownload()
    {
		String fileName = GetExpansionAPKFilename();
		File file = new File( fileName );
		
		if( !file.exists() )
		{
			//no expansion file - start market request
			Log.i("yoyo", "Expansion file does not exist - downloading");
			try {
                Intent launchIntent = RunnerActivity.CurrentActivity.getIntent();
                Intent intentToLaunchThisActivityFromNotification = new Intent( RunnerActivity.CurrentActivity, RunnerActivity.CurrentActivity.getClass() );
                intentToLaunchThisActivityFromNotification.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
                intentToLaunchThisActivityFromNotification.setAction(launchIntent.getAction());
                
                // Build PendingIntent used to open this activity from Notification
                PendingIntent pendingIntent = PendingIntent.getActivity( RunnerActivity.CurrentActivity, 0, intentToLaunchThisActivityFromNotification,PendingIntent.FLAG_UPDATE_CURRENT);
                
                // Request to start the download
                int startResult = DownloaderClientMarshaller.startDownloadServiceIfRequired(RunnerActivity.CurrentActivity, pendingIntent, ExpansionDownloaderService.class);
                
                if (startResult != DownloaderClientMarshaller.NO_DOWNLOAD_REQUIRED) 
                {
                    Log.i("yoyo", "Expansion file download initiated: startResult=" + startResult);
                    // The DownloaderService has started downloading the files,show progress
                    //initializeDownloadUI();	//TODO something similar...
                    
                    // Instantiate a member instance of IStub
					//mDownloaderClientStub = DownloaderClientMarshaller.CreateStub(this, ExpansionDownloaderService.class);
                } 
                else {
					//happens when eg new expansion uploaded but changes not propogated to google play DB;
					//...we can't proceed if we can't download the file...
					Log.i("yoyo", "APKExpansion - NO_DOWNLOAD_REQUIRED...");
					APKExpansionNoDownloadFiles = true;
				}
				// Instantiate a member instance of IStub
				mDownloaderClientStub = DownloaderClientMarshaller.CreateStub(this, ExpansionDownloaderService.class);
				
				return true;
                 
			} catch (NameNotFoundException e) {
                Log.e("yoyo", "Cannot find own package! MAYDAY!");
                e.printStackTrace();
            }
		}
		else
		{
			//expansion file in place - set up paths to point to it ...
			Log.i( "yoyo", "!!!!!!! APK Expansion file in place!");
			
				
			if (ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.READ_EXTERNAL_STORAGE)!= PackageManager.PERMISSION_GRANTED) 
			{
				//Need to request this 
				// Should we show an explanation?
				
				Log.i("yoyo","We don't have read_external_storage permission");
				 
		 		ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity,new String[]{Manifest.permission.READ_EXTERNAL_STORAGE},	MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE);

 		
			}
			else
				RunnerActivity.CurrentActivity.APKExpansionFileReady = true;
		}
		return false;
    }
    
    public void setupDownloadView()
    {
		Log.i( "yoyo", "+ + + + setupDownloadView");
		RunnerActivity.CurrentActivity.setContentView(R.layout.download);
		mPB = (ProgressBar) RunnerActivity.CurrentActivity.findViewById(R.id.progressBar);
        mStatusText = (TextView) RunnerActivity.CurrentActivity.findViewById(R.id.statusText);
        mProgressFraction = (TextView) RunnerActivity.CurrentActivity.findViewById(R.id.progressAsFraction);
        mProgressPercent = (TextView) RunnerActivity.CurrentActivity.findViewById(R.id.progressAsPercentage);
        mAverageSpeed = (TextView) RunnerActivity.CurrentActivity.findViewById(R.id.progressAverageSpeed);
        mTimeRemaining = (TextView) RunnerActivity.CurrentActivity.findViewById(R.id.progressTimeRemaining);
        mDashboard = RunnerActivity.CurrentActivity.findViewById(R.id.downloaderDashboard);
        mCellMessage = RunnerActivity.CurrentActivity.findViewById(R.id.approveCellular);
        mPauseButton = (Button) RunnerActivity.CurrentActivity.findViewById(R.id.pauseButton);
        mWiFiSettingsButton = (Button) RunnerActivity.CurrentActivity.findViewById(R.id.wifiSettingsButton);
        
        if( APKExpansionNoDownloadFiles ) {
			mStatusText.setText( "APK Expansion file is unavailable...");
        }
        
        //pause button-probably don't need...
        mPauseButton.setOnClickListener(new View.OnClickListener() 
        {
            @Override
            public void onClick(View view) {
                if(mRemoteService != null) {
					if (mStatePaused) {
						mRemoteService.requestContinueDownload();
					} else {
						mRemoteService.requestPauseDownload();
					}
					setButtonPausedState(!mStatePaused);
				}
            }
        });
        
		mWiFiSettingsButton.setOnClickListener(new View.OnClickListener() 
		{
           @Override
           public void onClick(View v) {
               RunnerActivity.CurrentActivity.startActivity(new Intent(Settings.ACTION_WIFI_SETTINGS));
           }
        });

        Button resumeOnCell = (Button) RunnerActivity.CurrentActivity.findViewById(R.id.resumeOverCellular);
        resumeOnCell.setOnClickListener(new View.OnClickListener() 
        {
            @Override
            public void onClick(View view) {
                mRemoteService.setDownloadFlags(IDownloaderService.FLAGS_DOWNLOAD_OVER_CELLULAR);
                mRemoteService.requestContinueDownload();
                mCellMessage.setVisibility(View.GONE);
            }
        });
    }
    
    private void setState(int newState) {
        if (mState != newState) {
            mState = newState;
            mStatusText.setText(Helpers.getDownloaderStringResourceIDFromState(newState));
        }
    }

    private void setButtonPausedState(boolean paused) {
        mStatePaused = paused;
        int stringResourceID = paused ? R.string.text_button_resume :
                R.string.text_button_pause;
        mPauseButton.setText(stringResourceID);
    }
  //APK Expansion ------------------------------------------------
    public String GetExpansionAPKFilename()
    {
		//get apk expansion filename
		int versionCode = 1;
		try {
			PackageInfo pinfo = RunnerActivity.CurrentActivity.getPackageManager().getPackageInfo(RunnerActivity.CurrentActivity.getPackageName(), 0);
			versionCode = pinfo.versionCode;	//...think this is what we want...
		}catch (NameNotFoundException e)
		{
			e.printStackTrace();
		}
		String filename = Helpers.getExpansionAPKFileName( RunnerActivity.CurrentActivity, true, versionCode );	//without path
		String filePath = Helpers.generateSaveFileName( RunnerActivity.CurrentActivity, filename );	//+path
		Log.i("yoyo", "APKExpansion filename: " + filePath );
		return filePath;
    }
    
}