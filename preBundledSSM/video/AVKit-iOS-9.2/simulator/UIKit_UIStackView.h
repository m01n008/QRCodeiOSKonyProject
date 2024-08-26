#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIStackView_symbols(JSContext*);
@protocol UIStackViewInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSArray * arrangedSubviews;
@property (nonatomic) CGFloat spacing;
@property (getter=isBaselineRelativeArrangement,nonatomic) BOOL baselineRelativeArrangement;
@property (getter=isLayoutMarginsRelativeArrangement,nonatomic) BOOL layoutMarginsRelativeArrangement;
@property (nonatomic) UIStackViewDistribution distribution;
@property (nonatomic) UIStackViewAlignment alignment;
@property (nonatomic) UILayoutConstraintAxis axis;
-(void) removeArrangedSubview: (UIView *) view ;
-(void) addArrangedSubview: (UIView *) view ;
-(void) insertArrangedSubview: (UIView *) view atIndex: (NSUInteger) stackIndex ;
JSExportAs(initWithArrangedSubviews,
-(id) jsinitWithArrangedSubviews: (NSArray *) views );
@end
@protocol UIStackViewClassExports<JSExport>
@end
#pragma clang diagnostic pop