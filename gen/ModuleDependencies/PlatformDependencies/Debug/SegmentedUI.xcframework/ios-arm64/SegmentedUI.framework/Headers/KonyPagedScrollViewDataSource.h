//
//  KonyPagedScrollViewDataSource.h
//  VM
//
//  Created by KH206 on 05/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyWidgetContainerView.h"

@class KonyPagedScrollView;
@protocol KonyPagedScrollViewDataSource <NSObject>
- (KonyWidgetContainerScrollView*) pagedScrollView: (KonyPagedScrollView*) pScrollView pageAtIndex:(NSInteger) pageIndex;
- (NSInteger) pageCountForPagedScrollView: (KonyPagedScrollView*) pScrollView;
- (CGSize) pageSizeForPagedScrollView: (KonyPagedScrollView*) pScrollView;
- (CGSize) pageSizeForPagedScrollView: (KonyPagedScrollView*) pScrollView atIndex:(NSUInteger)index;
- (BOOL) shouldHandleGestures;
-(KonyWidgetContainerScrollView*) updateCurrentPageFrame:(KonyWidgetContainerScrollView *)page;

@end
