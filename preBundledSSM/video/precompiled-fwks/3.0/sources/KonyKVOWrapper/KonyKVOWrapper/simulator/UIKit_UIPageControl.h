#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIPageControl_symbols(JSContext*);
@protocol UIPageControlInstanceExports<JSExport>
@property (assign,nonatomic) NSInteger numberOfPages;
@property (nonatomic) BOOL hidesForSinglePage;
@property (assign,nonatomic) BOOL allowsContinuousInteraction;
@property (nonatomic,strong) UIColor * currentPageIndicatorTintColor;
@property (assign,nonatomic) UIPageControlBackgroundStyle backgroundStyle;
@property (nonatomic,strong) UIColor * pageIndicatorTintColor;
@property (nonatomic) BOOL defersCurrentPageDisplay;
@property (nonatomic,strong) UIImage * preferredIndicatorImage;
@property (assign,nonatomic) NSInteger currentPage;
@property (readonly,assign,nonatomic) UIPageControlInteractionState interactionState;
-(CGSize) sizeForNumberOfPages: (NSInteger) pageCount ;
-(void) updateCurrentPageDisplay;
-(void) setIndicatorImage: (UIImage *) image forPage: (NSInteger) page ;
-(UIImage *) indicatorImageForPage: (NSInteger) page ;
@end
@protocol UIPageControlClassExports<JSExport>
@end
#pragma clang diagnostic pop