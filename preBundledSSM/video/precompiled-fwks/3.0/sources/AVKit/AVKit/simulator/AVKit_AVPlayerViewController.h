#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVKit_AVPlayerViewController_symbols(JSContext*);
@protocol AVPlayerViewControllerInstanceExports<JSExport>
@property (nonatomic) BOOL canStartPictureInPictureAutomaticallyFromInline;
@property (copy,nonatomic) AVLayerVideoGravity videoGravity;
@property (nonatomic,strong) AVPlayer * player;
@property (nonatomic) BOOL updatesNowPlayingInfoCenter;
@property (nonatomic) BOOL requiresLinearPlayback;
@property (getter=isReadyForDisplay,readonly,nonatomic) BOOL readyForDisplay;
@property (nonatomic) BOOL exitsFullScreenWhenPlaybackEnds;
@property (readonly,nonatomic) UIView * contentOverlayView;
@property (readonly,nonatomic) CGRect videoBounds;
@property (nonatomic) BOOL entersFullScreenWhenPlaybackBegins;
@property (copy,nonatomic) NSDictionary * pixelBufferAttributes;
@property (nonatomic) BOOL showsPlaybackControls;
@property (nonatomic) BOOL showsTimecodes;
@property (nonatomic) BOOL allowsPictureInPicturePlayback;
@property (nonatomic,weak) id delegate;
@end
@protocol AVPlayerViewControllerClassExports<JSExport>
@end
@protocol AVPlayerViewControllerDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(BOOL) playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart: (AVPlayerViewController *) playerViewController ;
-(void) playerViewController: (AVPlayerViewController *) playerViewController willBeginFullScreenPresentationWithAnimationCoordinator: (id) coordinator ;
-(void) playerViewControllerDidStopPictureInPicture: (AVPlayerViewController *) playerViewController ;
-(void) playerViewControllerWillStopPictureInPicture: (AVPlayerViewController *) playerViewController ;
JSExportAs(playerViewControllerRestoreUserInterfaceForPictureInPictureStopWithCompletionHandler,
-(void) jsplayerViewController: (AVPlayerViewController *) playerViewController restoreUserInterfaceForPictureInPictureStopWithCompletionHandler: (JSValue *) completionHandler );
-(void) playerViewController: (AVPlayerViewController *) playerViewController willEndFullScreenPresentationWithAnimationCoordinator: (id) coordinator ;
-(void) playerViewController: (AVPlayerViewController *) playerViewController failedToStartPictureInPictureWithError: (NSError *) error ;
-(void) playerViewControllerWillStartPictureInPicture: (AVPlayerViewController *) playerViewController ;
-(void) playerViewControllerDidStartPictureInPicture: (AVPlayerViewController *) playerViewController ;
@end
@protocol AVPlayerViewControllerDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop