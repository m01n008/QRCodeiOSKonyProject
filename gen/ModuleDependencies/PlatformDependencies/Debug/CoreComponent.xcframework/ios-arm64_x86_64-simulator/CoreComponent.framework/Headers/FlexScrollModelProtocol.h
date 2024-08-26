//
//  FlexScrollModelProtocol.h
//  VM
//
//  Created by Girish Haniyamballi on 31/07/14.
//
//

#import <Foundation/Foundation.h>
#import "FlexLayoutModelProperty.h"
@protocol FlexScrollModelProtocol <NSObject>

@property(nonatomic,assign) BOOL enableScrolling;
@property(nonatomic) BOOL enableOnScrollWidgetPositionForSubwidgets;
@property(nonatomic, retain) NSNumber *scrollDirection;
@property(nonatomic, retain) NSDictionary *contentOffset;
@property(nonatomic, retain) NSDictionary *contentSize;
@property(nonatomic, readonly) NSDictionary *contentOffsetMeasured;
@property(nonatomic, readonly) NSDictionary *contentSizeMeasured;
@property(nonatomic) BOOL bounces;
@property(nonatomic) BOOL allowHorizontalBounce;
@property(nonatomic) BOOL allowVerticalBounce;
@property(nonatomic) BOOL horizontalScrollIndicator;
@property(nonatomic) BOOL verticalScrollIndicator;
@property(nonatomic) BOOL pagingEnabled;
@property(nonatomic) BOOL dragging;
@property(nonatomic) BOOL tracking;
@property(nonatomic) BOOL decelerating;
@property(nonatomic) NSNumber* zoomScale;
@property(nonatomic) CGFloat minZoomScale;
@property(nonatomic) CGFloat maxZoomScale;
@property(nonatomic) CGFloat deczoomScaleelerating;
@property(nonatomic) BOOL zooming;
@property(nonatomic) BOOL bouncesZoom;
//Callback events
@property (nonatomic, retain) CallBack *onScrollStart;
@property (nonatomic, retain) CallBack *onScrollTouchReleased;
@property (nonatomic, retain) CallBack *onScrolling;
@property (nonatomic, retain) CallBack *onDecelerationStarted;
@property (nonatomic, retain) CallBack *onScrollEnd;
@property (nonatomic, retain) CallBack *widgetToZoom;
@property (nonatomic, retain) CallBack *onZoomStart;
@property (nonatomic, retain) CallBack *onZooming;
@property (nonatomic, retain) CallBack *onZoomEnd;
@property (nonatomic, readonly) FlexLayoutModelProperty *xOffset;
@property (nonatomic, readonly) FlexLayoutModelProperty *yOffset;

@property (nonatomic, readonly) FlexLayoutModelProperty *contentWidth;
@property (nonatomic, readonly) FlexLayoutModelProperty *contentHeight;

@property (nonatomic, readonly) FlexLayoutModelProperty *xZoomToRect;
@property (nonatomic, readonly) FlexLayoutModelProperty *yZoomToRect;

@property (nonatomic, readonly) FlexLayoutModelProperty *widthZoomToRect;
@property (nonatomic, readonly) FlexLayoutModelProperty *heightZoomToRect;

- (CGPoint) convertedOffset;
- (CGRect)  convertedZoomToRect;
- (CGSize)  convertedSize;
- (void) scrollToStartDiagonally;
- (void) scrollToEndDiagonally;
- (void) scrollToStartHorizontally;
- (void) scrollToEndHorizontally;
- (void) scrollToStartVertically;
- (void) scrollToEndVertically;
- (void) scrollToWidget : (WidgetModel*) subWidgetmodel;

- (void) scrollToStartDiagonallyWithAnimation: (BOOL) animation;
- (void) scrollToEndDiagonallyWithAnimation: (BOOL) animation;
- (void) scrollToStartHorizontallyWithAnimation: (BOOL) animation;
- (void) scrollToEndHorizontallyWithAnimation: (BOOL) animation;
- (void) scrollToStartVerticallyWithAnimation: (BOOL) animation;
- (void) scrollToEndVerticallyWithAnimation: (BOOL) animation;
- (void) scrollToWidget : (WidgetModel*) subWidgetmodel withAnimation: (BOOL) animation;

- (void) setContentOffset:(NSDictionary*)contentOffset WithAnimation: (BOOL) animation;
- (void) setZoomScale:(NSNumber*) zoomScale WithAnimation: (BOOL) animation;
- (void) zoomToRect:(NSDictionary*)zoomRect WithAnimation: (BOOL) animation;

@end
