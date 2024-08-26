//
//  FlexLayoutInfoProtocol.h
//  VM
//
//  Created by Sunil Phani Manne on 26/06/14.
//
//

#import <Foundation/Foundation.h>

#import "FlexLayoutModelProperty.h"
#import "FlexLayoutMetaInfoProtocol.h"

/*!
 enum indicating the types of the Container
 */
typedef NS_ENUM(NSUInteger, FlexLayoutContainerType) {
    FlexLayoutContainerTypeNotFlexContainer,
    FlexLayoutContainerTypeDirectFlexContainer,
    FlexLayoutContainerTypeIndirectFlexContainer
};

@protocol FlexLayoutInfoProtocol <FlexLayoutMetaInfoProtocol>

#pragma mark - Properties
//Properties invoked by the Flex Layout Engine

@property (nonatomic, readonly) FlexLayoutModelProperty *leftValue;
@property (nonatomic, readonly) FlexLayoutModelProperty *centerXValue;
@property (nonatomic, readonly) FlexLayoutModelProperty *rightValue;

@property (nonatomic, readonly) FlexLayoutModelProperty *topValue;
@property (nonatomic, readonly) FlexLayoutModelProperty *centerYValue;
@property (nonatomic, readonly) FlexLayoutModelProperty *bottomValue;

@property (nonatomic, readonly) FlexLayoutModelProperty *widthValue;
@property (nonatomic, readonly) FlexLayoutModelProperty *heightValue;

@property (nonatomic, readonly) FlexLayoutModelProperty *minWidthValue;
@property (nonatomic, readonly) FlexLayoutModelProperty *maxWidthValue;
@property (nonatomic, readonly) FlexLayoutModelProperty *minHeightValue;
@property (nonatomic, readonly) FlexLayoutModelProperty *maxHeightValue;
//In case of flow horizontal right align and flow vertical bottom align view is set twice. To make happen once declared this variable.
@property (nonatomic, readwrite) BOOL                     reverseLayoutDirection;

@property (nonatomic, strong) NSDictionary *responsiveConfig;

@property (nonatomic, readonly) FlexLayoutModelProperty *gutterXValue;
@property (nonatomic, readonly) FlexLayoutModelProperty *gutterYValue;

//Represents the Visibility of the widget
@property (nonatomic, assign) BOOL visible;

/*! Returns the frame which is independent of the transform and the anchorPoint. Essentially this is more like bounds rather than frame. This is the one which is returned by the LayoutEngine, note that the LayoutEngine is unaware of the transforms and anchorPoint properties on a widget. */
@property (nonatomic, readonly) NSDictionary *frame;

/*! Returns the composite frame which contains the transform and anchorPoint applied. */
@property (nonatomic, readonly) NSDictionary *compositeFrame;

@property (nonatomic, assign) FlexLayoutDisplayUnit defaultUnit;
@property (nonatomic, assign) FlexLayoutType layoutType;

//Autogrow mode property
@property (nonatomic, assign) FlexLayoutAutogrowMode autogrowMode;

@property (nonatomic, readonly) NSArray *children;

@property (nonatomic, assign) FlexLayoutContainerType containerType;

#pragma mark - Callbacks
//Callbacks invoked by the Flex Layout Engine

/*!
 @brief This callback is invoked by the Flex Layout Engine for getting the preferred size of the widget for this layout model.
 @param The constrained size set by the Flex Layout Engine to the widget to be considered while computing the preferred size.
 @return The preferred size returned by the widget.
 */
- (CGSize)getPreferredSizeForGivenSize:(CGSize)givenSize;


/*!
 @brief This callback is invoked by the Flex Layout Engine when the frame is ready to be set to the widget.
 @param The frame computed by the Flex Layout Engine to be set to the widget.
 */
- (void)setWidgetFrame:(CGRect)frame andShouldSetFrameToView:(BOOL)setFrameToView;


/*!
 @brief This callback is invoked by the Flex Layout Engine when the frame is to be stored in the object conforming to the FlexLayoutInfoProtocol.
 @param The frame computed by the Flex Layout Engine.
 */
- (void)storeFrame:(CGRect)frame;

/*!
 @brief This callback is invoked by the Flex Layout Engine when the engine has finished with the layout of this widget i.e, after setting the computed frame on the widget.
 */
- (void)widgetDidLayout;

/*!
 @brief This callback is invoked by the Flex Layout Engine when the engine wants to know if a widget is a greedy widget. Widgets like SegmentedUI, Checkboxgroup etc are Greedy Widgets.
 */
- (BOOL)isGreedyWidget;

/*!
 @brief This callback is invoked by the Flex Layout Engine when the engine wants to know if a widget should respect autogrow property. Currently only Segmented UI Tableview widget respects autogrow property.
 */
- (BOOL) isAutogrowSupportedForWidgetViewType;

/*!
 @brief This callback is invoked by the Flex Layout Engine when the engine wants a widget to autogrow. Currently only Segmented UI Tableview widget can autogrow.
 */
- (void) setShouldAutogrow:(BOOL) shouldAutogrow;

@end
