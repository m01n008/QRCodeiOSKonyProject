#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIDiffableDataSource_symbols(JSContext*);
@protocol NSDiffableDataSourceSectionTransactionInstanceExports<JSExport>
@property (readonly,nonatomic) NSDiffableDataSourceSectionSnapshot * finalSnapshot;
@property (readonly,nonatomic) NSOrderedCollectionDifference * difference;
@property (readonly,nonatomic) NSDiffableDataSourceSectionSnapshot * initialSnapshot;
@end
@protocol NSDiffableDataSourceSectionTransactionClassExports<JSExport>
@end
@protocol UICollectionViewDiffableDataSourceSectionSnapshotHandlersInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (getter=getJsWillExpandItemHandler,setter=setJsWillExpandItemHandler:) JSValue* jswillExpandItemHandler;
@property (getter=getJsWillCollapseItemHandler,setter=setJsWillCollapseItemHandler:) JSValue* jswillCollapseItemHandler;
@property (getter=getJsShouldCollapseItemHandler,setter=setJsShouldCollapseItemHandler:) JSValue* jsshouldCollapseItemHandler;
@property (getter=getJsSnapshotForExpandingParentItemHandler,setter=setJsSnapshotForExpandingParentItemHandler:) JSValue* jssnapshotForExpandingParentItemHandler;
@property (getter=getJsShouldExpandItemHandler,setter=setJsShouldExpandItemHandler:) JSValue* jsshouldExpandItemHandler;
@end
@protocol UICollectionViewDiffableDataSourceSectionSnapshotHandlersClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol UICollectionViewDiffableDataSourceInstanceExports<JSExport, UICollectionViewDataSourceInstanceExports_>
@property (copy,nonatomic) UICollectionViewDiffableDataSourceReorderingHandlers * reorderingHandlers;
@property (getter=getJsSupplementaryViewProvider,setter=setJsSupplementaryViewProvider:) JSValue* jssupplementaryViewProvider;
@property (copy,nonatomic) UICollectionViewDiffableDataSourceSectionSnapshotHandlers * sectionSnapshotHandlers;
-(void) applySnapshot: (NSDiffableDataSourceSnapshot *) snapshot animatingDifferences: (BOOL) animatingDifferences ;
-(NSDiffableDataSourceSnapshot *) snapshot;
JSExportAs(initWithCollectionViewCellProvider,
-(id) jsinitWithCollectionView: (UICollectionView *) collectionView cellProvider: (JSValue *) cellProvider );
JSExportAs(applySnapshotAnimatingDifferencesCompletion,
-(void) jsapplySnapshot: (NSDiffableDataSourceSnapshot *) snapshot animatingDifferences: (BOOL) animatingDifferences completion: (JSValue *) completion );
@end
@protocol UICollectionViewDiffableDataSourceClassExports<JSExport, UICollectionViewDataSourceClassExports_>
@end
@protocol UICollectionViewDiffableDataSourceReorderingHandlersInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (getter=getJsWillReorderHandler,setter=setJsWillReorderHandler:) JSValue* jswillReorderHandler;
@property (getter=getJsCanReorderItemHandler,setter=setJsCanReorderItemHandler:) JSValue* jscanReorderItemHandler;
@property (getter=getJsDidReorderHandler,setter=setJsDidReorderHandler:) JSValue* jsdidReorderHandler;
@end
@protocol UICollectionViewDiffableDataSourceReorderingHandlersClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol UITableViewDiffableDataSourceInstanceExports<JSExport, UITableViewDataSourceInstanceExports_>
@property (nonatomic) UITableViewRowAnimation defaultRowAnimation;
JSExportAs(initWithTableViewCellProvider,
-(id) jsinitWithTableView: (UITableView *) tableView cellProvider: (JSValue *) cellProvider );
-(void) applySnapshot: (NSDiffableDataSourceSnapshot *) snapshot animatingDifferences: (BOOL) animatingDifferences ;
-(NSDiffableDataSourceSnapshot *) snapshot;
JSExportAs(applySnapshotAnimatingDifferencesCompletion,
-(void) jsapplySnapshot: (NSDiffableDataSourceSnapshot *) snapshot animatingDifferences: (BOOL) animatingDifferences completion: (JSValue *) completion );
@end
@protocol UITableViewDiffableDataSourceClassExports<JSExport, UITableViewDataSourceClassExports_>
@end
@protocol NSDiffableDataSourceSnapshotInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) NSInteger numberOfSections;
@property (readonly,nonatomic) NSArray * itemIdentifiers;
@property (readonly,nonatomic) NSInteger numberOfItems;
@property (readonly,nonatomic) NSArray * sectionIdentifiers;
-(void) deleteAllItems;
-(void) deleteSectionsWithIdentifiers: (NSArray *) sectionIdentifiers ;
-(void) appendSectionsWithIdentifiers: (NSArray *) sectionIdentifiers ;
-(void) reloadItemsWithIdentifiers: (NSArray *) identifiers ;
-(void) reloadSectionsWithIdentifiers: (NSArray *) sectionIdentifiers ;
-(void) deleteItemsWithIdentifiers: (NSArray *) identifiers ;
-(void) appendItemsWithIdentifiers: (NSArray *) identifiers ;
@end
@protocol NSDiffableDataSourceSnapshotClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol NSDiffableDataSourceTransactionInstanceExports<JSExport>
@property (readonly,nonatomic) NSDiffableDataSourceSnapshot * finalSnapshot;
@property (readonly,nonatomic) NSOrderedCollectionDifference * difference;
@property (readonly,nonatomic) NSArray * sectionTransactions;
@property (readonly,nonatomic) NSDiffableDataSourceSnapshot * initialSnapshot;
@end
@protocol NSDiffableDataSourceTransactionClassExports<JSExport>
@end
#pragma clang diagnostic pop