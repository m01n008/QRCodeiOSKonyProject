//
//  SegmentedUIPageView.h
//  VM
//
//  Created by KH206 on 05/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SegmentedUIViewProtocol.h"
#import "SegmentedUIViewDelegateProtocol.h"
#import "SegmentedUIViewDataSourceDelegateProtocol.h"
#import <CoreComponent/KonyTypes.h>
#import <CoreComponent/OMPageControl.h>
#import "SUIPageBackGroundview.h"
#import "KonyPagedScrollViewDataSource.h"
#import "KonyPagedScrollView.h"
#import "KonyWidgetContainerView.h"
#import <CoreComponent/KonyWidgetEventListenerProtocol.h>
@interface SegmentedUIPageView : NSObject <SegmentedUIViewProtocol, UIScrollViewDelegate, KonyPagedScrollViewDataSource, KonyPagedScrollViewDelegate, KonyWidgetEventListenerProtocol>
{
 
    KonyPagedScrollView *pagedScrollView;
    OMPageControl *pageControl;
    SUIPageBackGroundview *suiBackGroundView;
    id <SegmentedUIViewDelegateProtocol> __weak delegate;
    id <SegmentedUIViewDataSourceDelegateProtocol> __weak dataSourceDelegate;
    

    
    BOOL needPageIndicator;
    id pageOnDotImage;
    id pageOffDotImage;
    id pageOnTintColor;
    id pageOffTintColor;
    
    NSString *widgetSkinID;
    NSString *rowSkinID;
    NSString *rowFocusSkinID;
    NSString *alternateRowSkinID;
    NSString *sectionHeaderSkinID;
    NSString *pageSkinID;

    float referenceWidth;
    float pageControlHeight;
    BOOL bounces;
    BOOL showScrollBars;
    BOOL isSegmentRowCacheEnabled;
    BOOL requireDataReload;
}

-(id) initWithStyle: (KonySegmentedUIPageViewStyle) style;
-(void) onPageChanged: (id) object;
-(FlexLayoutContainer*) getRootWidgetForCurrentPage;
@end
