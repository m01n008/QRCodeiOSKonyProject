//
//  BoxWidgetBase.h
//  VM
//
//  Created by KH206 on 23/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ContainerWidget.h"
#import "WidgetLayout.h"
#import "ViewLayoutDelegate.h"
#import "ViewDrawingDelegate.h"
#import "KonyGestureRecognizer.h"
#import "BoxModel.h"
#import "KonyHighlightHandler.h"


typedef enum ScrollContainerWidgetLayoutState
{
    ScrollContainerWidgetLayoutStateYetToStart,
    ScrollContainerWidgetLayoutStateStarted,
    ScrollContainerWidgetLayoutStateBGViewFinished,
    ScrollContainerWidgetLayoutStateContentViewFinished
}ScrollContainerWidgetLayoutState;


@protocol BoxViewGestureProtocol <NSObject>

@property (readwrite, nonatomic) KonyGestureRecognizer *gRecognizer;

@end

@interface BoxWidgetBase : ContainerWidget <KonyGestureProtocol, KonyHighlightProtocol>
{
    @private
    UIView<BoxViewGestureProtocol> *boxView;
    KonyGestureRecognizer *gestureRecognizer;
    BOOL isBoxFocused;
}

@property(nonatomic, retain) UIView *boxView;
@property (nonatomic, retain) NSString *highlightedSkinID;
@property (nonatomic, retain) NSString *currentSkinId;

//LayOutAndSkinInfoDelegate methods
-(BoxModel*) getModel;

// This method is implemented by subclasses
- (void) createBoxView;

- (Skin*) getBoxSkin;
- (void) initGestureRecognizer;
- (void) updateGestureRecognizer;
-(void) updateWidgetSkin;
- (void) resetBoxFocus;
- (void) highlightSubWidgets:(BOOL) shouldHighlight;
-(NSString*) getCurrentSkinId;
- (UIView*) getContentViewForWidget;
@end
