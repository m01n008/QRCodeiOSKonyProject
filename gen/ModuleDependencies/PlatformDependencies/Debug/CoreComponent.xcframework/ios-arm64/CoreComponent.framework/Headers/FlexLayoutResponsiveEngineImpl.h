//
//  FlexLayoutResponsiveEngineImpl.h
//  CoreComponent
//
//  Created by Sneha Kolukuluri on 22/04/20.
//  Copyright © 2020 Sneha Kolukuluri. All rights reserved.
//



#import "FlexLayoutEngineImpl.h"
#import "FlexLayoutDirectionalFlowEngineImpl.h"
#import "FlexLayoutUtil.h"

@interface FlexLayoutResponsiveEngineImpl : FlexLayoutDirectionalFlowEngineImpl


/** @method determineFrameFromWidgetModel
 *  @brief Overriden method of flexlayoutengine impl. Calculates frame for each childwidget inside the parent container using responsive layout rules.
 *  @param  layoutModel - child widget Layout Model
 *  @param  parentFrame - parent container calculated frame(CGRECT)
 *  @param  sizeCalculationStatus - sizeCalculationStatus
 *  @param  shouldReverseLayout - RTL check to reverse the direction children alignment. In this case each child inside a row is aligned from right to left. Order of children gets reversed for each row, not the whole children order.
 *  @param  parentContentSize - Content size of parent widget. Required in case of rtl and scroll container to perform layout from right.
 *  @param  topVal - Initial y value to be set for each child widget. In case of responsive layout, when child widgets gets layout each row is filled till width, once the next child x value crosses the parent width, it has to be layed out from next row start, so topValue will be incremented to( highest hight value + Y position )of previous row.
 *  @param  maxHeight - Variable maintained to get maxHeight for the current row to update top value.
 *  @param  prevOffSet - Variable maintained to get position of previous (x + width) for next widget x value calculation.
 *  @returns Frame of given layout model.
 **/
+ (CGRect)determineFrameFromWidgetModel:(id <FlexLayoutInfoProtocol>)layoutModel
                  insideParentWithFrame:(CGRect)parentFrame
                  sizeCalculationStatus:(FlexLayoutSizeCalculationStatus *)sizeCalculationStatus
        isReverseLayoutDirectionEnabled:(BOOL)shouldReverseLayout
                      parentContentSize:(CGRect)parentContentSize
                              topVal:(float)topVal
                              maxHeight:(float)maxHeight
                             prevOffSet:(float)prev;

@end
