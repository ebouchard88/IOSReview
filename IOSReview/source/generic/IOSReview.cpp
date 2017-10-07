/*
Generic implementation of the IOSReview extension.
This file should perform any platform-indepedentent functionality
(e.g. error checking) before calling platform-dependent implementations.
*/

/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */


#include "IOSReview_internal.h"
s3eResult IOSReviewInit()
{
    //Add any generic initialisation code here
    return IOSReviewInit_platform();
}

void IOSReviewTerminate()
{
    //Add any generic termination code here
    IOSReviewTerminate_platform();
}

s3eResult requestReview()
{
	return requestReview_platform();
}
