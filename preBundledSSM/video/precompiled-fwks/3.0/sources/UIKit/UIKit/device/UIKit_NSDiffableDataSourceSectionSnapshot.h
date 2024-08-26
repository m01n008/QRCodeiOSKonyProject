#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_NSDiffableDataSourceSectionSnapshot_symbols(JSContext*);
@protocol NSDiffableDataSourceSectionSnapshotInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic,strong) NSArray * items;
@property (readonly,nonatomic,strong) NSArray * rootItems;
@property (readonly,nonatomic,strong) NSArray * visibleItems;
-(void) deleteAllItems;
-(NSArray *) expandedItems;
-(void) deleteItems: (NSArray *) items ;
-(NSString *) visualDescription;
-(void) expandItems: (NSArray *) items ;
-(id) jsinit;
-(void) collapseItems: (NSArray *) items ;
-(NSArray *) items;
-(void) appendItems: (NSArray *) items ;
@end
@protocol NSDiffableDataSourceSectionSnapshotClassExports<JSExport, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop