#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVKit_AVPictureInPictureController_symbols(JSContext*);
@protocol AVPictureInPictureControllerInstanceExports<JSExport>
@property (readonly,nonatomic) AVPlayerLayer * playerLayer;
@property (getter=isPictureInPicturePossible,readonly,nonatomic) BOOL pictureInPicturePossible;
@property (getter=isPictureInPictureSuspended,readonly,nonatomic) BOOL pictureInPictureSuspended;
@property (nonatomic,weak) id delegate;
@property (getter=isPictureInPictureActive,readonly,nonatomic) BOOL pictureInPictureActive;
-(void) stopPictureInPicture;
-(void) startPictureInPicture;
JSExportAs(initWithPlayerLayer,
-(id) jsinitWithPlayerLayer: (AVPlayerLayer *) playerLayer );
@end
@protocol AVPictureInPictureControllerClassExports<JSExport>
+(UIImage *) pictureInPictureButtonStopImageCompatibleWithTraitCollection: (UITraitCollection *) traitCollection ;
+(BOOL) isPictureInPictureSupported;
+(UIImage *) pictureInPictureButtonStartImageCompatibleWithTraitCollection: (UITraitCollection *) traitCollection ;
@end
@protocol AVPictureInPictureControllerDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) pictureInPictureControllerWillStopPictureInPicture: (AVPictureInPictureController *) pictureInPictureController ;
-(void) pictureInPictureControllerDidStopPictureInPicture: (AVPictureInPictureController *) pictureInPictureController ;
-(void) pictureInPictureControllerDidStartPictureInPicture: (AVPictureInPictureController *) pictureInPictureController ;
JSExportAs(pictureInPictureControllerRestoreUserInterfaceForPictureInPictureStopWithCompletionHandler,
-(void) jspictureInPictureController: (AVPictureInPictureController *) pictureInPictureController restoreUserInterfaceForPictureInPictureStopWithCompletionHandler: (JSValue *) completionHandler );
-(void) pictureInPictureController: (AVPictureInPictureController *) pictureInPictureController failedToStartPictureInPictureWithError: (NSError *) error ;
-(void) pictureInPictureControllerWillStartPictureInPicture: (AVPictureInPictureController *) pictureInPictureController ;
@end
@protocol AVPictureInPictureControllerDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop