
package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

import android.util.Log;
import android.os.Handler;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Activity;
import android.os.AsyncTask;
import android.app.DialogFragment;
import android.os.Bundle;
import android.content.Intent;
import android.content.DialogInterface;
import android.util.Log;

import android.content.res.Configuration;
import android.util.DisplayMetrics;


import java.net.URL;
import java.net.MalformedURLException;
import java.util.List;

import android.content.SharedPreferences;

import android.text.TextUtils;
import android.content.Context;

import android.os.Build;
import ${YYAndroidPackageName}.R;
import android.app.Activity;
import android.view.ViewGroup;
import android.view.View;
import android.widget.AbsoluteLayout;
import com.yoyogames.runner.RunnerJNILib;
import com.google.android.gms.common.GooglePlayServicesUtil;
import android.widget.Toast;

import java.io.IOException;
import java.util.Calendar;
import java.lang.reflect.Method;
import java.lang.reflect.Constructor;

import android.annotation.TargetApi;
import com.google.android.gms.*;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.Snapshots;

import com.google.android.gms.games.Games;
import com.google.android.gms.games.LeaderboardsClient;
import com.google.android.gms.games.AchievementsClient;
import com.google.android.gms.games.GamesClient;
import com.google.android.gms.games.SnapshotsClient;

import com.google.android.gms.games.leaderboard.ScoreSubmissionData;
import com.google.android.gms.games.leaderboard.LeaderboardVariant;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.OnFailureListener;

import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.Player;

import com.google.android.gms.drive.Drive;
import com.google.android.gms.games.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.GooglePlayServicesUtil;

import com.google.android.gms.auth.api.signin.*;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;

import android.content.IntentSender.SendIntentException;


//Can't extend BaseGameUtils as we already extend RunnerSocial
public class GooglePlayServicesExtension extends RunnerSocial implements GoogleApiClient.ConnectionCallbacks,GoogleApiClient.OnConnectionFailedListener
{
	public interface OnSnapshotResolvedListener
	{
		void onSuccess(Snapshot snapshot, int fileId);
		void onFailure(String reason, int fileId);
	}
	
	private GoogleSignInClient mGoogleSigninClient = null;
    private GoogleSignInAccount mGoogleSignInAccount = null;
	
	//public GcmPush mGcmPush;	//Push notifications
	private int LastGSId=-1;


	private String mCurrentSaveName = "DefaultSave";
	private byte [] mSaveGameData = null;
		
	private RunnerBillingInterface iap_controller=null;
	
    // Unique tag for the error dialog fragment
    private static final String DIALOG_ERROR = "dialog_error";
	
    // Bool to track whether the app is already resolving an error
	private boolean mResolvingConnectionFailure = false;
	private boolean mAutoStartSignInFlow = true;
	private boolean mSignInClicked = false;
	private boolean mSignOutClicked = false;
	private boolean mSignedInOnPause = false;
	
	private boolean mCloudServicesEnabled = false;
	private boolean mCloudSyncInProgress = false;
	private int mCloudSyncConflictRetries = 0;
	

	
	private static final int EVENT_OTHER_SOCIAL = 70;
	
	// Request result event IDs

	private static final int GooglePlayServices_PostScoreResultEvent = 9818;
	private static final int GooglePlayServices_PostAchievementResultEvent = 9819;
	private static final int GooglePlayServices_IncrementAchievementResultEvent = 9820;
	private static final int GooglePlayServices_RevealAchievementResultEvent = 9821;
	private static final int RC_SIGN_IN = 9001;
	
	// Request code to use when launching the resolution activity
    private static final int REQUEST_RESOLVE_ERROR = 1001;
	
	public void GooglePlayServices_Init()
	{
		if(mGoogleSigninClient != null)
		{
			Log.i("yoyo","Attempting to initialise Google Play Signin Client when it has already been initialised.");
			return;
		}
		
		String appid = RunnerActivity.CurrentActivity.mYYPrefs.getString("com.google.android.gms.games.APP_ID");
		if(appid == null|| appid.isEmpty())
		{
			Log.i("yoyo", "Failed to find appid, Google Play Services will not be initialised.");
			return;
		}
		else
			Log.i("yoyo", "Initialising Google Play Services. App id: " + appid);

		// Initialise sign in client
		GoogleSignInOptions.Builder optionsBuilder = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN);
		optionsBuilder.requestScopes(Games.SCOPE_GAMES);

		// Update scopes for cloud saving
		mCloudServicesEnabled = RunnerActivity.CurrentActivity.mYYPrefs.getBoolean("YYGoogleCloudSavingEnabled");
		if(mCloudServicesEnabled)
		{
			optionsBuilder.requestScopes(Drive.SCOPE_APPFOLDER);
		}
		
		// Create Google client
		Log.i("yoyo", "Signing into google game services. Cloud enabled: " + mCloudServicesEnabled + ". Options builder: " + optionsBuilder);
		mGoogleSigninClient = GoogleSignIn.getClient(RunnerJNILib.ms_context, optionsBuilder.build());
	}
	
	@Override
	public void Init()
	{


		//If they aren't available don't trigger the prompt for install flow as this may be a fire device etc - leave that up to the dev to decide if\when to do this.
		if(GooglePlayServices_Status() == ConnectionResult.SUCCESS)
		{
			Log.i("yoyo", "Google Play Services extension initialising" );
			GooglePlayServices_Init();
		}
		else
		{
			Log.i("yoyo", "Google Play Services extension not initialising as AreGooglePlayServicesAvailable returns false" );
		}
	
	}
	

	
	@Override
	public void onStart() 
	{
		Log.i("yoyo","googleplayservices extension onStart called");
		//super.onStart();
		
		//Uncomment these lines if you want auto sign-in
		// Login();
	}

	@Override
	public void onStop() 
	{
		Log.i("yoyo","googleplayservices extension onStop called");
		//super.onStop();
		
	}
	
	@Override
	public void onPause()
	{
		mSignedInOnPause = isSignedIn();
	}
	
	@Override
	public void onResume()
	{
		/*
		if(mGcmPush !=null )
		{
			mGcmPush.deliverStoredMessages();
		}
		*/
		
		// If the user was signed in when the activity was paused, log them in again
		Log.i("yoyo", "googleplayservices extension onResume called. Signed in on pause: " + mSignedInOnPause + ". Signed in now: " + isSignedIn());
		if(mSignedInOnPause == true && isSignedIn() == false)
		{
			Log.i("yoyo", "Re-logging in..");
			Login();
		}
	}
	
	@Override
	public void onConnected(Bundle connectionHint) 
	{
	}

	public double GooglePlayServices_Status()
	{
		return (double)GooglePlayServicesUtil.isGooglePlayServicesAvailable(RunnerJNILib.ms_context);
	}
  
    // The rest of this code is all about building the error dialog
    /* Creates a dialog for an error message */
    private void showErrorDialog(int errorCode,int requestCode) 
    {    
        Dialog dialog = GooglePlayServicesUtil.getErrorDialog(errorCode,RunnerActivity.CurrentActivity, requestCode);
        if (dialog != null) 
        {
            dialog.show();
        }
        else 
        {
            // no built-in dialog: show the fallback error message
			// showAlert(RunnerActivity.CurrentActivity, );
			Log.i("yoyo","Google Play Services Error and unable to initialise GooglePlayServicesUtil error dialog");
        }
    }

	@Override
    public void onConnectionFailed(ConnectionResult result) {
		
		Log.i("yoyo","onConnectionFailed called with result:"+result);
    }

	@Override
	public void onConnectionSuspended(int i) 
	{
		// Attempt to reconnect
		
		Log.i("yoyo","onConnectionSuspended call with " + i);
		
	}
	
	@Override
	public	void onActivityResult(int requestCode, int responseCode, Intent intent) 
	{
		Log.i("yoyo","gps onActivityResult called. RequestCode: "+requestCode + ". ResponseCode: " + responseCode);
		
		
		
		
		switch (requestCode) 
		{
			case RC_SIGN_IN:
				mSignInClicked = false;
				
				try
				{
					Task<GoogleSignInAccount> task = GoogleSignIn.getSignedInAccountFromIntent(intent);
					if(task.isSuccessful())
					{
						mGoogleSignInAccount = task.getResult();
						onLoginSuccess(mGoogleSignInAccount);
					}
					else
					{
						Log.i("yoyo", "Login failed! Exception: " + task.getException() + ". Message: " + task.getException().getMessage() + ". Stack: " + task.getException().getStackTrace());
						onLoginFailed();
					}
				}
				catch(Exception exception)
				{
					Log.i("yoyo", "Exception when handling GP services login: " + exception);
					onLoginFailed();
				}
			break;
			
			case RC_GPS_ACTIVITY:
			{
				
				if(responseCode == GamesActivityResultCodes.RESULT_RECONNECT_REQUIRED)
				{
					Log.i("yoyo","Activity result resulted in reconnect required");
					Logout();
				}
			}
			break;
			
			
			default:
				Log.i("yoyo","onActivityResult called with " + requestCode);
					break;
        }
	}
	
	Object mRunnerBilling=null;
	
	public Object InitRunnerBilling()
	{
		
		if(mRunnerBilling==null)
		{
			String FullClassName = "${YYAndroidPackageName}.RunnerBilling";
			
			try
			{
				/*		
				Class c = Class.forName(FullClassName);
				if(c==null)
				{
					Log.i("yoyo","Unable to find class");
				}
				else
				{
					Method[] methods = c.getMethods();
					for (int i = 0; i < methods.length; i++) {
						Log.i("yoyo","public method: " + methods[i]);
					}
					
					  
					Constructor[] allConstructors = c.getDeclaredConstructors();
					for (Constructor ctor : allConstructors) {
						
						Log.i("yoyo","constuctor:" + ctor);
						
					}
				}
				*/
				
				iap_controller = (RunnerBillingInterface)(Class.forName(FullClassName).getConstructor().newInstance());
				
				Log.i("yoyo","Created iap_controller, about to call InitRunnerBilling");
				
				mRunnerBilling = iap_controller.InitRunnerBilling();
				Log.i("yoyo","iap_controller successfully created");
			}
			catch(Exception e)
			{
				Log.i("yoyo","Failed to initialize Google Play Services IAP functionality - could not initialise RunnerBilling:"+e);
				Log.i("yoyo","If you are intending to use Google Play Services IAP's please ensure you have the GooglePlayServicesIAPExtension added to your project");
				Log.i("yoyo",e.toString());
				Log.i("yoyo",e.getMessage());
				e.printStackTrace();
			}
		}
		
		return mRunnerBilling;
	}
	
	private GoogleSignInAccount getCurrentAccountSignedIn()
	{
		if(mGoogleSignInAccount != null)
			return mGoogleSignInAccount;
		
		return GoogleSignIn.getLastSignedInAccount(RunnerJNILib.ms_context);
	}
	
	public boolean isSignedIn()
	{
		return getCurrentAccountSignedIn() != null;
	}
	
	// ==================================================
	// AUTH - LOGIN
	// ==================================================
	@Override
	public void Login()
	{
		if(isSignedIn())
		{
			Log.i("yoyo","Called achievement_login when already logged in");
			return;
		}
		
		if(mGoogleSigninClient == null)
		{
			Log.i("yoyo", "Called achievement_login with a NULL GoogleSigninClient");
			return;
		}
		
		Log.i("yoyo","Signing in..");
		
		Task<GoogleSignInAccount> task = mGoogleSigninClient.silentSignIn();
		mSignInClicked = true;
		
		if (task.isComplete()) 
		{
			onLoginTaskComplete(task);
		}
		else 
		{
			// There's no immediate result ready, displays some progress indicator and waits for the
			// async callback.
			task.addOnCompleteListener(new OnCompleteListener<GoogleSignInAccount>() 
			{
				@Override
				public void onComplete(Task<GoogleSignInAccount> loginTask) 
				{
					onLoginTaskComplete(loginTask);
				}
			});
		}
	}
	
	private void onLoginTaskComplete(Task<GoogleSignInAccount> task)
	{
		if(task.isSuccessful())
		{
			Log.i("yoyo", "Silent sign in successful");
			mSignInClicked = false;
			
			mGoogleSignInAccount = task.getResult();
			onLoginSuccess(mGoogleSignInAccount);
		}
		else
		{
			Log.i("yoyo", "Silent sign in failed, attempting normal sign in..");
			
			// No luck signing in silently, trigger normal sign in flow
			Intent signInIntent = mGoogleSigninClient.getSignInIntent();
			RunnerActivity.CurrentActivity.startActivityForResult(signInIntent, RC_SIGN_IN);
		}
	}
	
	private void onLoginSuccess(GoogleSignInAccount account)
	{
		// Set up achievement popup view
		GamesClient gamesClient = Games.getGamesClient(RunnerActivity.CurrentActivity, account);
		gamesClient.setViewForPopups(RunnerActivity.CurrentActivity.getWindow().getDecorView());
		
		// Notify runner
		String displayName = account.getDisplayName();
		String id = account.getId();
		Log.i("yoyo", "User " + displayName + " (ID: " + id + ") logged in successfully.");
		
		RunnerJNILib.OnLoginSuccess(displayName, id, "", "", "", "", "");
	}
	
	private void onLoginFailed()
	{
		// Send social event
		RunnerJNILib.OnLoginSuccess("Not logged in","-1","","","","","");
	}
	
	// ==================================================
	// AUTH - LOGOUT
	// ==================================================
	@Override
	public void Logout()
	{
		if(mSignOutClicked == false && mGoogleSigninClient != null)
		{
			mSignOutClicked = true;
			
			Task task = mGoogleSigninClient.signOut();
			if (task.isComplete()) 
			{
				onLogoutTaskComplete(task);
			}
			else 
			{
				// There's no immediate result ready, displays some progress indicator and waits for the
				// async callback.
				task.addOnCompleteListener(new OnCompleteListener() 
				{
					@Override
					public void onComplete(Task logoutTask) 
					{
						mSignOutClicked = false;
						onLogoutTaskComplete(logoutTask);
					}
				});
			}
		}
	}
	
	private void onLogoutTaskComplete(Task task)
	{
		mSignOutClicked = false;
		
		if(task.isSuccessful())
		{
			Log.i("yoyo", "Signed out successfully.");
			RunnerJNILib.OnLoginSuccess("Not logged in","-1","","","","","");
			mGoogleSignInAccount = null;
		}
		else
		{
			Log.i("yoyo", "Signing out failed.");
		}
	}
	
	// ==================================================
	// CLOUD LOAD/SYNC
	// ==================================================
	private static final int MAX_SNAPSHOT_RESOLVE_RETRIES = 5;
	
	// Called when a google cloud sync request is resolved
	private final OnSnapshotResolvedListener mOnCloudSyncListener = new OnSnapshotResolvedListener() 
	{
		@Override
		public void onSuccess(Snapshot snapshot, int fileId)
		{
			// Read the byte content of the saved game.
			try 
			{
				mSaveGameData = snapshot.getSnapshotContents().readFully();
				
				String desc = snapshot.getMetadata().getDescription();
				
				Log.i("yoyo", "Successfully loaded cloud save data. Description: " + desc);
				
				RunnerJNILib.CloudResultData(mSaveGameData, desc.getBytes(), 0 /*STATUS_NEW_GAME_DATA*/, fileId); 
			}
			catch (Exception e) 
			{
				onFailure("Error while reading cloud save snapshot. Sending Fail event" + e, fileId);
				RunnerJNILib.CloudResultData( null, null, 0 /*STATUS_NEW_GAME_DATA*/, fileId );
			}
		}
		
		@Override
		public void onFailure(String reason, int fileId)
		{
			Log.i("yoyo", "Cloud sync failed: " + reason);
			
			// Send empty save data if we failed to resolve our conflicts
			RunnerJNILib.CloudResultData( null, null, 0 /*STATUS_NEW_GAME_DATA*/, fileId );
		}
	};
	
	public void onGSCloudSync(java.lang.Integer id)
	{
		if(!mCloudServicesEnabled)
		{
			Log.i("yoyo", "Could not perform cloud sync - please tick the 'Enable Google Cloud Saving' option in the Android options of your project.");
			return;
		}
		
		if(mCloudSyncInProgress)
		{
			Log.i("yoyo", "Could not perform cloud sync - another sync is already in progress.");
			return;
		}
		
		GoogleSignInAccount account = getCurrentAccountSignedIn();
		if(account == null)
		{
			Log.i("yoyo", "Could not perform cloud sync - not signed in.");
			return;
		}
		
		mCloudSyncInProgress = true;
		mCloudSyncConflictRetries = 0;
		
		final Integer fid = id;
		Log.i("yoyo", "Google Play Cloud Sync called with ID: " + id);
		
		try
		{
			final SnapshotsClient snapClient = Games.getSnapshotsClient(RunnerJNILib.ms_context, account);
			Task<SnapshotsClient.DataOrConflict<Snapshot>> task = snapClient.open(mCurrentSaveName, true);
			
			task.addOnCompleteListener(new OnCompleteListener<SnapshotsClient.DataOrConflict<Snapshot>>() 
			{
				@Override
				public void onComplete(Task<SnapshotsClient.DataOrConflict<Snapshot>> openTask) 
				{
					onCloudSyncTaskComplete(openTask, fid, snapClient, mOnCloudSyncListener);
				}
			});
		}
		catch(Exception e)
		{
			Log.i("yoyo", "Error starting Google Play sync: " + e);
			mCloudSyncInProgress = false;
		}
	}
	
	// ==================================================
	// CLOUD SAVE
	// ==================================================
	public void onGSStringSave(String data, String desc, Integer id)
	{
		if(!mCloudServicesEnabled)
		{
			Log.i("yoyo", "Could not perform cloud save - please tick the 'Enable Google Cloud Saving' option in the Android options of your project.");
			return;
		}
		
		if(mCloudSyncInProgress)
		{
			Log.i("yoyo", "Could not perform cloud save - another sync is already in progress.");
			return;
		}
		
		GoogleSignInAccount account = getCurrentAccountSignedIn();
		if(account == null)
		{
			Log.i("yoyo", "Could not perform cloud save - not signed in.");
			return;
		}
		
		mCloudSyncInProgress = true;
		mCloudSyncConflictRetries = 0;
		
		final String _data = data;
		final String _desc = desc;
		final Integer _id = id;
		
		Log.i("yoyo","Performing cloud save. ID: "+id+" .Data: " + data);
		
		try
		{
			final SnapshotsClient snapClient = Games.getSnapshotsClient(RunnerJNILib.ms_context, account);
			Task<SnapshotsClient.DataOrConflict<Snapshot>> task = snapClient.open(mCurrentSaveName, true);
			
			// Called when the snapshot is opened, attampts to save our data
			final OnSnapshotResolvedListener onSnapshotResolved = new OnSnapshotResolvedListener() 
			{
				@Override
				public void onSuccess(Snapshot snapshot, final int fileId)
				{
					// Read the byte content of the saved game.
					try 
					{
						// Write the new data to the snapshot
						byte[] databytes = _data.getBytes();
						snapshot.getSnapshotContents().writeBytes(databytes);
						
						final String desc = _desc;
						final String s = new String(snapshot.getSnapshotContents().readFully());
						Log.i("yoyo", "Saving snapshot:" + s);

						// Update metadata
						SnapshotMetadataChange metadataChange = new SnapshotMetadataChange.Builder()
							.fromMetadata(snapshot.getMetadata())
							.setDescription(_desc)
							.build();

						// Submit new snapshot
						Task<SnapshotMetadata> submitTask = snapClient.commitAndClose(snapshot, metadataChange);
						submitTask.addOnCompleteListener(new OnCompleteListener<SnapshotMetadata>() 
						{
							@Override
							public void onComplete(Task<SnapshotMetadata> submitCompletedTask) 
							{
								if(submitCompletedTask.isSuccessful())
								{
									Log.i("yoyo", "Cloud save successful!");
									RunnerJNILib.CloudResultData(s.getBytes(), desc.getBytes(), 0 /*STATUS_NEW_GAME_DATA*/, fileId); 
								}
								else
								{
									onFailure("Error while saving snapshot." + submitCompletedTask.getException(), fileId);
								}
							}
						});
					}
					catch (Exception e) 
					{
						onFailure("Error while saving snapshot." + e, fileId);
					}
				}
				
				@Override
				public void onFailure(String reason, int fileId)
				{
					Log.i("yoyo", "Cloud save failed: " + reason);
					RunnerJNILib.CloudResultData( null, null, 0 /*STATUS_NEW_GAME_DATA*/, fileId );
				}
			};
			
			task.addOnCompleteListener(new OnCompleteListener<SnapshotsClient.DataOrConflict<Snapshot>>() 
			{
				@Override
				public void onComplete(Task<SnapshotsClient.DataOrConflict<Snapshot>> openTask) 
				{
					onCloudSyncTaskComplete(openTask, _id, snapClient, onSnapshotResolved);
				}
			});
		}
		catch(Exception e)
		{
			Log.i("yoyo", "Error starting Google Play sync: " + e);
			mCloudSyncInProgress = false;
		}
	}
	
	// ==================================================
	// CLOUD SYNC COMPLETE
	// ==================================================
	public void onCloudSyncTaskComplete(Task<SnapshotsClient.DataOrConflict<Snapshot>> task, final int fileId, final SnapshotsClient snapClient, final OnSnapshotResolvedListener onResolved)
	{
		// Task failed, exit out early
		if(!task.isSuccessful())
		{
			Log.i("yoyo", "Cloud sync failed. Error: " + task.getException());
			mCloudSyncInProgress = false;
			return;
		}
		
		Log.i("yoyo", "Cloud sync successful! Retrieving data..");
		SnapshotsClient.DataOrConflict<Snapshot> result = task.getResult();
		if(result.isConflict())
		{
			// Make sure we limit the number of retries in save data resolution
			if(mCloudSyncConflictRetries < MAX_SNAPSHOT_RESOLVE_RETRIES)
			{
				++ mCloudSyncConflictRetries;
				Log.i("yoyo", "Detected conflict in cloud save. Attempting to resolve: " + mCloudSyncConflictRetries);
				
				// Attempt to resolve our conflict
				try
				{
					SnapshotsClient.SnapshotConflict conflict = result.getConflict();
					Task<SnapshotsClient.DataOrConflict<Snapshot>> conflictTask = snapClient.resolveConflict(conflict.getConflictId(), conflict.getConflictingSnapshot());
					conflictTask.addOnCompleteListener(new OnCompleteListener<SnapshotsClient.DataOrConflict<Snapshot>>() 
					{
						@Override
						public void onComplete(Task<SnapshotsClient.DataOrConflict<Snapshot>> currentConflictTask) 
						{
							onCloudSyncTaskComplete(currentConflictTask, fileId, snapClient, onResolved);
						}
					});
				}
				catch(Exception e)
				{
					mCloudSyncInProgress = false;
					onResolved.onFailure("Error while resolving cloud save conflict. " + e, fileId);
				}
			}
			else
			{
				mCloudSyncInProgress = false;
				onResolved.onFailure("Failed to resolve cloud save conflict.", fileId);
			}
		}
		else
		{
			mCloudSyncInProgress = false;
			onResolved.onSuccess(result.getData(), fileId);
		}
	}
	
	// Achievement & Leaderboards stuff
	
	// ==================================================
	// LEADERBOARD - POST SCORE
	// ==================================================
	@Override
	public void PostScore(final String lb, final int score)
	{
		GoogleSignInAccount account = getCurrentAccountSignedIn();
		if(account == null)
		{
			Log.i("yoyo", "Could not post score - not signed in.");
			return;
		}
		
		Log.i("yoyo", "Posting score to leaderboard " + lb + ": " + score);
		
		LeaderboardsClient lbClient = Games.getLeaderboardsClient(RunnerJNILib.ms_context, account);
		Task<ScoreSubmissionData> submitTask = lbClient.submitScoreImmediate (lb, score);
		
		submitTask.addOnCompleteListener(new OnCompleteListener<ScoreSubmissionData>() {
			@Override
			public void onComplete(Task<ScoreSubmissionData> task) 
			{
				onLeaderboardPostTaskComplete(task, lb);
			}
		});
	}
	
	public void onLeaderboardPostTaskComplete(Task<ScoreSubmissionData> task, String leaderboardId)
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "achievement_post_score_result" );
		RunnerJNILib.DsMapAddDouble( dsMapIndex, "id", GooglePlayServices_PostScoreResultEvent);
		RunnerJNILib.DsMapAddString( dsMapIndex, "leaderboard_id", leaderboardId );
		
		if(task.isSuccessful())
		{
			ScoreSubmissionData result = task.getResult();
			Log.i("yoyo", "Score submit request processed. Result: "+result);
			
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "status", 1);
			
			// Add score submission data for whether or not we've beaten the best scores
			ScoreSubmissionData.Result resultDaily = result.getScoreResult(LeaderboardVariant.TIME_SPAN_DAILY);
			if(resultDaily != null)
			{
				RunnerJNILib.DsMapAddDouble( dsMapIndex, "daily_new_best", resultDaily.newBest ? 1 : 0);
				RunnerJNILib.DsMapAddDouble( dsMapIndex, "daily_best", (double)resultDaily.rawScore);
			}
			
			ScoreSubmissionData.Result resultWeekly = result.getScoreResult(LeaderboardVariant.TIME_SPAN_WEEKLY);
			if(resultWeekly != null)
			{
				RunnerJNILib.DsMapAddDouble( dsMapIndex, "weekly_new_best", resultWeekly.newBest ? 1 : 0);
				RunnerJNILib.DsMapAddDouble( dsMapIndex, "weekly_best", (double)resultWeekly.rawScore);
			}
			
			ScoreSubmissionData.Result resultAllTime = result.getScoreResult(LeaderboardVariant.TIME_SPAN_ALL_TIME);
			if(resultAllTime != null)
			{
				RunnerJNILib.DsMapAddDouble( dsMapIndex, "all_time_new_best", resultAllTime.newBest ? 1 : 0);
				RunnerJNILib.DsMapAddDouble( dsMapIndex, "all_time_best", (double)resultAllTime.rawScore);
			}
		}
		else
		{
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "status", 0);
		}
		
		// Send event
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
	}
	
	// ==================================================
	// LEADERBOARD - SHOW
	// ==================================================
	public void onShowGSLeaderboards()
    {
		GoogleSignInAccount account = getCurrentAccountSignedIn();
		if(account == null)
		{
			Log.i("yoyo", "Could not show leaderboards - user not signed in.");
			return;
		}
		
		Log.i("yoyo", "Attempting to show leaderboards.");
		LeaderboardsClient lbClient = Games.getLeaderboardsClient(RunnerJNILib.ms_context, account);
		Task<Intent> showLbTask = lbClient.getAllLeaderboardsIntent();
		
		showLbTask.addOnSuccessListener(new OnSuccessListener<Intent>() 
		{
			@Override
			public void onSuccess(Intent intent) 
			{
				Log.i("yoyo", "Showing leaderboards.");
				RunnerActivity.CurrentActivity.startActivityForResult(intent, RC_GPS_ACTIVITY);
			}
		});
		
		showLbTask.addOnFailureListener(new OnFailureListener() 
		{
			@Override
			public void onFailure(Exception e) 
			{
				Log.i("yoyo", "Failed to show leaderboards: " + e);
			}
		});
	}
   
	// ==================================================
	// ACHIEVEMENT - INCREMENT
	// ==================================================
	public void onIncrementAchievement(final String id, final java.lang.Float Increment)
    {
		float increment = (float)Increment;
		
		if ( increment < 1 ) // as per: https://developer.android.com/reference/com/google/android/gms/games/achievement/Achievements.html#increment(com.google.android.gms.common.api.GoogleApiClient, java.lang.String, int)
		{
			Log.i("yoyo","achievement_increment must be called with a positive value above 1");
		}
		else
		{
			// Get current logged in account
			GoogleSignInAccount account = getCurrentAccountSignedIn();
			if(account == null)
			{
				Log.i("yoyo", "Could not increment achievement - not signed in.");
				return;
			}
			
			// Post achievement
			Log.i("yoyo","Incrementing achievement " + id + " by " + increment);
			AchievementsClient achClient = Games.getAchievementsClient(RunnerJNILib.ms_context, account);
			Task<Boolean> submitTask = achClient.incrementImmediate(id, (int)increment);
			
			submitTask.addOnCompleteListener(new OnCompleteListener<Boolean>() 
			{
				@Override
				public void onComplete(Task<Boolean> task) 
				{
					onAchievementIncrementTaskComplete(task, id);
				}
			});
		}
    }
	
	private void onAchievementIncrementTaskComplete(Task<Boolean> task, String achievementId)
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "achievement_increment_result" );
		RunnerJNILib.DsMapAddDouble( dsMapIndex, "id", GooglePlayServices_IncrementAchievementResultEvent);
		RunnerJNILib.DsMapAddString( dsMapIndex, "achievement_id", achievementId);
		
		if(task.isSuccessful())
		{
			Log.i("yoyo", "Successfully incremented achievement: " + achievementId);
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "status", 1);
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "complete", task.getResult() ? 1 : 0);
		}
		else
		{
			Log.i("yoyo", "Failed to increment achievement: " + achievementId);
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "status", 0);
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "complete", 0);
		}
		
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
	}
    
	// ==================================================
	// ACHIEVEMENT - UNLOCK
	// ==================================================
    public void onPostAchievement(final String id, final java.lang.Float percentdone)
    {
		if(percentdone <= 0)
		{
			Log.i("yoyo","achievement_post must be called with a positive value");
		}
		else if(percentdone >= 100.0)
		{
			// Get current logged in account
			GoogleSignInAccount account = getCurrentAccountSignedIn();
			if(account == null)
			{
				Log.i("yoyo", "Could not post achievement - not signed in.");
				return;
			}
			
			// Post achievement
			Log.i("yoyo","Posting achievement: " + id);
			AchievementsClient achClient = Games.getAchievementsClient(RunnerJNILib.ms_context, account);
			Task submitTask = achClient.unlockImmediate(id);
			
			submitTask.addOnCompleteListener(new OnCompleteListener() 
			{
				@Override
				public void onComplete(Task task) 
				{
					onAchievementPostTaskComplete(task, id);
				}
			});
		}
		else
		{
			Log.i("yoyo","Google Play Services does not currently support posting partially complete achievements. Either call achievement_post() when the achievement is complete or use achievement_increment()");
		}
    
    }
	
	public void onAchievementPostTaskComplete(Task task, String achievementId)
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "achievement_post_result" );
		RunnerJNILib.DsMapAddDouble( dsMapIndex, "id", GooglePlayServices_PostAchievementResultEvent);
		RunnerJNILib.DsMapAddString( dsMapIndex, "achievement_id", achievementId);
		
		if(task.isSuccessful())
		{
			Log.i("yoyo", "Successfully posted achievement progress for: "+achievementId);
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "status", 1);
		}
		else
		{
			Log.i("yoyo", "Failed to post achievement progress for: "+achievementId);
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "status", 0);
		}
		
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
	}
	
	// ==================================================
	// ACHIEVEMENT - REVEAL
	// ==================================================
    public void onRevealAchievement(final String id)
    {
		// Get current logged in account
		GoogleSignInAccount account = getCurrentAccountSignedIn();
		if(account == null)
		{
			Log.i("yoyo", "Could not reveal achievement - not signed in.");
			return;
		}
		
		// Post achievement
		Log.i("yoyo","Revealing achievement: " + id);
		AchievementsClient achClient = Games.getAchievementsClient(RunnerJNILib.ms_context, account);
		Task submitTask = achClient.revealImmediate(id);
		
		submitTask.addOnCompleteListener(new OnCompleteListener() 
		{
			@Override
			public void onComplete(Task task) 
			{
				onAchievementRevealTaskComplete(task, id);
			}
		});
    }
	
	public void onAchievementRevealTaskComplete(Task task, String achievementId)
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString( dsMapIndex, "type", "achievement_reveal_result" );
		RunnerJNILib.DsMapAddDouble( dsMapIndex, "id", GooglePlayServices_RevealAchievementResultEvent);
		RunnerJNILib.DsMapAddString( dsMapIndex, "achievement_id", achievementId);
		
		if(task.isSuccessful())
		{
			Log.i("yoyo", "Successfully revealed achievement: "+achievementId);
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "status", 1);
		}
		else
		{
			Log.i("yoyo", "Failed to reveal achievement: "+achievementId);
			RunnerJNILib.DsMapAddDouble( dsMapIndex, "status", 0);
		}
		
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
	}
    
	// ==================================================
	// ACHIEVEMENT - SHOW
	// ==================================================
	final int RC_RESOLVE = 5000, RC_UNUSED = 5001,RC_GPS_ACTIVITY = 5011;
    public void onShowGSAchievements()
    {
		GoogleSignInAccount account = getCurrentAccountSignedIn();
		if(account == null)
		{
			Log.i("yoyo", "Could not show achievements - user not signed in.");
			return;
		}
		
		Log.i("yoyo", "Attempting to show achievements.");
		
		AchievementsClient achClient = Games.getAchievementsClient(RunnerJNILib.ms_context, account);
		Task<Intent> showLbTask = achClient.getAchievementsIntent();
		
		showLbTask.addOnSuccessListener(new OnSuccessListener<Intent>() 
		{
			@Override
			public void onSuccess(Intent intent) 
			{
				Log.i("yoyo", "Showing achievements!");
				RunnerActivity.CurrentActivity.startActivityForResult(intent, RC_GPS_ACTIVITY);
			}
		});
		
		showLbTask.addOnFailureListener(new OnFailureListener() 
		{
			@Override
			public void onFailure(Exception e) 
			{
				Log.i("yoyo", "Failed to show achievements: " + e);
			}
		});
    }
	

	




	

    



	
	

	

	

	

}