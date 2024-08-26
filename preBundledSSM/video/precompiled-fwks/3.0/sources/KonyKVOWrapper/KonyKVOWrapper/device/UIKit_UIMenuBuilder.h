#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIMenuBuilder_symbols(JSContext*);
@protocol UIMenuBuilderInstanceExports_<JSExport>
@property (readonly,nonatomic) UIMenuSystem * system;
-(void) insertSiblingMenu: (UIMenu *) siblingMenu afterMenuForIdentifier: (UIMenuIdentifier) siblingIdentifier ;
-(UIMenu *) menuForIdentifier: (UIMenuIdentifier) identifier ;
-(void) insertChildMenu: (UIMenu *) childMenu atStartOfMenuForIdentifier: (UIMenuIdentifier) parentIdentifier ;
-(UIAction *) actionForIdentifier: (UIActionIdentifier) identifier ;
-(void) insertChildMenu: (UIMenu *) childMenu atEndOfMenuForIdentifier: (UIMenuIdentifier) parentIdentifier ;
JSExportAs(replaceChildrenOfMenuForIdentifierFromChildrenBlock,
-(void) jsreplaceChildrenOfMenuForIdentifier: (UIMenuIdentifier) parentIdentifier fromChildrenBlock: (JSValue *) childrenBlock );
-(void) replaceMenuForIdentifier: (UIMenuIdentifier) replacedIdentifier withMenu: (UIMenu *) replacementMenu ;
-(void) removeMenuForIdentifier: (UIMenuIdentifier) removedIdentifier ;
-(void) insertSiblingMenu: (UIMenu *) siblingMenu beforeMenuForIdentifier: (UIMenuIdentifier) siblingIdentifier ;
JSExportAs(commandForActionPropertyList,
-(UICommand *) jscommandForAction: (NSString *) action propertyList: (id) propertyList );
@end
@protocol UIMenuBuilderClassExports_<JSExport>
@end
#pragma clang diagnostic pop