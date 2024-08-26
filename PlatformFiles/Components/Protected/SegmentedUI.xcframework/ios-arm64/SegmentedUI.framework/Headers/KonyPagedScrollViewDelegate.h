//
//  KonyPagedScrollViewDelegate.h
//  VM
//
//  Created by KH206 on 05/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@class KonyPagedScrollView;

@protocol KonyPagedScrollViewDelegate <NSObject>

- (void) pagedScrollView: (KonyPagedScrollView*) pScrollView currentPageChanged:(NSInteger) pageIndex withPageRemovalInProgress:(BOOL)isPageRemovalInProgress;
- (void) pagedScrollView: (KonyPagedScrollView*) pScrollView pageClicked:(NSInteger) pageIndex;
- (void) pagedScrollView:(KonyPagedScrollView *)pScrollView currentPageDidChange:(NSInteger)pageIndex;

@end
