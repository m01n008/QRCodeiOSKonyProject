//
//  ScanQRWrapperClass.h
//  tesrt
//
//  Created by Zain Shaikh on 07/12/2023.
//

#ifndef ScanQRWrapperClass_h
#define ScanQRWrapperClass_h


#endif /* ScanQRWrapperClass_h */
#import <Foundation/Foundation.h>
#import "CallBack.h"
#import "lglobals.h"

@class QRScanView;
@class QRGenerate;

@interface ScanQRWrapperClass : NSObject
+ (id)sharedManager;
+ (void)launchNativeControllerOnKonyForm:(NSDictionary*)paramDict :(CallBack*)callBack;
+ (void)generateQRCode:(NSDictionary*)paramDict :(CallBack*)callBack;
- (NSArray*)konyCallBackForUserDetails;
- (void) executeCallBack:(NSDictionary*)callbackStatus :(CallBack*)callBack;

@end
