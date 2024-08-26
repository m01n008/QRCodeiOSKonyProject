#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIKeyCommand_symbols(JSContext*);
@protocol UIKeyCommandInstanceExports<JSExport>
@property (copy,nonatomic) NSString * discoverabilityTitle;
@property (copy,nonatomic) NSString * title;
@property (copy,nonatomic) UIImage * image;
@property (readonly,nonatomic) id propertyList;
@property (readonly,nonatomic) UIKeyModifierFlags modifierFlags;
@property (nonatomic) UIMenuElementState state;
@property (nonatomic) UIMenuElementAttributes attributes;
@property (readonly,getter=getJsAction) NSString* jsaction;
@property (readonly,nonatomic) NSString * input;
@property (readonly,nonatomic) NSArray * alternates;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(id) jsinit;
@end
@protocol UIKeyCommandClassExports<JSExport>
JSExportAs(commandWithTitleImageActionInputModifierFlagsPropertyList,
+(id) jscommandWithTitle: (NSString *) title image: (UIImage *) image action: (NSString *) action input: (NSString *) input modifierFlags: (UIKeyModifierFlags) modifierFlags propertyList: (id) propertyList );
JSExportAs(keyCommandWithInputModifierFlagsAction,
+(id) jskeyCommandWithInput: (NSString *) input modifierFlags: (UIKeyModifierFlags) modifierFlags action: (NSString *) action );
JSExportAs(commandWithTitleImageActionInputModifierFlagsPropertyListAlternates,
+(id) jscommandWithTitle: (NSString *) title image: (UIImage *) image action: (NSString *) action input: (NSString *) input modifierFlags: (UIKeyModifierFlags) modifierFlags propertyList: (id) propertyList alternates: (NSArray *) alternates );
JSExportAs(keyCommandWithInputModifierFlagsActionDiscoverabilityTitle,
+(id) jskeyCommandWithInput: (NSString *) input modifierFlags: (UIKeyModifierFlags) modifierFlags action: (NSString *) action discoverabilityTitle: (NSString *) discoverabilityTitle );
@end
#pragma clang diagnostic pop