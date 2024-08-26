//
//  ScrollingInfo.h
//  VM
//
//  Created by KH206 on 30/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WidgetModel.h"

typedef enum
{
    ScrollingTypeScrollToTop,
    ScrollingTypeScrollToBottom,
    ScrollingTypeScrollToStartDiagonally,
    ScrollingTypeScrollToEndDiagonally,
    ScrollingTypeScrollToStartHorizontally,
    ScrollingTypeScrollToStartVertically, /** Same as ScrollingTypeScrollToTop */
    ScrollingTypeScrollToEndHorizontally, 
    ScrollingTypeScrollToEndVertically, /** Same as ScrollingTypeScrollToBottom */
    ScrollingTypeScrollToWidget
} ScrollingType;

typedef enum
{
    ScrollingSubTypeNone,
    ScrollingSubTypeScrollToSubViewInWidget
} ScrollingSubType;

@interface ScrollingInfo : NSObject
{
    ScrollingType   scrollingType;
    ScrollingSubType scrollingSubType;
    WidgetModel     *widgetModel;
    BOOL            widgetNeedsFocus;   /** If Yes FocusState is considered else, FocusState (hence focusing/resigning) is ignored  */
    BOOL            widgetFocusState;   /**< YES for making widget focusble and NO to resign it */
    BOOL            shouldAnimate;         /** YES if the scrolling should be animated */
}

@property (nonatomic, readonly) ScrollingType   scrollingType;
@property (nonatomic, readwrite) ScrollingSubType   scrollingSubType;
@property (nonatomic, readonly) WidgetModel     *widgetModel;
@property (nonatomic, readonly) BOOL            widgetNeedsFocus;
@property (nonatomic, readonly) BOOL widgetFocusState;
@property (nonatomic, assign) BOOL shouldAnimate;


- (id) initWithScrollType: (ScrollingType) aScrollingtype;
- (id) initWithScrollType: (ScrollingType) aScrollingtype shouldAnimate: (BOOL) aShouldAnimate;
- (id) initWithScrollType: (ScrollingType) aScrollingType widget:(WidgetModel*) aWidgetModel needsFocus:(BOOL) needsFocus;
- (id) initWithScrollType: (ScrollingType) aScrollingType widget:(WidgetModel*) aWidgetModel needsFocus:(BOOL) aNeedsFocus  focusState:(BOOL) aFocusState;
- (id) initWithScrollType: (ScrollingType) aScrollingType widget:(WidgetModel*) aWidgetModel needsFocus:(BOOL) aNeedsFocus shouldAnimate: (BOOL) aShouldAnimate;

@end
