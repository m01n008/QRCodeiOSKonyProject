#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UICollectionLayoutList_symbols(JSContext*);
@protocol NSCollectionLayoutSectionUICollectionLayoutListSectionCategoryInstanceExports<JSExport>
@end
@protocol NSCollectionLayoutSectionUICollectionLayoutListSectionCategoryClassExports<JSExport>
+(id) sectionWithListConfiguration: (UICollectionLayoutListConfiguration *) configuration layoutEnvironment: (id) layoutEnvironment ;
@end
@protocol UICollectionViewCompositionalLayoutUICollectionLayoutListSectionCategoryInstanceExports<JSExport>
@end
@protocol UICollectionViewCompositionalLayoutUICollectionLayoutListSectionCategoryClassExports<JSExport>
+(id) layoutWithListConfiguration: (UICollectionLayoutListConfiguration *) configuration ;
@end
@protocol UICollectionLayoutListConfigurationInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) UICollectionLayoutListAppearance appearance;
@property (nonatomic) UICollectionLayoutListHeaderMode headerMode;
@property (nonatomic) UICollectionLayoutListFooterMode footerMode;
@property (nonatomic,strong) UIColor * backgroundColor;
@property (getter=getJsTrailingSwipeActionsConfigurationProvider,setter=setJsTrailingSwipeActionsConfigurationProvider:) JSValue* jstrailingSwipeActionsConfigurationProvider;
@property (nonatomic) BOOL showsSeparators;
@property (getter=getJsLeadingSwipeActionsConfigurationProvider,setter=setJsLeadingSwipeActionsConfigurationProvider:) JSValue* jsleadingSwipeActionsConfigurationProvider;
JSExportAs(initWithAppearance,
-(id) jsinitWithAppearance: (UICollectionLayoutListAppearance) appearance );
@end
@protocol UICollectionLayoutListConfigurationClassExports<JSExport, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop