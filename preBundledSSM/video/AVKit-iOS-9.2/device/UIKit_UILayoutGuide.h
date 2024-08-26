#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UILayoutGuide_symbols(JSContext*);
@protocol UILayoutGuideInstanceExports<JSExport, NSCodingInstanceExports_>
@property (readonly,strong) NSLayoutXAxisAnchor * trailingAnchor;
@property (readonly,strong) NSLayoutXAxisAnchor * centerXAnchor;
@property (readonly,strong) NSLayoutXAxisAnchor * leadingAnchor;
@property (readonly,strong) NSLayoutYAxisAnchor * centerYAnchor;
@property (nonatomic,weak) UIView * owningView;
@property (readonly,strong) NSLayoutXAxisAnchor * leftAnchor;
@property (readonly,strong) NSLayoutYAxisAnchor * bottomAnchor;
@property (readonly,nonatomic) CGRect layoutFrame;
@property (readonly,strong) NSLayoutDimension * widthAnchor;
@property (readonly,strong) NSLayoutXAxisAnchor * rightAnchor;
@property (copy,nonatomic) NSString * identifier;
@property (readonly,strong) NSLayoutDimension * heightAnchor;
@property (readonly,strong) NSLayoutYAxisAnchor * topAnchor;
@end
@protocol UILayoutGuideClassExports<JSExport, NSCodingClassExports_>
@end
#pragma clang diagnostic pop