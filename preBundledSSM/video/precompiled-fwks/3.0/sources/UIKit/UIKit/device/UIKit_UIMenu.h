#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIMenu_symbols(JSContext*);
@protocol UIMenuInstanceExports<JSExport>
@property (readonly,nonatomic) UIMenuIdentifier identifier;
@property (readonly,nonatomic) UIMenuOptions options;
@property (readonly,nonatomic) NSArray * children;
-(UIMenu *) menuByReplacingChildren: (NSArray *) newChildren ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol UIMenuClassExports<JSExport>
+(UIMenu *) menuWithChildren: (NSArray *) children ;
+(UIMenu *) menuWithTitle: (NSString *) title image: (UIImage *) image identifier: (UIMenuIdentifier) identifier options: (UIMenuOptions) options children: (NSArray *) children ;
+(UIMenu *) menuWithTitle: (NSString *) title children: (NSArray *) children ;
@end
#pragma clang diagnostic pop