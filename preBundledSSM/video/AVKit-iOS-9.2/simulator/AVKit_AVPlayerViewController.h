#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVKit_AVPlayerViewController_symbols(JSContext*);
@protocol AVPlayerViewControllerInstanceExports<JSExport>
@property (copy,nonatomic) NSString * videoGravity;
@property (nonatomic,strong) AVPlayer * player;
@property (getter=isReadyForDisplay,readonly,nonatomic) BOOL readyForDisplay;
@property (readonly,nonatomic) UIView * contentOverlayView;
@property (readonly,nonatomic) CGRect videoBounds;
@property (nonatomic,weak) id delegate;
@property (nonatomic) BOOL showsPlaybackControls;
@property (nonatomic) BOOL allowsPictureInPicturePlayback;
@end
@protocol AVPlayerViewControllerClassExports<JSExport>
@end
@protocol AVPlayerViewControllerDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(BOOL) playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart: (AVPlayerViewController *) playerViewController ;
-(void) playerViewControllerDidStopPictureInPicture: (AVPlayerViewController *) playerViewController ;
-(void) playerViewControllerWillStopPictureInPicture: (AVPlayerViewController *) playerViewController ;
JSExportAs(playerViewControllerRestoreUserInterfaceForPictureInPictureStopWithCompletionHandler,
-(void) jsplayerViewController: (AVPlayerViewController *) playerViewController restoreUserInterfaceForPictureInPictureStopWithCompletionHandler: (JSValue *) completionHandler );
-(void) playerViewController: (AVPlayerViewController *) playerViewController failedToStartPictureInPictureWithError: (NSError *) error ;
-(void) playerViewControllerWillStartPictureInPicture: (AVPlayerViewController *) playerViewController ;
-(void) playerViewControllerDidStartPictureInPicture: (AVPlayerViewController *) playerViewController ;
@end
@protocol AVPlayerViewControllerDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop