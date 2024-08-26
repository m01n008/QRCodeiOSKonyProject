#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UICollectionViewListCell_symbols(JSContext*);
@protocol UICollectionViewListCellInstanceExports<JSExport>
@property (copy,nonatomic) NSArray * accessories;
@property (nonatomic) CGFloat indentationWidth;
@property (nonatomic) NSInteger indentationLevel;
@property (readonly,nonatomic) UILayoutGuide * separatorLayoutGuide;
@property (nonatomic) BOOL indentsAccessories;
-(UIListContentConfiguration *) defaultContentConfiguration;
@end
@protocol UICollectionViewListCellClassExports<JSExport>
@end
#pragma clang diagnostic pop