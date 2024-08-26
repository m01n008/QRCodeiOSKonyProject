#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UISegmentedControl_symbols(JSContext*);
@protocol UISegmentedControlSpringLoadingCategoryInstanceExports<JSExport, UISpringLoadedInteractionSupportingInstanceExports_>
@end
@protocol UISegmentedControlSpringLoadingCategoryClassExports<JSExport, UISpringLoadedInteractionSupportingClassExports_>
@end
@protocol UISegmentedControlInstanceExports<JSExport, NSCodingInstanceExports_>
@property (nonatomic) NSInteger selectedSegmentIndex;
@property (nonatomic,strong) UIColor * selectedSegmentTintColor;
@property (readonly,nonatomic) NSUInteger numberOfSegments;
@property (nonatomic) UISegmentedControlStyle segmentedControlStyle;
@property (nonatomic) BOOL apportionsSegmentWidthsByContent;
@property (getter=isMomentary,nonatomic) BOOL momentary;
-(void) setContentOffset: (CGSize) offset forSegmentAtIndex: (NSUInteger) segment ;
-(NSString *) titleForSegmentAtIndex: (NSUInteger) segment ;
JSExportAs(initWithFrameActions,
-(id) jsinitWithFrame: (CGRect) frame actions: (NSArray *) actions );
-(NSInteger) segmentIndexForActionIdentifier: (UIActionIdentifier) actionIdentifier ;
-(void) setAction: (UIAction *) action forSegmentAtIndex: (NSUInteger) segment ;
-(void) insertSegmentWithAction: (UIAction *) action atIndex: (NSUInteger) segment animated: (BOOL) animated ;
-(BOOL) isEnabledForSegmentAtIndex: (NSUInteger) segment ;
-(void) removeSegmentAtIndex: (NSUInteger) segment animated: (BOOL) animated ;
-(void) setTitleTextAttributes: (NSDictionary *) attributes forState: (UIControlState) state ;
-(void) setWidth: (CGFloat) width forSegmentAtIndex: (NSUInteger) segment ;
-(void) setImage: (UIImage *) image forSegmentAtIndex: (NSUInteger) segment ;
JSExportAs(initWithFrame,
-(id) jsinitWithFrame: (CGRect) frame );
-(void) insertSegmentWithTitle: (NSString *) title atIndex: (NSUInteger) segment animated: (BOOL) animated ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(UIImage *) backgroundImageForState: (UIControlState) state barMetrics: (UIBarMetrics) barMetrics ;
-(UIImage *) dividerImageForLeftSegmentState: (UIControlState) leftState rightSegmentState: (UIControlState) rightState barMetrics: (UIBarMetrics) barMetrics ;
-(UIAction *) actionForSegmentAtIndex: (NSUInteger) segment ;
-(void) setContentPositionAdjustment: (UIOffset) adjustment forSegmentType: (UISegmentedControlSegment) leftCenterRightOrAlone barMetrics: (UIBarMetrics) barMetrics ;
JSExportAs(initWithItems,
-(id) jsinitWithItems: (NSArray *) items );
-(void) insertSegmentWithImage: (UIImage *) image atIndex: (NSUInteger) segment animated: (BOOL) animated ;
-(void) setEnabled: (BOOL) enabled forSegmentAtIndex: (NSUInteger) segment ;
-(UIImage *) imageForSegmentAtIndex: (NSUInteger) segment ;
-(void) setBackgroundImage: (UIImage *) backgroundImage forState: (UIControlState) state barMetrics: (UIBarMetrics) barMetrics ;
-(void) setTitle: (NSString *) title forSegmentAtIndex: (NSUInteger) segment ;
-(void) removeAllSegments;
-(CGSize) contentOffsetForSegmentAtIndex: (NSUInteger) segment ;
-(void) setDividerImage: (UIImage *) dividerImage forLeftSegmentState: (UIControlState) leftState rightSegmentState: (UIControlState) rightState barMetrics: (UIBarMetrics) barMetrics ;
-(CGFloat) widthForSegmentAtIndex: (NSUInteger) segment ;
-(UIOffset) contentPositionAdjustmentForSegmentType: (UISegmentedControlSegment) leftCenterRightOrAlone barMetrics: (UIBarMetrics) barMetrics ;
-(NSDictionary *) titleTextAttributesForState: (UIControlState) state ;
@end
@protocol UISegmentedControlClassExports<JSExport, NSCodingClassExports_>
@end
#pragma clang diagnostic pop