#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UICollectionView_symbols(JSContext*);
@protocol UICollectionViewFocusUpdateContextInstanceExports<JSExport>
@property (readonly,nonatomic,strong) NSIndexPath * previouslyFocusedIndexPath;
@property (readonly,nonatomic,strong) NSIndexPath * nextFocusedIndexPath;
@end
@protocol UICollectionViewFocusUpdateContextClassExports<JSExport>
@end
@protocol UICollectionViewInstanceExports<JSExport>
@property (nonatomic,strong) UIView * backgroundView;
@property (nonatomic) BOOL allowsSelection;
@property (nonatomic) BOOL remembersLastFocusedIndexPath;
@property (nonatomic,strong) UICollectionViewLayout * collectionViewLayout;
@property (nonatomic) BOOL allowsMultipleSelection;
@property (nonatomic,weak) id delegate;
@property (nonatomic,weak) id dataSource;
-(void) reloadItemsAtIndexPaths: (NSArray *) indexPaths ;
JSExportAs(performBatchUpdatesCompletion,
-(void) jsperformBatchUpdates: (JSValue *) updates completion: (JSValue *) completion );
-(NSIndexPath *) indexPathForItemAtPoint: (CGPoint) point ;
-(void) updateInteractiveMovementTargetPosition: (CGPoint) targetPosition ;
-(void) deleteItemsAtIndexPaths: (NSArray *) indexPaths ;
-(NSInteger) numberOfItemsInSection: (NSInteger) section ;
-(void) deselectItemAtIndexPath: (NSIndexPath *) indexPath animated: (BOOL) animated ;
-(void) deleteSections: (NSIndexSet *) sections ;
-(void) moveSection: (NSInteger) section toSection: (NSInteger) newSection ;
-(void) cancelInteractiveTransition;
-(NSArray *) indexPathsForSelectedItems;
JSExportAs(initWithFrameCollectionViewLayout,
-(id) jsinitWithFrame: (CGRect) frame collectionViewLayout: (UICollectionViewLayout *) layout );
JSExportAs(setCollectionViewLayoutAnimatedCompletion,
-(void) jssetCollectionViewLayout: (UICollectionViewLayout *) layout animated: (BOOL) animated completion: (JSValue *) completion );
-(UICollectionReusableView *) supplementaryViewForElementKind: (NSString *) elementKind atIndexPath: (NSIndexPath *) indexPath ;
-(void) reloadSections: (NSIndexSet *) sections ;
-(void) registerNib: (UINib *) nib forSupplementaryViewOfKind: (NSString *) kind withReuseIdentifier: (NSString *) identifier ;
-(void) scrollToItemAtIndexPath: (NSIndexPath *) indexPath atScrollPosition: (UICollectionViewScrollPosition) scrollPosition animated: (BOOL) animated ;
-(NSIndexPath *) indexPathForCell: (UICollectionViewCell *) cell ;
-(void) endInteractiveMovement;
-(void) finishInteractiveTransition;
-(NSArray *) indexPathsForVisibleSupplementaryElementsOfKind: (NSString *) elementKind ;
-(BOOL) beginInteractiveMovementForItemAtIndexPath: (NSIndexPath *) indexPath ;
-(void) insertSections: (NSIndexSet *) sections ;
-(void) selectItemAtIndexPath: (NSIndexPath *) indexPath animated: (BOOL) animated scrollPosition: (UICollectionViewScrollPosition) scrollPosition ;
-(void) reloadData;
-(NSArray *) visibleSupplementaryViewsOfKind: (NSString *) elementKind ;
-(UICollectionViewLayoutAttributes *) layoutAttributesForSupplementaryElementOfKind: (NSString *) kind atIndexPath: (NSIndexPath *) indexPath ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
-(__kindof UICollectionViewCell *) dequeueReusableCellWithReuseIdentifier: (NSString *) identifier forIndexPath: (NSIndexPath *) indexPath ;
-(void) setCollectionViewLayout: (UICollectionViewLayout *) layout animated: (BOOL) animated ;
-(UICollectionViewLayoutAttributes *) layoutAttributesForItemAtIndexPath: (NSIndexPath *) indexPath ;
JSExportAs(registerClassForSupplementaryViewOfKindWithReuseIdentifier,
-(void) jsregisterClass: (JSValue *) viewClass forSupplementaryViewOfKind: (NSString *) elementKind withReuseIdentifier: (NSString *) identifier );
-(UICollectionViewCell *) cellForItemAtIndexPath: (NSIndexPath *) indexPath ;
-(void) insertItemsAtIndexPaths: (NSArray *) indexPaths ;
-(__kindof UICollectionReusableView *) dequeueReusableSupplementaryViewOfKind: (NSString *) elementKind withReuseIdentifier: (NSString *) identifier forIndexPath: (NSIndexPath *) indexPath ;
-(NSArray *) visibleCells;
-(void) cancelInteractiveMovement;
-(void) moveItemAtIndexPath: (NSIndexPath *) indexPath toIndexPath: (NSIndexPath *) newIndexPath ;
-(NSArray *) indexPathsForVisibleItems;
JSExportAs(registerClassForCellWithReuseIdentifier,
-(void) jsregisterClass: (JSValue *) cellClass forCellWithReuseIdentifier: (NSString *) identifier );
-(NSInteger) numberOfSections;
JSExportAs(startInteractiveTransitionToCollectionViewLayoutCompletion,
-(UICollectionViewTransitionLayout *) jsstartInteractiveTransitionToCollectionViewLayout: (UICollectionViewLayout *) layout completion: (JSValue *) completion );
-(void) registerNib: (UINib *) nib forCellWithReuseIdentifier: (NSString *) identifier ;
@end
@protocol UICollectionViewClassExports<JSExport>
@end
@protocol NSIndexPathUICollectionViewAdditionsCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSInteger item;
@end
@protocol NSIndexPathUICollectionViewAdditionsCategoryClassExports<JSExport>
+(id) indexPathForItem: (NSInteger) item inSection: (NSInteger) section ;
@end
@protocol UICollectionViewDelegateInstanceExports_<JSExport, UIScrollViewDelegateInstanceExports_>
JSExportAs(collectionViewPerformActionForItemAtIndexPathWithSender,
-(void) jscollectionView: (UICollectionView *) collectionView performAction: (NSString *) action forItemAtIndexPath: (NSIndexPath *) indexPath withSender: (id) sender );
-(NSIndexPath *) indexPathForPreferredFocusedViewInCollectionView: (UICollectionView *) collectionView ;
-(CGPoint) collectionView: (UICollectionView *) collectionView targetContentOffsetForProposedContentOffset: (CGPoint) proposedContentOffset ;
-(NSIndexPath *) collectionView: (UICollectionView *) collectionView targetIndexPathForMoveFromItemAtIndexPath: (NSIndexPath *) originalIndexPath toProposedIndexPath: (NSIndexPath *) proposedIndexPath ;
-(void) collectionView: (UICollectionView *) collectionView willDisplayCell: (UICollectionViewCell *) cell forItemAtIndexPath: (NSIndexPath *) indexPath ;
-(BOOL) collectionView: (UICollectionView *) collectionView shouldShowMenuForItemAtIndexPath: (NSIndexPath *) indexPath ;
-(void) collectionView: (UICollectionView *) collectionView didSelectItemAtIndexPath: (NSIndexPath *) indexPath ;
-(void) collectionView: (UICollectionView *) collectionView didUnhighlightItemAtIndexPath: (NSIndexPath *) indexPath ;
-(UICollectionViewTransitionLayout *) collectionView: (UICollectionView *) collectionView transitionLayoutForOldLayout: (UICollectionViewLayout *) fromLayout newLayout: (UICollectionViewLayout *) toLayout ;
-(BOOL) collectionView: (UICollectionView *) collectionView shouldSelectItemAtIndexPath: (NSIndexPath *) indexPath ;
-(BOOL) collectionView: (UICollectionView *) collectionView shouldHighlightItemAtIndexPath: (NSIndexPath *) indexPath ;
-(void) collectionView: (UICollectionView *) collectionView didEndDisplayingCell: (UICollectionViewCell *) cell forItemAtIndexPath: (NSIndexPath *) indexPath ;
-(BOOL) collectionView: (UICollectionView *) collectionView shouldUpdateFocusInContext: (UICollectionViewFocusUpdateContext *) context ;
-(BOOL) collectionView: (UICollectionView *) collectionView canFocusItemAtIndexPath: (NSIndexPath *) indexPath ;
-(void) collectionView: (UICollectionView *) collectionView willDisplaySupplementaryView: (UICollectionReusableView *) view forElementKind: (NSString *) elementKind atIndexPath: (NSIndexPath *) indexPath ;
-(void) collectionView: (UICollectionView *) collectionView didHighlightItemAtIndexPath: (NSIndexPath *) indexPath ;
-(void) collectionView: (UICollectionView *) collectionView didDeselectItemAtIndexPath: (NSIndexPath *) indexPath ;
-(void) collectionView: (UICollectionView *) collectionView didUpdateFocusInContext: (UICollectionViewFocusUpdateContext *) context withAnimationCoordinator: (UIFocusAnimationCoordinator *) coordinator ;
JSExportAs(collectionViewCanPerformActionForItemAtIndexPathWithSender,
-(BOOL) jscollectionView: (UICollectionView *) collectionView canPerformAction: (NSString *) action forItemAtIndexPath: (NSIndexPath *) indexPath withSender: (id) sender );
-(BOOL) collectionView: (UICollectionView *) collectionView shouldDeselectItemAtIndexPath: (NSIndexPath *) indexPath ;
-(void) collectionView: (UICollectionView *) collectionView didEndDisplayingSupplementaryView: (UICollectionReusableView *) view forElementOfKind: (NSString *) elementKind atIndexPath: (NSIndexPath *) indexPath ;
@end
@protocol UICollectionViewDelegateClassExports_<JSExport, UIScrollViewDelegateClassExports_>
@end
@protocol UICollectionViewDataSourceInstanceExports_<JSExport, NSObjectInstanceExports_>
-(UICollectionReusableView *) collectionView: (UICollectionView *) collectionView viewForSupplementaryElementOfKind: (NSString *) kind atIndexPath: (NSIndexPath *) indexPath ;
-(NSInteger) numberOfSectionsInCollectionView: (UICollectionView *) collectionView ;
-(NSInteger) collectionView: (UICollectionView *) collectionView numberOfItemsInSection: (NSInteger) section ;
-(UICollectionViewCell *) collectionView: (UICollectionView *) collectionView cellForItemAtIndexPath: (NSIndexPath *) indexPath ;
-(BOOL) collectionView: (UICollectionView *) collectionView canMoveItemAtIndexPath: (NSIndexPath *) indexPath ;
-(void) collectionView: (UICollectionView *) collectionView moveItemAtIndexPath: (NSIndexPath *) sourceIndexPath toIndexPath: (NSIndexPath *) destinationIndexPath ;
@end
@protocol UICollectionViewDataSourceClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop