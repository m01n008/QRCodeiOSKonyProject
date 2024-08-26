//
//  FlexContainerModel.h
//  VM
//
//  Created by Rajeeva's on 07/06/14.
//
//

#import "BoxModel.h"
#import "UserProtocol.h"

@interface FlexContainerModel : BoxModel

@property (nonatomic) FlexLayoutDisplayUnit layoutUnitType;
@property (nonatomic) BOOL clipBounds;
@property (nonatomic) BOOL isModalContainer;
@property (nonatomic,retain) CallBack *captureStart;
@property (nonatomic,retain) CallBack *captureMoving;
@property (nonatomic,retain) CallBack *captureEnd;
@property (nonatomic, retain) CallBack *onDestroy;
//don't change attribute type to retain for containerUW, it should hold a weak reference of UserModel..
@property (nonatomic, assign) id<UserProtocol> containerUW;
//this property will be set and used by konymvc_sdk framework to differentiate between different instances of flex when used as templates..
@property (nonatomic, retain) NSString *_konyControllerName;
@property (nonatomic, retain) NSString *_appName;
/*
 appName is application name of the particular flex created. This value will be filled for templates & components root flexContiner. This property is used in MVC SDK file.
 */
@property (nonatomic, retain) NSString *appName;

/* Adding a new property called uniqueFlexId in flexContainerModel - which is a combination of "appName/widgetID" and referring to uniqueFlexId instead of widgetID for segmentRowTemplate
  MADPIOS-4813 : As part of microapps, now the rowtemplate being sent as appName/widgetID. Made changes accordingly.
 */
@property (nonatomic, retain) NSString *uniqueFlexId;

//to get to know, for which widget(Map widget or seg widget) this flex is being used as a template in MVC forms..
@property (nonatomic, assign) id templateConsumer;
@property (nonatomic, readonly) BOOL retainFlowHorizontalAlignment;
@property (nonatomic, readwrite) BOOL isFlowHorizontalAlignmentMirrored;
@property (nonatomic, retain) NSDictionary *controller;
- (void)tryInitializeFlex;
- (void)destroy;
/**
@brief This method returns the widget from the UserModel.

@discussion This method should be called at native level only, not exposed to JS. This will be called on segmentRowTemplate to get the child of UserWidget. It will retrieve the widget which was provided in the dataMap of a segment.
 widgetDataMap = {
     "BasicWidget.Btn1": "Btn",
     "BasicWidget.Lb1": "Lb",
     "BasicWidget.Rt1": "Rt"
 };
Note: getWidgetWithId in ContainerModel, will only return the widget which is accesible from javascript based on Master/Userwidget rules. In Segment for validating and applying data on widget, we required to access the widget in userwidget without worrying about access rule. This is implemented as part of component inside Segment support.
@param  widgetID widgetID

@return returns WidgetModel
*/
- (WidgetModel *) getWidgetFromUW:(NSString *) widgetID;

/**
@brief This method returns the UserModel associated with flex.

@discussion This method should be called at native level only, not exposed to JS. It traverse till the top flex container(ismaster = true) and returns the containerUW associated with this flex which holds the usermodel.
 
@return returns UserModel
*/
- (id) getFlexAssociatedUserWidget;

@end
