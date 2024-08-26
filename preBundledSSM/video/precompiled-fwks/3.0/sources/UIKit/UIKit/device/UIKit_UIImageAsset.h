#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIImageAsset_symbols(JSContext*);
@protocol UIImageAssetInstanceExports<JSExport, NSSecureCodingInstanceExports_>
-(void) unregisterImageWithConfiguration: (UIImageConfiguration *) configuration ;
-(void) registerImage: (UIImage *) image withConfiguration: (UIImageConfiguration *) configuration ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(void) unregisterImageWithTraitCollection: (UITraitCollection *) traitCollection ;
-(UIImage *) imageWithConfiguration: (UIImageConfiguration *) configuration ;
-(id) jsinit;
-(void) registerImage: (UIImage *) image withTraitCollection: (UITraitCollection *) traitCollection ;
-(UIImage *) imageWithTraitCollection: (UITraitCollection *) traitCollection ;
@end
@protocol UIImageAssetClassExports<JSExport, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop