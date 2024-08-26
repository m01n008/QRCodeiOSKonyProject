#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UICollectionViewCompositionalLayout_symbols(JSContext*);
@protocol NSCollectionLayoutItemInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) NSDirectionalEdgeInsets contentInsets;
@property (copy,nonatomic) NSCollectionLayoutEdgeSpacing * edgeSpacing;
@property (readonly,nonatomic) NSArray * supplementaryItems;
@property (readonly,nonatomic) NSCollectionLayoutSize * layoutSize;
@end
@protocol NSCollectionLayoutItemClassExports<JSExport, NSCopyingClassExports_>
+(id) itemWithLayoutSize: (NSCollectionLayoutSize *) layoutSize ;
+(id) itemWithLayoutSize: (NSCollectionLayoutSize *) layoutSize supplementaryItems: (NSArray *) supplementaryItems ;
@end
@protocol NSCollectionLayoutDecorationItemInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) NSInteger zIndex;
@property (readonly,nonatomic) NSString * elementKind;
@end
@protocol NSCollectionLayoutDecorationItemClassExports<JSExport, NSCopyingClassExports_>
+(id) backgroundDecorationItemWithElementKind: (NSString *) elementKind ;
@end
@protocol NSCollectionLayoutSectionInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (copy,nonatomic) NSArray * decorationItems;
@property (nonatomic) UIContentInsetsReference contentInsetsReference;
@property (copy,nonatomic) NSArray * boundarySupplementaryItems;
@property (nonatomic) NSDirectionalEdgeInsets contentInsets;
@property (nonatomic) BOOL supplementariesFollowContentInsets;
@property (getter=getJsVisibleItemsInvalidationHandler,setter=setJsVisibleItemsInvalidationHandler:) JSValue* jsvisibleItemsInvalidationHandler;
@property (nonatomic) CGFloat interGroupSpacing;
@property (nonatomic) UICollectionLayoutSectionOrthogonalScrollingBehavior orthogonalScrollingBehavior;
@end
@protocol NSCollectionLayoutSectionClassExports<JSExport, NSCopyingClassExports_>
+(id) sectionWithGroup: (NSCollectionLayoutGroup *) group ;
@end
@protocol NSCollectionLayoutAnchorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) NSDirectionalRectEdge edges;
@property (readonly,nonatomic) BOOL isFractionalOffset;
@property (readonly,nonatomic) BOOL isAbsoluteOffset;
@property (readonly,nonatomic) CGPoint offset;
@end
@protocol NSCollectionLayoutAnchorClassExports<JSExport, NSCopyingClassExports_>
+(id) layoutAnchorWithEdges: (NSDirectionalRectEdge) edges fractionalOffset: (CGPoint) fractionalOffset ;
+(id) layoutAnchorWithEdges: (NSDirectionalRectEdge) edges absoluteOffset: (CGPoint) absoluteOffset ;
+(id) layoutAnchorWithEdges: (NSDirectionalRectEdge) edges ;
@end
@protocol UICollectionViewCompositionalLayoutConfigurationInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) CGFloat interSectionSpacing;
@property (nonatomic) UIContentInsetsReference contentInsetsReference;
@property (nonatomic) UICollectionViewScrollDirection scrollDirection;
@property (copy,nonatomic) NSArray * boundarySupplementaryItems;
@end
@protocol UICollectionViewCompositionalLayoutConfigurationClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol NSCollectionLayoutSizeInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) NSCollectionLayoutDimension * heightDimension;
@property (readonly,nonatomic) NSCollectionLayoutDimension * widthDimension;
@end
@protocol NSCollectionLayoutSizeClassExports<JSExport, NSCopyingClassExports_>
+(id) sizeWithWidthDimension: (NSCollectionLayoutDimension *) width heightDimension: (NSCollectionLayoutDimension *) height ;
@end
@protocol NSCollectionLayoutSpacingInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) BOOL isFlexibleSpacing;
@property (readonly,nonatomic) BOOL isFixedSpacing;
@property (readonly,nonatomic) CGFloat spacing;
@end
@protocol NSCollectionLayoutSpacingClassExports<JSExport, NSCopyingClassExports_>
+(id) fixedSpacing: (CGFloat) fixedSpacing ;
+(id) flexibleSpacing: (CGFloat) flexibleSpacing ;
@end
@protocol UICollectionViewCompositionalLayoutInstanceExports<JSExport>
@property (copy,nonatomic) UICollectionViewCompositionalLayoutConfiguration * configuration;
JSExportAs(initWithSectionProviderConfiguration,
-(id) jsinitWithSectionProvider: (JSValue *) sectionProvider configuration: (UICollectionViewCompositionalLayoutConfiguration *) configuration );
JSExportAs(initWithSectionConfiguration,
-(id) jsinitWithSection: (NSCollectionLayoutSection *) section configuration: (UICollectionViewCompositionalLayoutConfiguration *) configuration );
JSExportAs(initWithSectionProvider,
-(id) jsinitWithSectionProvider: (JSValue *) sectionProvider );
JSExportAs(initWithSection,
-(id) jsinitWithSection: (NSCollectionLayoutSection *) section );
@end
@protocol UICollectionViewCompositionalLayoutClassExports<JSExport>
@end
@protocol NSCollectionLayoutEdgeSpacingInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) NSCollectionLayoutSpacing * leading;
@property (readonly,nonatomic) NSCollectionLayoutSpacing * top;
@property (readonly,nonatomic) NSCollectionLayoutSpacing * trailing;
@property (readonly,nonatomic) NSCollectionLayoutSpacing * bottom;
@end
@protocol NSCollectionLayoutEdgeSpacingClassExports<JSExport, NSCopyingClassExports_>
+(id) spacingForLeading: (NSCollectionLayoutSpacing *) leading top: (NSCollectionLayoutSpacing *) top trailing: (NSCollectionLayoutSpacing *) trailing bottom: (NSCollectionLayoutSpacing *) bottom ;
@end
@protocol NSCollectionLayoutBoundarySupplementaryItemInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) NSRectAlignment alignment;
@property (nonatomic) BOOL pinToVisibleBounds;
@property (nonatomic) BOOL extendsBoundary;
@property (readonly,nonatomic) CGPoint offset;
@end
@protocol NSCollectionLayoutBoundarySupplementaryItemClassExports<JSExport, NSCopyingClassExports_>
+(id) boundarySupplementaryItemWithLayoutSize: (NSCollectionLayoutSize *) layoutSize elementKind: (NSString *) elementKind alignment: (NSRectAlignment) alignment absoluteOffset: (CGPoint) absoluteOffset ;
+(id) boundarySupplementaryItemWithLayoutSize: (NSCollectionLayoutSize *) layoutSize elementKind: (NSString *) elementKind alignment: (NSRectAlignment) alignment ;
@end
@protocol NSCollectionLayoutGroupCustomItemInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) NSInteger zIndex;
@property (readonly,nonatomic) CGRect frame;
@end
@protocol NSCollectionLayoutGroupCustomItemClassExports<JSExport, NSCopyingClassExports_>
+(id) customItemWithFrame: (CGRect) frame zIndex: (NSInteger) zIndex ;
+(id) customItemWithFrame: (CGRect) frame ;
@end
@protocol NSCollectionLayoutGroupInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (copy,nonatomic) NSArray * supplementaryItems;
@property (readonly,nonatomic) NSArray * subitems;
@property (copy,nonatomic) NSCollectionLayoutSpacing * interItemSpacing;
-(NSString *) visualDescription;
@end
@protocol NSCollectionLayoutGroupClassExports<JSExport, NSCopyingClassExports_>
+(id) verticalGroupWithLayoutSize: (NSCollectionLayoutSize *) layoutSize subitem: (NSCollectionLayoutItem *) subitem count: (NSInteger) count ;
+(id) verticalGroupWithLayoutSize: (NSCollectionLayoutSize *) layoutSize subitems: (NSArray *) subitems ;
JSExportAs(customGroupWithLayoutSizeItemProvider,
+(id) jscustomGroupWithLayoutSize: (NSCollectionLayoutSize *) layoutSize itemProvider: (JSValue *) itemProvider );
+(id) horizontalGroupWithLayoutSize: (NSCollectionLayoutSize *) layoutSize subitem: (NSCollectionLayoutItem *) subitem count: (NSInteger) count ;
+(id) horizontalGroupWithLayoutSize: (NSCollectionLayoutSize *) layoutSize subitems: (NSArray *) subitems ;
@end
@protocol NSCollectionLayoutDimensionInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) BOOL isEstimated;
@property (readonly,nonatomic) BOOL isFractionalWidth;
@property (readonly,nonatomic) CGFloat dimension;
@property (readonly,nonatomic) BOOL isFractionalHeight;
@property (readonly,nonatomic) BOOL isAbsolute;
@end
@protocol NSCollectionLayoutDimensionClassExports<JSExport, NSCopyingClassExports_>
+(id) fractionalHeightDimension: (CGFloat) fractionalHeight ;
+(id) absoluteDimension: (CGFloat) absoluteDimension ;
+(id) fractionalWidthDimension: (CGFloat) fractionalWidth ;
+(id) estimatedDimension: (CGFloat) estimatedDimension ;
@end
@protocol NSCollectionLayoutSupplementaryItemInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) NSInteger zIndex;
@property (readonly,nonatomic) NSCollectionLayoutAnchor * itemAnchor;
@property (readonly,nonatomic) NSString * elementKind;
@property (readonly,nonatomic) NSCollectionLayoutAnchor * containerAnchor;
@end
@protocol NSCollectionLayoutSupplementaryItemClassExports<JSExport, NSCopyingClassExports_>
+(id) supplementaryItemWithLayoutSize: (NSCollectionLayoutSize *) layoutSize elementKind: (NSString *) elementKind containerAnchor: (NSCollectionLayoutAnchor *) containerAnchor itemAnchor: (NSCollectionLayoutAnchor *) itemAnchor ;
+(id) supplementaryItemWithLayoutSize: (NSCollectionLayoutSize *) layoutSize elementKind: (NSString *) elementKind containerAnchor: (NSCollectionLayoutAnchor *) containerAnchor ;
@end
@protocol NSCollectionLayoutVisibleItemInstanceExports_<JSExport, NSObjectInstanceExports_, UIDynamicItemInstanceExports_>
@property (readonly,nonatomic) NSIndexPath * indexPath;
@property (nonatomic) CGPoint center;
@property (readonly,nonatomic) CGRect frame;
@property (nonatomic) CGAffineTransform transform;
@property (readonly,nonatomic) CGRect bounds;
@property (nonatomic) NSInteger zIndex;
@property (nonatomic) CATransform3D transform3D;
@property (nonatomic) CGFloat alpha;
@property (getter=isHidden,nonatomic) BOOL hidden;
@property (readonly,nonatomic) UICollectionElementCategory representedElementCategory;
@property (readonly,nonatomic) NSString * representedElementKind;
@property (readonly,nonatomic) NSString * name;
@end
@protocol NSCollectionLayoutVisibleItemClassExports_<JSExport, NSObjectClassExports_, UIDynamicItemClassExports_>
@end
@protocol NSCollectionLayoutEnvironmentInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,nonatomic) id container;
@property (readonly,nonatomic) UITraitCollection * traitCollection;
@end
@protocol NSCollectionLayoutEnvironmentClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol NSCollectionLayoutContainerInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,nonatomic) NSDirectionalEdgeInsets contentInsets;
@property (readonly,nonatomic) CGSize effectiveContentSize;
@property (readonly,nonatomic) NSDirectionalEdgeInsets effectiveContentInsets;
@property (readonly,nonatomic) CGSize contentSize;
@end
@protocol NSCollectionLayoutContainerClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop