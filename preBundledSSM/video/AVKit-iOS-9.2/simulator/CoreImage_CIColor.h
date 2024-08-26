#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreImage_CIColor_symbols(JSContext*);
@protocol CIColorInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly) CGFloat blue;
@property (readonly) size_t numberOfComponents;
@property (readonly) NSString * stringRepresentation;
@property (readonly) id colorSpace;
@property (readonly) CGFloat green;
@property (readonly) CGFloat alpha;
@property (readonly) CGFloat red;
JSExportAs(initWithRedGreenBlueAlpha,
-(id) jsinitWithRed: (CGFloat) r green: (CGFloat) g blue: (CGFloat) b alpha: (CGFloat) a );
JSExportAs(initWithRedGreenBlue,
-(id) jsinitWithRed: (CGFloat) r green: (CGFloat) g blue: (CGFloat) b );
JSExportAs(initWithCGColor,
-(id) jsinitWithCGColor: (id) c );
@end
@protocol CIColorClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
+(id) colorWithString: (NSString *) representation ;
+(id) colorWithRed: (CGFloat) r green: (CGFloat) g blue: (CGFloat) b alpha: (CGFloat) a ;
+(id) colorWithRed: (CGFloat) r green: (CGFloat) g blue: (CGFloat) b ;
+(id) colorWithCGColor: (id) c ;
@end
#pragma clang diagnostic pop