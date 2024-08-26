//
//  FlexLayoutEngineImpl.h
//  VM
//
//  Created by Sunil Phani Manne on 29/06/14.
//
//

#import <Foundation/Foundation.h>

#import "FlexLayoutUtil.h"

/*!
 enum for tracking the Flex Layout width/height calculation status
 */
typedef NS_ENUM(NSUInteger, FlexLayoutSizeCalculationStatus) {
    FlexLayoutSizeCalculationStatusNotCompletedYet = 0,
    FlexLayoutSizeCalculationStatusWidthCompleted = 1 << 0,
    FlexLayoutSizeCalculationStatusHeightCompleted = 1 << 1,
};
typedef CGFloat (^ComputeDimesionalValueBlock)(FlexLayoutDimensionalValueType);
typedef void (^SubwidgetFrameComputedBlock)(id <FlexLayoutInfoProtocol>subwidget, CGRect subwidgetFrame,FlexLayoutSizeCalculationStatus *status, BOOL setFrameToView);
typedef void (^SubwidgetLayoutDoneBlock)(id <FlexLayoutInfoProtocol>subwidget, CGRect subwidgetFrame, BOOL shouldCallDoLayout);
typedef void (^HeightCannotDeterminedBlock)(CGSize fallbackSize);
typedef void (^LayoutDoneForAllSubwidgetsBlock)();

@protocol FlexLayoutInfoProtocol;
@class FlexLayoutEngineImpl;

typedef CGFloat (^ComputeImplicitDimensionalValueBlock)(FlexLayoutDimensionalValueType valueType,
                                                        id <FlexLayoutInfoProtocol>layoutModel,
                                                        CGRect parentFrame,
                                                        FlexLayoutSizeCalculationStatus *status);

//Macros for tracking the FlexLayoutSizeCalculationStatus
#define isWidthCalculationStatusCompleted(status) (status & (FlexLayoutSizeCalculationStatusWidthCompleted))
#define isHeightCalculationStatusCompleted(status) (status & (FlexLayoutSizeCalculationStatusHeightCompleted))

#define isWidthCalculationStatusDeferred(status) !isWidthCalculationStatusCompleted(status)
#define isHeightCalculationStatusDeferred(status) !isHeightCalculationStatusCompleted(status)

//Macros to set a particular bit
#define setWidthCalculationStatusAsCompleted(status) status |= FlexLayoutSizeCalculationStatusWidthCompleted
#define setHeightCalculationStatusAsCompleted(status) status |= FlexLayoutSizeCalculationStatusHeightCompleted

//Macros to reset a particular bit
#define setWidthCalculationStatusAsDeferred(status) status &= ~FlexLayoutSizeCalculationStatusWidthCompleted
#define setHeightCalculationStatusAsDeferred(status) status &= ~FlexLayoutSizeCalculationStatusHeightCompleted

/*!
 The Abstract base class for the Flex Layout Implementation. The child classes inheriting from this base class SHOULD override the <code>determineFrameFromWidgetModel:::</code>.
 */
@interface FlexLayoutEngineImpl : NSObject

/*!
 @brief Performs the Flex Layout specific to the Implementation.
 
 @param The FlexLayoutContainer on which the layout of the subwidgets has to be performed.
 @param Array of the subwidgets on which the layout has to be performed.
 @return Returns the size encapsulating all the frames of the subwidgets.
 */
+ (CGSize)performFlexLayoutForContainer:(id <FlexLayoutInfoProtocol>)container
                       withSubwidgets:(NSArray *)subwidgets;

+ (CGSize)performFlexLayoutForContainer:(id <FlexLayoutInfoProtocol>)container
                         withSubwidgets:(NSArray *)subwidgets
                            forAutogrow:(BOOL)autogrow
       isSetFrameAndCallDoLayoutEnabled:(BOOL)shouldSetFrameAndCallDoLayout;

/*!
 @brief Performs the Transient Flex Layout specific to the Implementation. In a transient layout, the subwidget's view frames are not set, they are only updated in the model. The doLayout callbacks are also not invoked.
 
 @param The FlexLayoutContainer on which the layout of the subwidgets has to be performed.
 @param Array of the subwidgets on which the layout has to be performed.
 @return Returns an array of frames (NSValues) to be set to corresponding subwidgets.
 */
+ (NSArray *)performTransientFlexLayoutForContainer:(id <FlexLayoutInfoProtocol>)container
                                     withSubwidgets:(NSArray *)subwidgets;

+ (NSArray *)performTransientFlexLayoutForContainer:(id <FlexLayoutInfoProtocol>)container
                                     withSubwidgets:(NSArray *)subwidgets
                                        forAutogrow:(BOOL)autogrow;

/*!
 @brief Performs the Realtime Transient Flex Layout specific to the Implementation. In a Realtime transient layout, the subwidget's view frames are not set, they are not updated in the model. However, the doLayout callbacks are invoked and if there are any changes done as a part of the doLayout callbacks are taken in real time.
 
 @param The FlexLayoutContainer on which the layout of the subwidgets has to be performed.
 @param Array of the subwidgets on which the layout has to be performed.
 @return Returns an array of frames (NSValues) to be set to corresponding subwidgets.
 */
+ (NSArray *)performRealTimeTransientFlexLayoutForContainer:(id <FlexLayoutInfoProtocol>)container
                                          withSubwidgets:(NSArray *)subwidgets;

+ (NSArray *)performRealTimeTransientFlexLayoutForContainer:(id <FlexLayoutInfoProtocol>)container
                                             withSubwidgets:(NSArray *)subwidgets
                                                forAutogrow:(BOOL)autogrow;

/*!
 @brief Determine the frame for a given widget model and its previous widget model placed inside a container with the specified frame. This is an abstract method. The child classes inheriting from <code>FlexLayoutEngineImpl</code> should override this method.
 
 @param The Layout Model of the widget which conforms to the <code>FlexLayoutInfoProtocol</code>.
 @param The Layout Model of the previous widget which also conforms to the <code>FlexLayoutInfoProtocol</code>.
 @param The frame of the parent.
 @param The current Size Calculation Status.
 
 @return The computed frame of the widget.
 */
+ (CGRect)determineFrameFromWidgetModel:(id <FlexLayoutInfoProtocol>)layoutModel
                 andPreviousWidgetModel:(id <FlexLayoutInfoProtocol>)previousWidgetLayoutModel
                  insideParentWithFrame:(CGRect)parentFrame
                  sizeCalculationStatus:(FlexLayoutSizeCalculationStatus *)sizeCalculationStatus
        isReverseLayoutDirectionEnabled:(BOOL)shouldReverseLayout
                      parentContentSize:(CGRect)parentContentSize;

+ (CGRect)determineFrameFromWidgetModel:(id <FlexLayoutInfoProtocol>)layoutModel
                 andPreviousWidgetModel:(id <FlexLayoutInfoProtocol>)previousWidgetLayoutModel
                  insideParentWithFrame:(CGRect)parentFrame
                  sizeCalculationStatus:(FlexLayoutSizeCalculationStatus *)sizeCalculationStatus
        isReverseLayoutDirectionEnabled:(BOOL)shouldReverseLayout
                              maxHeight:(CGFloat)maxHeight;
+ (CGSize)determineSizeForLayoutModel:(id <FlexLayoutInfoProtocol>)layoutModel
                      withParentFrame:(CGRect)parentFrame
                      andUpdateStatus:(FlexLayoutSizeCalculationStatus *)status;

+ (CGFloat)determineAxisValue:(FlexLayoutAxisValueType)axisValueType
                  layoutModel:(id <FlexLayoutInfoProtocol>)layoutModel
                   widgetSize:(CGSize)widgetSize
                  parentFrame:(CGRect)parentFrame
                    andStatus:(FlexLayoutSizeCalculationStatus)status;

+ (CGFloat)computeAxisValueFromCenterForType:(FlexLayoutAxisValueType)axisValueType
                                 centerValue:(float)centerValue
                                 layoutModel:(id <FlexLayoutInfoProtocol>)layoutModel
                                  widgetSize:(CGSize)widgetSize
                                 parentFrame:(CGRect)parentFrame
                                   andStatus:(FlexLayoutSizeCalculationStatus)status;

+ (ComputeImplicitDimensionalValueBlock)implicitDimensionalValueBlock;

@end
