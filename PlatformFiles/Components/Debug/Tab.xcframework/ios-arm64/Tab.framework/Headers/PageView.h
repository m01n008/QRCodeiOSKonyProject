//
//  PageView.h
//  VM
//
//  Created by KH250 on 18/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TabWidget.h"
#import <CoreComponent/OMPageControl.h>


@interface PageView : NSObject <TabViewProtocol,UIScrollViewDelegate>
{
    id<TabViewDelegateProtocol> delegate;
    BOOL pageLevelScrollsToTop;
@private
    UIView *view_;
    UIScrollView *itemsView_;
    OMPageControl *pageControl_;
    NSInteger activeTab;
}
@property(nonatomic,readwrite)OMPageControl *pageControl_;
@property (nonatomic) BOOL pageLevelScrollsToTop;

@end
