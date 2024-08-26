

#import "ScanQRWrapperClass.h"
#import "KonyUIContext.h"
#import "CallBack.h"
#import "lglobals.h"
#import "testingpdf-Bridging-Header.h"

@class QRGenerate;
@interface QRGenerate: NSObject
-(void)makeQrCode:(CallBack*)callBackForKony paramDict: (NSDictionary*)paramDict;
@end

@interface QRScanView : UIViewController
@property (nonatomic, copy) CallBack * _Null_unspecified callBackForKony;
//@property (nonatomic, copy) NSString * _Null_unspecified authToken;
@property (nonatomic, copy) NSDictionary * _Null_unspecified paramDict;
//@property (nonatomic) BOOL * _Null_unspecified isEnableFaceId;
@end


@implementation ScanQRWrapperClass

+ (id)sharedManager {
    static ScanQRWrapperClass *sharedMyManager = nil;
        sharedMyManager = [[self alloc] init];
    return sharedMyManager;
}

+(void) generateQRCode :(NSDictionary*)paramDict :(CallBack*) callBack
{
    QRGenerate *nc = [QRGenerate new];
    [nc makeQrCode:callBack paramDict:paramDict];
    
}

+ (void)launchNativeControllerOnKonyForm :(CallBack*) callBack
{
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    QRScanView *vc = [storyboard instantiateViewControllerWithIdentifier:@"QRScanView"];
    vc.callBackForKony = callBack;
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    UIViewController *yourCurrentViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
                while (yourCurrentViewController.presentedViewController)
                {
                   yourCurrentViewController = yourCurrentViewController.presentedViewController;
                }
            dispatch_async(dispatch_get_main_queue(), ^{
                [yourCurrentViewController presentViewController:vc animated:YES completion:nil];
                         });
}

- (NSArray*)konyCallBackForUserDetails
{
    NSArray *userDetails;
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSString *selfie64 = [prefs stringForKey:@"selfie64"];
    
    NSLog(@"sdsdsdsdsdsdds :: ");
    userDetails = [NSArray arrayWithObjects: selfie64, nil];
//    doExecuteClosure(cb, userDetails);
   // printf(cb);
    return userDetails;
}

- (void) executeCallBack:(NSDictionary*)callbackStatus :(CallBack*)callBack
{
    doExecuteClosure(callBack, [NSArray arrayWithObjects:callbackStatus, nil]);
}

@end

