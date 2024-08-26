//
//  FlexLayoutDirectionalFlowEngineImpl.h
//  VM
//
//  Created by Sunil Phani Manne on 09/07/14.
//
//

#import "FlexLayoutEngineImpl.h"

@interface FlexLayoutDirectionalFlowEngineImpl : FlexLayoutEngineImpl

+ (float)determineAxisValueFromWidgetModel:(id <FlexLayoutInfoProtocol>)layoutModel
                                    ofType:(FlexLayoutAxisValueType)axisValueType
                                widgetSize:(CGSize)computedWidgetSize
                    andPreviousWidgetModel:(id <FlexLayoutInfoProtocol>)previousWidgetLayoutModel
                     insideParentWithFrame:(CGRect)parentFrame
           isReverseLayoutDirectionEnabled:(BOOL)shouldReverseLayout;


+ (float)offsetFromWidget:(id <FlexLayoutInfoProtocol>)widget forAxisValueType:(FlexLayoutAxisValueType)axisValueType;

+ (float)determineXFromWidgetModel:(id <FlexLayoutInfoProtocol>)layoutModel
            andPreviousWidgetModel:(id <FlexLayoutInfoProtocol>)previousWidgetLayoutModel
                        widgetsize:(CGSize)widgetSize
             insideParentWithFrame:(CGRect)parentFrame
   isReverseLayoutDirectionEnabled:(BOOL)shouldReverseLayout;


+ (float)determineYFromWidgetModel:(id <FlexLayoutInfoProtocol>)layoutModel
            andPreviousWidgetModel:(id <FlexLayoutInfoProtocol>)previousWidgetLayoutModel
                        widgetsize:(CGSize)widgetSize
             insideParentWithFrame:(CGRect)parentFrame
   isReverseLayoutDirectionEnabled:(BOOL)shouldReverseLayout;

+ (float)determineFlowAxisValue:(FlexLayoutAxisValueType)axisValueType
                    layoutModel:(id <FlexLayoutInfoProtocol>)layoutModel
                     widgetSize:(CGSize)widgetSize
                    parentFrame:(CGRect)parentFrame
                      andStatus:(FlexLayoutSizeCalculationStatus)status;

@end
