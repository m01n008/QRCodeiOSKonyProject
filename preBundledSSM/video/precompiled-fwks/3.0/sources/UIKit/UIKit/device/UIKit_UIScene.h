#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIScene_symbols(JSContext*);
@protocol UISceneInstanceExports<JSExport>
@property (readonly,nonatomic) UISceneActivationState activationState;
@property (nonatomic,strong) UISceneActivationConditions * activationConditions;
@property (readonly,nonatomic) UISceneSession * session;
@property (nonatomic,strong) id delegate;
@property (copy,nonatomic) NSString * title;
JSExportAs(initWithSessionConnectionOptions,
-(id) jsinitWithSession: (UISceneSession *) session connectionOptions: (UISceneConnectionOptions *) connectionOptions );
JSExportAs(openURLOptionsCompletionHandler,
-(void) jsopenURL: (NSURL *) url options: (UISceneOpenExternalURLOptions *) options completionHandler: (JSValue *) completion );
@end
@protocol UISceneClassExports<JSExport>
@end
@protocol UISceneDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) scene: (UIScene *) scene continueUserActivity: (NSUserActivity *) userActivity ;
-(void) scene: (UIScene *) scene didUpdateUserActivity: (NSUserActivity *) userActivity ;
-(NSUserActivity *) stateRestorationActivityForScene: (UIScene *) scene ;
-(void) scene: (UIScene *) scene openURLContexts: (NSSet *) URLContexts ;
-(void) sceneWillEnterForeground: (UIScene *) scene ;
-(void) scene: (UIScene *) scene didFailToContinueUserActivityWithType: (NSString *) userActivityType error: (NSError *) error ;
-(void) sceneDidBecomeActive: (UIScene *) scene ;
-(void) sceneDidDisconnect: (UIScene *) scene ;
-(void) scene: (UIScene *) scene willContinueUserActivityWithType: (NSString *) userActivityType ;
-(void) scene: (UIScene *) scene willConnectToSession: (UISceneSession *) session options: (UISceneConnectionOptions *) connectionOptions ;
-(void) sceneDidEnterBackground: (UIScene *) scene ;
-(void) sceneWillResignActive: (UIScene *) scene ;
@end
@protocol UISceneDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop