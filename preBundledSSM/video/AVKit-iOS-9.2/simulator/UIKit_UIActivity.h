#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIActivity_symbols(JSContext*);
@protocol UIActivityInstanceExports<JSExport>
-(void) performActivity;
-(NSString *) activityType;
-(void) prepareWithActivityItems: (NSArray *) activityItems ;
-(UIViewController *) activityViewController;
-(BOOL) canPerformWithActivityItems: (NSArray *) activityItems ;
-(NSString *) activityTitle;
-(void) activityDidFinish: (BOOL) completed ;
-(UIImage *) activityImage;
@end
@protocol UIActivityClassExports<JSExport>
+(UIActivityCategory) activityCategory;
@end
#pragma clang diagnostic pop