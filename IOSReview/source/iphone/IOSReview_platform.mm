/*
 * iphone-specific implementation of the IOSReview extension.
 * Add any platform-specific functionality here.
 */
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
#include "IOSReview_internal.h"
#import <StoreKit/StoreKit.h>

s3eResult IOSReviewInit_platform()
{
    // Add any platform-specific initialisation code here
    return S3E_RESULT_SUCCESS;
}

void IOSReviewTerminate_platform()
{ 
}

s3eResult requestReview_platform()
{
		if([SKStoreReviewController class])
		{
			[SKStoreReviewController requestReview] ;
			return S3E_RESULT_SUCCESS;
		}
    return S3E_RESULT_ERROR;
}
