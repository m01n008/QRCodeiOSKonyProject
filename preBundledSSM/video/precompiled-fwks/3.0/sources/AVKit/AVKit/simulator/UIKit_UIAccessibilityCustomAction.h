#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIAccessibilityCustomAction_symbols(JSContext*);
@protocol UIAccessibilityCustomActionInstanceExports<JSExport>
@property (copy,nonatomic) NSAttributedString * attributedName;
@property (copy,nonatomic) NSString * name;
@property (nonatomic,strong) UIImage * image;
@property (getter=getJsSelector,setter=setJsSelector:) NSString* jsselector;
@property (getter=getJsActionHandler,setter=setJsActionHandler:) JSValue* jsactionHandler;
@property (nonatomic,weak) id target;
JSExportAs(initWithNameImageTargetSelector,
-(id) jsinitWithName: (NSString *) name image: (UIImage *) image target: (id) target selector: (NSString *) selector );
JSExportAs(initWithNameTargetSelector,
-(id) jsinitWithName: (NSString *) name target: (id) target selector: (NSString *) selector );
JSExportAs(initWithAttributedNameImageActionHandler,
-(id) jsinitWithAttributedName: (NSAttributedString *) attributedName image: (UIImage *) image actionHandler: (JSValue *) actionHandler );
JSExportAs(initWithNameImageActionHandler,
-(id) jsinitWithName: (NSString *) name image: (UIImage *) image actionHandler: (JSValue *) actionHandler );
JSExportAs(initWithAttributedNameActionHandler,
-(id) jsinitWithAttributedName: (NSAttributedString *) attributedName actionHandler: (JSValue *) actionHandler );
JSExportAs(initWithAttributedNameImageTargetSelector,
-(id) jsinitWithAttributedName: (NSAttributedString *) attributedName image: (UIImage *) image target: (id) target selector: (NSString *) selector );
JSExportAs(initWithAttributedNameTargetSelector,
-(id) jsinitWithAttributedName: (NSAttributedString *) attributedName target: (id) target selector: (NSString *) selector );
JSExportAs(initWithNameActionHandler,
-(id) jsinitWithName: (NSString *) name actionHandler: (JSValue *) actionHandler );
@end
@protocol UIAccessibilityCustomActionClassExports<JSExport>
@end
#pragma clang diagnostic pop