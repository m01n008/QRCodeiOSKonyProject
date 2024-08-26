#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UISceneSession_symbols(JSContext*);
@protocol UISceneSessionInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (nonatomic,strong) NSUserActivity * stateRestorationActivity;
@property (readonly,nonatomic) UIScene * scene;
@property (readonly,nonatomic) NSString * persistentIdentifier;
@property (readonly,nonatomic) UISceneSessionRole role;
@property (copy,nonatomic) NSDictionary * userInfo;
@property (readonly,copy,nonatomic) UISceneConfiguration * configuration;
@end
@protocol UISceneSessionClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol UISceneConfigurationInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (getter=getJsSceneClass,setter=setJsSceneClass:) JSValue* jssceneClass;
@property (nonatomic,strong) UIStoryboard * storyboard;
@property (readonly,nonatomic) UISceneSessionRole role;
@property (readonly,nonatomic) NSString * name;
@property (getter=getJsDelegateClass,setter=setJsDelegateClass:) JSValue* jsdelegateClass;
JSExportAs(initWithNameSessionRole,
-(id) jsinitWithName: (NSString *) name sessionRole: (UISceneSessionRole) sessionRole );
@end
@protocol UISceneConfigurationClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(id) configurationWithName: (NSString *) name sessionRole: (UISceneSessionRole) sessionRole ;
@end
#pragma clang diagnostic pop