
package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

import android.util.Log;
import android.os.Handler;

import com.google.android.vending.licensing.LicenseChecker;
import com.google.android.vending.licensing.LicenseCheckerCallback;
import com.google.android.vending.licensing.Obfuscator;
import com.google.android.vending.licensing.ServerManagedPolicy;
import com.google.android.vending.licensing.AESObfuscator;
import com.google.android.vending.licensing.Policy;

import android.net.Uri;
import android.provider.Settings.Secure;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;

public class GooglePlayLicensingAsExt extends RunnerSocial  
{
	

	// License checking
    private LicenseCheckerCallback mLicenseCheckerCallback;
    private LicenseChecker mChecker;   
	private Handler mLicenseHandler = new Handler();
	
	 private class MyLicenseCheckerCallback implements LicenseCheckerCallback 
	{
    	public void allow(int reason) 
	    {
    	    if (RunnerActivity.CurrentActivity.isFinishing()) {
        	    // Don't update UI if Activity is finishing.
            	return;
	        }
    	    Log.i("yoyo", "!!!!##### Successful license check #####!!!!!! ");
       		// Should allow user access.
       	 	//displayResult(getString(R.string.allow));
        	//displayResult( "Allow Access");
    	}

		public void dontAllow(int reason) 
    	{
        	if (RunnerActivity.CurrentActivity.isFinishing()) {
            	// Don't update UI if Activity is finishing.
	            return;
   			}
   			
    	    Log.i("yoyo", "!!!!##### failed license check reason=" + reason + " #####!!!!!! ");
   			if (reason == Policy.RETRY) {
   				displayResult( RunnerActivity.CurrentActivity.getString(R.string.yyg_gpl_ext_retry_needed) );
   			} // end if
   			else {
	    	    displayResult( RunnerActivity.CurrentActivity.getString(R.string.yyg_gpl_ext_license_fail) );
	    	} // end else
	    }
       
		public void applicationError( int _error ) 
		{
    		// log the error
	        Log.i("yoyo", "License Error - " + _error);
        	
    	    // then call dontAllow
       		dontAllow(0);
	    } // end applicationError
	    
	} // end MyLicenseCheckerCallback
    
    public void displayResult( final String result ) 
    {		
		Log.i("yoyo","Attempting to display result:" +result);
    	mLicenseHandler.post( new Runnable() {
    		public void run() {
    			// check for the RETRY state
    			if (result == null) {
					mChecker.checkAccess( mLicenseCheckerCallback );
    			} // end if
    			else {
					AlertDialog.Builder builder = new AlertDialog.Builder(RunnerActivity.CurrentActivity);
					if (!RunnerJNILib.isNetworkConnected()) {
						builder.setMessage( RunnerActivity.CurrentActivity.getString(R.string.yyg_gpl_ext_check_network ))
							.setCancelable(false)
							.setNegativeButton( RunnerActivity.CurrentActivity.getString(R.string.yyg_gpl_ext_retry), new DialogInterface.OnClickListener() {
								public void onClick( DialogInterface dialog, int id ) {
		        					mChecker.checkAccess( mLicenseCheckerCallback );
		        					dialog.dismiss();
								}});
					} // end if
					else { 
						builder.setMessage( result )
							.setCancelable(false)
							.setNegativeButton(  RunnerActivity.CurrentActivity.getString(R.string.yyg_gpl_ext_retry), new DialogInterface.OnClickListener() {
								public void onClick( DialogInterface dialog, int id ) {
		        					mChecker.checkAccess( mLicenseCheckerCallback );
		        					dialog.dismiss();
								}})
							.setPositiveButton( RunnerActivity.CurrentActivity.getString(R.string.yyg_gpl_ext_buy), new DialogInterface.OnClickListener() {
								public void onClick( DialogInterface dialog, int id ) {
									 Intent myIntent = new Intent(Intent.ACTION_VIEW, Uri.parse( "market://details?id="+RunnerActivity.CurrentActivity.getPackageName() ));
									 RunnerActivity.CurrentActivity.startActivity(myIntent);
									 RunnerJNILib.ExitApplication();
								}
 							});
 					} // end else
	 				
					AlertDialog alert  = builder.create();
    				Log.i("yoyo", "License display - "+ result );
	    			
        			alert.show();
        		} // end else        		
    		}
    	});
    	
    }
	
	
	
	@Override
	public void Init()
	{
	
		Log.i("yoyo", "Google Play Licensing extension initialising" );
		
	}
	
	
	   /* Checks the security for the application */
    public void checkLicensing() {
    
	    if (RunnerActivity.CurrentActivity.checkCallingOrSelfPermission("com.android.vending.CHECK_LICENSE")==PackageManager.PERMISSION_GRANTED) {
        	mLicenseCheckerCallback = new MyLicenseCheckerCallback();
        	String deviceId = Secure.getString(RunnerActivity.CurrentActivity.getContentResolver(), Secure.ANDROID_ID);
        	Log.i("yoyo", "deviceId="+deviceId);
        	ServerManagedPolicy policy = new ServerManagedPolicy( RunnerActivity.CurrentActivity, new AESObfuscator( RunnerActivity.CurrentActivity.SALT, RunnerActivity.CurrentActivity.getPackageName(), deviceId));
        	
        	if( RunnerActivity.BASE64_PUBLIC_KEY == null || RunnerActivity.BASE64_PUBLIC_KEY == "")
        	{
        		Log.i("yoyo", "Invalid license key found");
        	}
        	try {
        		mChecker = new LicenseChecker( RunnerActivity.CurrentActivity, policy, RunnerActivity.BASE64_PUBLIC_KEY);
        		mChecker.checkAccess( mLicenseCheckerCallback );
			} catch ( IllegalArgumentException _ex ) {
        		Log.i("yoyo", "exception while doing license check! invalid license key????"+ _ex);
			} // end catch
        } // end if  
        else {
        	Log.i("yoyo", "@@@@@@ Google Licensing permission not set" );
        } // end else
    }

}