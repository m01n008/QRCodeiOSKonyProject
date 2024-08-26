//
//  KonyPagedScrollView.h
//  VM
//
//  Created by KH206 on 05/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KonyPagedScrollViewDataSource.h"
#import "KonyPagedScrollViewDelegate.h"
#import <CoreComponent/KonyUtil.h>
@interface KonyPagedScrollView : UIScrollView
{

    id <KonyPagedScrollViewDataSource> __weak dataSourceDelegate;
    id <KonyPagedScrollViewDelegate> __weak scrollDelegate;
    NSInteger numberOfPagesInBuffer;
    CGSize scrollPageSize;
    NSInteger scrollPageCount;
    NSMutableDictionary *pageDict;
    BOOL pageLevelScrollsToTop;
    BOOL isPageRemovalInProgress;
    
}

@property(nonatomic, readonly) NSInteger currentPageIndex;
@property(nonatomic)    BOOL pageLevelScrollsToTop;
//variable used to enable reload segment pageView when url image is downloaded.
@property(nonatomic)BOOL reloadSegmentPage;
@property(nonatomic, readwrite) NSInteger reloadPageIndex;
@property(nonatomic) BOOL retainScrolledPage;
@property(nonatomic) BOOL requireDataReload;


- (id) initWithDelegate: (id <KonyPagedScrollViewDelegate>)delegate DataSource: (id<KonyPagedScrollViewDataSource>) dataSourceDelegte BufferSize: (NSInteger) bufferSize;
- (void) reLoadPages;
- (void) insertPageAt: (NSInteger) pageIndex;
- (void) removePageAt: (NSInteger) pageIndex;
- (void) replacePageAt :(NSInteger)pageIndex;
- (void) focusPageAt: (NSInteger) pageIndex;
- (void) focusPageAt: (NSInteger) pageIndex withAnimation:(BOOL) animate;
- (NSDictionary*) getAllPageViews;
- (NSInteger) indexOfPage: (KonyWidgetContainerScrollView*) page;

- (void) updateCurentpage;
- (void) tryCreatePageAt: (NSInteger) pageIndex;
- (void) cleanOutOfBufferPages;
- (BOOL) isPageActive:(NSInteger) pageIndex;
- (void)updatePageLevelScrollsToTop;
- (KonyWidgetContainerScrollView *)pageAtIndex:(NSInteger)index;

- (void)updatePageLevelScrollsToTop;
- (BOOL) isPageActive:(NSInteger) pageIndex;
@end
