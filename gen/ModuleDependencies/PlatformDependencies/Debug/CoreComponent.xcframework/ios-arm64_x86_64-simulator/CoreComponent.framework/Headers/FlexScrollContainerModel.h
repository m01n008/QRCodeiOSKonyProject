//
//  FlexContainerModel.h
//  VM
//
//  Created by Girish Haniyamballi on 12/07/14.
//
//

#import "FlexContainerModel.h"
#import "ScrollingInfo.h"
#import "FlexScrollModelProtocol.h"

@interface FlexScrollContainerModel : FlexContainerModel <FlexScrollModelProtocol>


    //Internal use
    @property(nonatomic, retain) ScrollingInfo *scrollingInfo;
    @property(nonatomic, retain) NSDictionary* scrollingEvents;
    @property(nonatomic,assign) BOOL animateContentOffset;
    @property(nonatomic,assign) BOOL animateZoomScale;
    @property(nonatomic,assign) BOOL animateZoomToRect;
    @property(nonatomic,retain) NSDictionary *zoomToRect;
    @property(nonatomic) BOOL scrollsToTop;
    @property(nonatomic) BOOL clipBounds;
    @property (nonatomic) BOOL enableOnScrollWidgetPositionForSubwidgets;

    @property (nonatomic, retain) NSString *pullToRefreshI18NKey;
    @property (nonatomic, retain) NSString *releaseToPullRefreshI18NKey;
    @property (nonatomic, retain) NSString *releaseToPushRefreshI18NKey;
    @property (nonatomic, retain) NSString *pushToRefreshI18NKey;
    @property (nonatomic, retain) NSString *pullToRefreshSkin;
    @property (nonatomic, retain) NSString *pushToRefreshSkin;
    @property (nonatomic, retain) NSString *pullToRefreshIcon;
    @property (nonatomic, retain) NSString *pushToRefreshIcon;

@end
