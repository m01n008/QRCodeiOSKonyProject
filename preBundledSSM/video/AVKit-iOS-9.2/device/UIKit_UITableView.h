#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UITableView_symbols(JSContext*);
@protocol UITableViewFocusUpdateContextInstanceExports<JSExport>
@property (readonly,nonatomic,strong) NSIndexPath * previouslyFocusedIndexPath;
@property (readonly,nonatomic,strong) NSIndexPath * nextFocusedIndexPath;
@end
@protocol UITableViewFocusUpdateContextClassExports<JSExport>
@end
@protocol UITableViewRowActionInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) UITableViewRowActionStyle style;
@property (copy,nonatomic) UIVisualEffect * backgroundEffect;
@property (copy,nonatomic) UIColor * backgroundColor;
@property (copy,nonatomic) NSString * title;
@end
@protocol UITableViewRowActionClassExports<JSExport, NSCopyingClassExports_>
JSExportAs(rowActionWithStyleTitleHandler,
+(id) jsrowActionWithStyle: (UITableViewRowActionStyle) style title: (NSString *) title handler: (JSValue *) handler );
@end
@protocol NSIndexPathUITableViewCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSInteger section;
@property (readonly,nonatomic) NSInteger row;
@end
@protocol NSIndexPathUITableViewCategoryClassExports<JSExport>
+(id) indexPathForRow: (NSInteger) row inSection: (NSInteger) section ;
@end
@protocol UITableViewInstanceExports<JSExport, NSCodingInstanceExports_>
@property (nonatomic) CGFloat estimatedRowHeight;
@property (nonatomic,strong) UIView * backgroundView;
@property (nonatomic) CGFloat sectionHeaderHeight;
@property (nonatomic) CGFloat estimatedSectionHeaderHeight;
@property (nonatomic) BOOL allowsSelectionDuringEditing;
@property (nonatomic) CGFloat estimatedSectionFooterHeight;
@property (readonly,nonatomic) NSIndexPath * indexPathForSelectedRow;
@property (readonly,nonatomic) UITableViewStyle style;
@property (nonatomic,strong) UIView * tableHeaderView;
@property (readonly,nonatomic) NSArray * indexPathsForVisibleRows;
@property (nonatomic) BOOL allowsSelection;
@property (nonatomic,strong) UIColor * sectionIndexColor;
@property (nonatomic) NSInteger sectionIndexMinimumDisplayRowCount;
@property (readonly,nonatomic) NSArray * indexPathsForSelectedRows;
@property (nonatomic,strong) UIColor * sectionIndexTrackingBackgroundColor;
@property (nonatomic) BOOL cellLayoutMarginsFollowReadableWidth;
@property (nonatomic) UIEdgeInsets separatorInset;
@property (nonatomic) BOOL allowsMultipleSelection;
@property (nonatomic,weak) id dataSource;
@property (nonatomic) UITableViewCellSeparatorStyle separatorStyle;
@property (copy,nonatomic) UIVisualEffect * separatorEffect;
@property (getter=isEditing,nonatomic) BOOL editing;
@property (readonly,nonatomic) NSArray * visibleCells;
@property (nonatomic,strong) UIView * tableFooterView;
@property (nonatomic) CGFloat rowHeight;
@property (nonatomic) BOOL allowsMultipleSelectionDuringEditing;
@property (nonatomic) BOOL remembersLastFocusedIndexPath;
@property (nonatomic,strong) UIColor * separatorColor;
@property (readonly,nonatomic) NSInteger numberOfSections;
@property (nonatomic,strong) UIColor * sectionIndexBackgroundColor;
@property (nonatomic,weak) id delegate;
@property (nonatomic) CGFloat sectionFooterHeight;
-(__kindof UITableViewCell *) dequeueReusableCellWithIdentifier: (NSString *) identifier forIndexPath: (NSIndexPath *) indexPath ;
-(void) deleteSections: (NSIndexSet *) sections withRowAnimation: (UITableViewRowAnimation) animation ;
-(NSInteger) numberOfRowsInSection: (NSInteger) section ;
-(void) moveRowAtIndexPath: (NSIndexPath *) indexPath toIndexPath: (NSIndexPath *) newIndexPath ;
-(UITableViewHeaderFooterView *) footerViewForSection: (NSInteger) section ;
JSExportAs(registerClassForCellReuseIdentifier,
-(void) jsregisterClass: (JSValue *) cellClass forCellReuseIdentifier: (NSString *) identifier );
-(void) reloadSections: (NSIndexSet *) sections withRowAnimation: (UITableViewRowAnimation) animation ;
-(void) registerNib: (UINib *) nib forHeaderFooterViewReuseIdentifier: (NSString *) identifier ;
-(void) scrollToNearestSelectedRowAtScrollPosition: (UITableViewScrollPosition) scrollPosition animated: (BOOL) animated ;
JSExportAs(registerClassForHeaderFooterViewReuseIdentifier,
-(void) jsregisterClass: (JSValue *) aClass forHeaderFooterViewReuseIdentifier: (NSString *) identifier );
-(__kindof UITableViewCell *) cellForRowAtIndexPath: (NSIndexPath *) indexPath ;
-(void) insertRowsAtIndexPaths: (NSArray *) indexPaths withRowAnimation: (UITableViewRowAnimation) animation ;
-(CGRect) rectForSection: (NSInteger) section ;
-(void) selectRowAtIndexPath: (NSIndexPath *) indexPath animated: (BOOL) animated scrollPosition: (UITableViewScrollPosition) scrollPosition ;
-(void) scrollToRowAtIndexPath: (NSIndexPath *) indexPath atScrollPosition: (UITableViewScrollPosition) scrollPosition animated: (BOOL) animated ;
-(UITableViewHeaderFooterView *) headerViewForSection: (NSInteger) section ;
-(void) insertSections: (NSIndexSet *) sections withRowAnimation: (UITableViewRowAnimation) animation ;
-(void) reloadSectionIndexTitles;
-(__kindof UITableViewCell *) dequeueReusableCellWithIdentifier: (NSString *) identifier ;
-(NSIndexPath *) indexPathForRowAtPoint: (CGPoint) point ;
-(void) registerNib: (UINib *) nib forCellReuseIdentifier: (NSString *) identifier ;
-(void) setEditing: (BOOL) editing animated: (BOOL) animated ;
-(void) reloadData;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
JSExportAs(initWithFrameStyle,
-(id) jsinitWithFrame: (CGRect) frame style: (UITableViewStyle) style );
-(CGRect) rectForHeaderInSection: (NSInteger) section ;
-(CGRect) rectForFooterInSection: (NSInteger) section ;
-(void) moveSection: (NSInteger) section toSection: (NSInteger) newSection ;
-(NSIndexPath *) indexPathForCell: (UITableViewCell *) cell ;
-(void) deselectRowAtIndexPath: (NSIndexPath *) indexPath animated: (BOOL) animated ;
-(void) endUpdates;
-(void) deleteRowsAtIndexPaths: (NSArray *) indexPaths withRowAnimation: (UITableViewRowAnimation) animation ;
-(NSArray *) indexPathsForRowsInRect: (CGRect) rect ;
-(void) reloadRowsAtIndexPaths: (NSArray *) indexPaths withRowAnimation: (UITableViewRowAnimation) animation ;
-(CGRect) rectForRowAtIndexPath: (NSIndexPath *) indexPath ;
-(__kindof UITableViewHeaderFooterView *) dequeueReusableHeaderFooterViewWithIdentifier: (NSString *) identifier ;
-(void) beginUpdates;
@end
@protocol UITableViewClassExports<JSExport, NSCodingClassExports_>
@end
@protocol UITableViewDelegateInstanceExports_<JSExport, NSObjectInstanceExports_, UIScrollViewDelegateInstanceExports_>
-(NSIndexPath *) tableView: (UITableView *) tableView targetIndexPathForMoveFromRowAtIndexPath: (NSIndexPath *) sourceIndexPath toProposedIndexPath: (NSIndexPath *) proposedDestinationIndexPath ;
-(UITableViewCellEditingStyle) tableView: (UITableView *) tableView editingStyleForRowAtIndexPath: (NSIndexPath *) indexPath ;
-(void) tableView: (UITableView *) tableView didEndDisplayingCell: (UITableViewCell *) cell forRowAtIndexPath: (NSIndexPath *) indexPath ;
-(CGFloat) tableView: (UITableView *) tableView heightForFooterInSection: (NSInteger) section ;
-(void) tableView: (UITableView *) tableView didDeselectRowAtIndexPath: (NSIndexPath *) indexPath ;
-(NSIndexPath *) tableView: (UITableView *) tableView willDeselectRowAtIndexPath: (NSIndexPath *) indexPath ;
-(NSArray *) tableView: (UITableView *) tableView editActionsForRowAtIndexPath: (NSIndexPath *) indexPath ;
-(CGFloat) tableView: (UITableView *) tableView heightForHeaderInSection: (NSInteger) section ;
-(void) tableView: (UITableView *) tableView willDisplayHeaderView: (UIView *) view forSection: (NSInteger) section ;
-(BOOL) tableView: (UITableView *) tableView canFocusRowAtIndexPath: (NSIndexPath *) indexPath ;
-(void) tableView: (UITableView *) tableView didUpdateFocusInContext: (UITableViewFocusUpdateContext *) context withAnimationCoordinator: (UIFocusAnimationCoordinator *) coordinator ;
-(UIView *) tableView: (UITableView *) tableView viewForHeaderInSection: (NSInteger) section ;
-(void) tableView: (UITableView *) tableView didEndEditingRowAtIndexPath: (NSIndexPath *) indexPath ;
-(void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath ;
-(BOOL) tableView: (UITableView *) tableView shouldUpdateFocusInContext: (UITableViewFocusUpdateContext *) context ;
-(void) tableView: (UITableView *) tableView accessoryButtonTappedForRowWithIndexPath: (NSIndexPath *) indexPath ;
-(void) tableView: (UITableView *) tableView didHighlightRowAtIndexPath: (NSIndexPath *) indexPath ;
-(void) tableView: (UITableView *) tableView didUnhighlightRowAtIndexPath: (NSIndexPath *) indexPath ;
-(BOOL) tableView: (UITableView *) tableView shouldShowMenuForRowAtIndexPath: (NSIndexPath *) indexPath ;
-(CGFloat) tableView: (UITableView *) tableView heightForRowAtIndexPath: (NSIndexPath *) indexPath ;
-(NSInteger) tableView: (UITableView *) tableView indentationLevelForRowAtIndexPath: (NSIndexPath *) indexPath ;
-(CGFloat) tableView: (UITableView *) tableView estimatedHeightForRowAtIndexPath: (NSIndexPath *) indexPath ;
-(UIView *) tableView: (UITableView *) tableView viewForFooterInSection: (NSInteger) section ;
JSExportAs(tableViewPerformActionForRowAtIndexPathWithSender,
-(void) jstableView: (UITableView *) tableView performAction: (NSString *) action forRowAtIndexPath: (NSIndexPath *) indexPath withSender: (id) sender );
-(UITableViewCellAccessoryType) tableView: (UITableView *) tableView accessoryTypeForRowWithIndexPath: (NSIndexPath *) indexPath ;
-(BOOL) tableView: (UITableView *) tableView shouldHighlightRowAtIndexPath: (NSIndexPath *) indexPath ;
-(void) tableView: (UITableView *) tableView willDisplayCell: (UITableViewCell *) cell forRowAtIndexPath: (NSIndexPath *) indexPath ;
-(NSIndexPath *) tableView: (UITableView *) tableView willSelectRowAtIndexPath: (NSIndexPath *) indexPath ;
-(void) tableView: (UITableView *) tableView didEndDisplayingFooterView: (UIView *) view forSection: (NSInteger) section ;
-(BOOL) tableView: (UITableView *) tableView shouldIndentWhileEditingRowAtIndexPath: (NSIndexPath *) indexPath ;
-(NSIndexPath *) indexPathForPreferredFocusedViewInTableView: (UITableView *) tableView ;
-(CGFloat) tableView: (UITableView *) tableView estimatedHeightForFooterInSection: (NSInteger) section ;
-(void) tableView: (UITableView *) tableView didEndDisplayingHeaderView: (UIView *) view forSection: (NSInteger) section ;
-(void) tableView: (UITableView *) tableView willDisplayFooterView: (UIView *) view forSection: (NSInteger) section ;
-(NSString *) tableView: (UITableView *) tableView titleForDeleteConfirmationButtonForRowAtIndexPath: (NSIndexPath *) indexPath ;
JSExportAs(tableViewCanPerformActionForRowAtIndexPathWithSender,
-(BOOL) jstableView: (UITableView *) tableView canPerformAction: (NSString *) action forRowAtIndexPath: (NSIndexPath *) indexPath withSender: (id) sender );
-(CGFloat) tableView: (UITableView *) tableView estimatedHeightForHeaderInSection: (NSInteger) section ;
-(void) tableView: (UITableView *) tableView willBeginEditingRowAtIndexPath: (NSIndexPath *) indexPath ;
@end
@protocol UITableViewDelegateClassExports_<JSExport, NSObjectClassExports_, UIScrollViewDelegateClassExports_>
@end
@protocol UITableViewDataSourceInstanceExports_<JSExport, NSObjectInstanceExports_>
-(NSString *) tableView: (UITableView *) tableView titleForFooterInSection: (NSInteger) section ;
-(NSInteger) tableView: (UITableView *) tableView numberOfRowsInSection: (NSInteger) section ;
-(NSArray *) sectionIndexTitlesForTableView: (UITableView *) tableView ;
-(NSInteger) tableView: (UITableView *) tableView sectionForSectionIndexTitle: (NSString *) title atIndex: (NSInteger) index ;
-(UITableViewCell *) tableView: (UITableView *) tableView cellForRowAtIndexPath: (NSIndexPath *) indexPath ;
-(void) tableView: (UITableView *) tableView commitEditingStyle: (UITableViewCellEditingStyle) editingStyle forRowAtIndexPath: (NSIndexPath *) indexPath ;
-(void) tableView: (UITableView *) tableView moveRowAtIndexPath: (NSIndexPath *) sourceIndexPath toIndexPath: (NSIndexPath *) destinationIndexPath ;
-(NSString *) tableView: (UITableView *) tableView titleForHeaderInSection: (NSInteger) section ;
-(BOOL) tableView: (UITableView *) tableView canMoveRowAtIndexPath: (NSIndexPath *) indexPath ;
-(NSInteger) numberOfSectionsInTableView: (UITableView *) tableView ;
-(BOOL) tableView: (UITableView *) tableView canEditRowAtIndexPath: (NSIndexPath *) indexPath ;
@end
@protocol UITableViewDataSourceClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop