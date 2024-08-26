#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIAction_symbols(JSContext*);
@protocol UIActionInstanceExports<JSExport>
@property (copy,nonatomic) NSString * discoverabilityTitle;
@property (copy,nonatomic) NSString * title;
@property (copy,nonatomic) UIImage * image;
@property (nonatomic) UIMenuElementState state;
@property (nonatomic) UIMenuElementAttributes attributes;
@property (readonly,nonatomic) UIActionIdentifier identifier;
@property (readonly,nonatomic) id sender;
@end
@protocol UIActionClassExports<JSExport>
JSExportAs(actionWithTitleImageIdentifierHandler,
+(id) jsactionWithTitle: (NSString *) title image: (UIImage *) image identifier: (UIActionIdentifier) identifier handler: (JSValue *) handler );
JSExportAs(actionWithHandler,
+(id) jsactionWithHandler: (JSValue *) handler );
@end
#pragma clang diagnostic pop