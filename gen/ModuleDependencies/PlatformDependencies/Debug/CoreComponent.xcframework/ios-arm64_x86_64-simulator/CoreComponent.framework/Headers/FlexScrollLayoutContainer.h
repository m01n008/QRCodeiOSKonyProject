//
//  FlexLayoutContainer.h
//  VM
//
//  Created by Girish Haniyamballi on 12/07/14.
//
//

#import "FlexLayoutContainer.h"
#import "FlexLayoutModel.h"
#import "ViewLayoutDelegate.h"
#import "ViewDrawingDelegate.h"
#import "KonyScrollViewDelegateProxy.h"
#import "ContainerBackgroundView.h"
#import "ScrollableBoxView.h"
#import "FlexScrollContainerModel.h"

#import "KonyScrollViewOffsetHandler.h"


@interface FlexScrollLayoutContainer : FlexLayoutContainer<ViewLayoutDelegate,ViewDrawingDelegate, UIScrollViewDelegate,KonyScrollContainer>{

    unsigned int currentPage;
    KonyScrollViewDelegateProxy<UIScrollViewDelegate>* scrollDelegateProxy;

    ContainerBackgroundView *containerBackGroundView;
    ScrollableBoxView *contentView;

    NSMutableArray *headerWidgets;
    NSMutableArray *footerWidgets;
    BOOL isInitialisedWithcontentOffset;
    //setContentOffsetToEnd variable is used to set contentOffset of scroll container to end in case of flowhorizontal align right and bottom. It has to be only set to end when widget is created or reverseLayoutDirection value is changed dynamically.
    BOOL setContentOffsetToEnd;
    ScrollContainerWidgetLayoutState widgetLayoutState;
    WidgetModel *widgetToZoom;
}

-(BOOL) isTracking;
-(BOOL) isDragging;
-(BOOL) isDecelerating;
-(BOOL) isZooming;

- (BOOL)isAutogrowSupportedForWidgetViewType;

-(CGPoint) contentOffset;
-(CGSize) contentSize;
- (UIView*) getContentViewForWidget;
@end
