//
//  KonyScrollViewDelegateProxy.h
//  VM
//
//  Created by Sunil Phani Manne on 6/1/12.
//  Copyright (c) 2012 Sunil Phani Manne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Widget.h"
#import "KonyScrollViewDelegate.h"

@interface KonyScrollViewDelegateProxy : NSProxy{
    KonyScrollViewDelegate *delegate;
    NSMutableArray *objectsToBeProxied;
}

@property (nonatomic, retain) KonyScrollViewDelegate *delegate;
@property (nonatomic, weak) Widget* widget;
@property (nonatomic, weak) UIScrollView *parentScrollView;
@property (nonatomic, retain) NSMutableArray* objectsToBeProxied;

+(id<UIScrollViewDelegate>) proxyForObjects: (NSMutableArray*) objectsDict forWidget: (Widget*) widget_;
+(id<UIScrollViewDelegate>) proxyForObjects: (NSMutableArray*) objectsArray forWidget: (Widget*) widget_ forScrollView:(UIScrollView*) scrollView_;
-(id) initWithWidget: (Widget*) widget_ AndToBeProxiedObjects:(NSMutableArray*) objectsDict;
-(id) initWithWidget: (Widget*) widget_ scrollView: (UIScrollView*) scrollView_ AndToBeProxiedObjects:(NSMutableArray*) objectsArray;

//--- Properties to be forwarded to KonyScrollViewDelegate----//

@property(nonatomic, assign) BOOL arePullViewsConfigured;
@property(nonatomic, assign) BOOL arePushViewsConfigured;
@property(nonatomic, assign) BOOL shouldEnablePullToRefresh;
@property(nonatomic, assign) BOOL shouldEnablePushToRefresh;
@property(nonatomic, retain) UIView* pullView;
@property(nonatomic, retain) UIView* releasePullView;
@property(nonatomic, retain) UIView* refreshingPullView;
@property(nonatomic, retain) UIImageView* animatingPullImageView;
@property(nonatomic, retain) UIView* pushView;
@property(nonatomic, retain) UIView* releasePushView;
@property(nonatomic, retain) UIView* refreshingPushView;
@property(nonatomic, retain) UIImageView* animatingPushImageView;
@property(nonatomic, retain) CallBack* onReachingStart;
@property(nonatomic, retain) CallBack* onReachingEnd;
@property(nonatomic, retain) CallBack* pullToRefreshAction;
@property(nonatomic, retain) CallBack* pushToRefreshAction;

//------------------------------------------//

-(void) setupPullToRefreshViews: (NSDictionary*) viewsDictionary;
-(void) setupPullToRefreshViewsHSC: (NSDictionary*) viewsDictionary;
-(void) setupPushToRefreshViews: (NSDictionary*) viewsDictionary;
-(void) setupPushToRefreshViewsHSC: (NSDictionary*) viewsDictionary;
-(void) updatePullToRefreshViews: (NSDictionary*) viewsDictionary;
-(void) updatePullToRefreshViewsHSC: (NSDictionary*) viewsDictionary;
-(void) updatePushToRefreshViews: (NSDictionary*) viewsDictionary;
-(void) updatePushToRefreshViewsHSC: (NSDictionary*) viewsDictionary;

-(void) clearPullToRefreshViews;
-(void) clearPushToRefreshViews;
@end
