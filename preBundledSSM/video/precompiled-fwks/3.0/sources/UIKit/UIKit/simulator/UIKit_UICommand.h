#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UICommand_symbols(JSContext*);
@protocol UICommandAlternateInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,getter=getJsAction) NSString* jsaction;
@property (readonly,nonatomic) UIKeyModifierFlags modifierFlags;
@property (readonly,nonatomic) NSString * title;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol UICommandAlternateClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
JSExportAs(alternateWithTitleActionModifierFlags,
+(id) jsalternateWithTitle: (NSString *) title action: (NSString *) action modifierFlags: (UIKeyModifierFlags) modifierFlags );
@end
@protocol UICommandInstanceExports<JSExport>
@property (copy,nonatomic) NSString * discoverabilityTitle;
@property (copy,nonatomic) NSString * title;
@property (copy,nonatomic) UIImage * image;
@property (readonly,nonatomic) id propertyList;
@property (nonatomic) UIMenuElementState state;
@property (readonly,getter=getJsAction) NSString* jsaction;
@property (nonatomic) UIMenuElementAttributes attributes;
@property (readonly,nonatomic) NSArray * alternates;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol UICommandClassExports<JSExport>
JSExportAs(commandWithTitleImageActionPropertyList,
+(id) jscommandWithTitle: (NSString *) title image: (UIImage *) image action: (NSString *) action propertyList: (id) propertyList );
JSExportAs(commandWithTitleImageActionPropertyListAlternates,
+(id) jscommandWithTitle: (NSString *) title image: (UIImage *) image action: (NSString *) action propertyList: (id) propertyList alternates: (NSArray *) alternates );
@end
#pragma clang diagnostic pop