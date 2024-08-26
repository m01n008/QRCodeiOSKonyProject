//
//  ContainerWidgetData.h
//  VM
//
//  Created by Shiva on 10/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContainerModel.h"
#import "SkinModel.h"
#import "ScrollingInfo.h"

@interface ScrollContainerModel : ContainerModel {

    NSArray				*headers;
	NSArray				*footers;
    ScrollingInfo       *scrollingInfo;
}

- (void) scrollToWidget : (WidgetModel*) subWidgetmodel withAnimation:(BOOL) animate;
- (void) scrollToTopWithAnimation:(BOOL) animate;
- (void) scrollToBottomWithAnimation:(BOOL) animate;


@property (nonatomic, retain)	NSArray*				headers;
@property (nonatomic, retain)	NSArray*				footers;
@property (nonatomic, retain)   ScrollingInfo*          scrollingInfo;
@property (nonatomic, retain)   NSString        *pullToRefreshI18NKey;
@property (nonatomic, retain)   NSString        *releaseToPullRefreshI18NKey;
@property (nonatomic, retain)   NSString        *releaseToPushRefreshI18NKey;
@property (nonatomic, retain)   NSString        *pushToRefreshI18NKey;
@property (nonatomic, retain)   NSString        *pullToRefreshSkin;
@property (nonatomic, retain)   NSString        *pushToRefreshSkin;

@end
