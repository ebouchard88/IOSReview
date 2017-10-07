# IOSReview
Marmalade support for IOS11 SKStoreReviewController 

This extension comes with the source code. Feel free to modify it and use it as you wish. It has no license and comes with no warranty.
I do not pretend that it is the best way to implement a new IOS function within Marmalade but it works.

How to make it work:

- Copy the IOSReview folder into \Marmalade\8.8.1\extensions
- Edit the file StoreKit.tbd located at:
    \Marmalade\8.8.1\s3e\deploy\plugins\iphone\sys_libs\System\Library\Frameworks\StoreKit.framework
- In the objc-classe section, add this at the end (before the closing bracket):
    ,_SKStoreReviewController

- Then add it in your application like a normal library:

in the .mkb file:
subprojects
{
  ...
	IOSReview
}
header file is: IOSReview.h

Here is how I implemented it within my game:

        if (s3eDeviceGetInt(S3E_DEVICE_OS) == S3E_OS_ID_IPHONE)
        {
            //In case of older IOS version not supporting the new SKStoreReviewController
            if (requestReview() == S3E_RESULT_ERROR)
            {
              //If app store is unavailable, fall back to web page
               if (s3eOSExecExecute("itms-apps://itunes.apple.com/app/idxxxxxxxxxx?mt=8", 0) != 0)
                   s3eOSExecExecute("https://itunes.apple.com/app/idxxxxxxxxxx?mt=8", 0);
            }
        }
        //else Android
        else 
             s3eOSExecExecute("market://details?id=com.xxxxxxxx.xxxxxxxxxxxxx", 0);
