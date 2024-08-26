#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIActivityItemProvider_symbols(JSContext*);
@protocol UIActivityItemProviderInstanceExports<JSExport, UIActivityItemSourceInstanceExports_>
@property (readonly,copy,nonatomic) NSString * activityType;
@property (readonly,nonatomic,strong) id placeholderItem;
-(id) item;
JSExportAs(initWithPlaceholderItem,
-(id) jsinitWithPlaceholderItem: (id) placeholderItem );
@end
@protocol UIActivityItemProviderClassExports<JSExport, UIActivityItemSourceClassExports_>
@end
@protocol UIActivityItemSourceInstanceExports_<JSExport, NSObjectInstanceExports_>
-(NSString *) activityViewController: (UIActivityViewController *) activityViewController subjectForActivityType: (NSString *) activityType ;
-(id) activityViewControllerPlaceholderItem: (UIActivityViewController *) activityViewController ;
-(id) activityViewController: (UIActivityViewController *) activityViewController itemForActivityType: (NSString *) activityType ;
-(UIImage *) activityViewController: (UIActivityViewController *) activityViewController thumbnailImageForActivityType: (NSString *) activityType suggestedSize: (CGSize) size ;
-(NSString *) activityViewController: (UIActivityViewController *) activityViewController dataTypeIdentifierForActivityType: (NSString *) activityType ;
@end
@protocol UIActivityItemSourceClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop