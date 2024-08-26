//
//  KonyMacros1.h
//  VM
//
//  Created by KH206 on 23/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#define IOS5  50000
#define IOS6  60000
#define IOS7  70000
#define IOS12 120000

#define APILEVEL_9_0 9000
#define APILEVEL_8_4 8400
#define APILEVEL_8_3 8300
#define APILEVEL_8_0 8000
#define APILEVEL_7_3 7300
#define APILEVEL_7_1 7100
#define APILEVEL_7_0 7000
#define APILEVEL_6_5 6500
#define APILEVEL_6_0 6000
#define APILEVEL_5_6 5600
#define DEFAULTAPILEVEL APILEVEL_5_6

#define ROUND_CORNER_RADIUS_VALUE 10.0

#define DEFAULT_SEPERATOR @","

#define isKeyValid(key) ((key != nil) ? YES : NO)

#define CONVERT_BOOL @"convertBoolToNum"

#define RGB_TO_UICOLOR(c)	[ UIColor colorWithRed:((c>>24)&0xFF)/255.0 \
                            green:((c>>16)&0xFF)/255.0 \
                            blue:((c >>8)&0xFF)/255.0 \
                            alpha: (1.0 - ((c)&0xFF)/100.0) ];

#define RGBA_TO_UICOLOR(c)	[ UIColor colorWithRed:((c>>24)&0xFF)/255.0 \
                            green:((c>>16)&0xFF)/255.0 \
                            blue:((c >>8)&0xFF)/255.0 \
                            alpha: (((c)&0xFF)/255.0) ];

#define GENERIC_ERROR       @"Error"
#define DATA_STORE_ERROR    @"DataStoreError"
#define NETWORK_ERROR_KONY  @"NetworkError"
#define WORKER_THREAD_ERROR @"WorkerThreadError"
#define PERMISSION_ERROR @"PermissionError"
#define PERMISSION_ERROR_MSG @"Permission Denied"
#define NETWORK_DATA    @"data"
#define NETWORK_ERROR   @"error"
#define INVALID_USAGE   @"Invalid Usage Error"

#define APP_IDENTIFIER @"appIdentifier"
#define POSITION @"position"
#define PARENT_APP_IDENTIFIER @"PARENT_APP_IDENTIFIER"

#define EVENT_STATE @"state"
#define EVENT_ERROR @"error"


#define DEBUG_ENABLE_OBJECT_PROFILING   0
#define DEBUG_DETAILED_OBJECT_PROFILING 0

#define TITLEBAR_BACKGROUNDVIEW_TAG 10028

#define IPHONE_NAVBAR_PORTRAIT      CGSizeMake(320., 44.)
#define IPHONE_NAVBAR_LANDSCAPE     CGSizeMake(480., 32.)
#define IPAD_NAVBAR_PORTRAIT        CGSizeMake(768., 44.)
#define IPAD_NAVBAR_LANDSCAPE       CGSizeMake(1024., 44.)
#define IPHONE_5_NAVBAR_LANDSCAPE   CGSizeMake(568.0,32.0)

#define CAMERA_OVERLAY_VIEW_TAG                 78787
#define CAMERA_OVERL_CURRENT_ORIENTATION        @"currentOrientation"
#define CAMERA_OVERLAY_PORTRAIT                 @"Portrait"
#define CAMERA_OVERLAY_LANDSCAPE                @"Landscape"
#define CAMERA_OVERLAY_ORIENTATION_SUPPORTED    @"overlayOrientationMode"
#define CAMERA_OVERLAY_FORM_CONTAINER           @"overlayFormContainer"

// Added Constant for Ticket 9686, When we do calculation of MAXFLOAT then it becomes infinite and in calculateoffset
// inf -inf is causing result as nan and app is crashing then.
#define MAXWIDTH 50000

//Layout Constraints
#define LAYOUT_CONSTRAINTS_INSETS @"layoutConstraintInsets"
#define LAYOUT_CONSTRAINTS_HEIGHT_PERCENT_DEVICE_HEIGHT_BASED @"layoutConstraintHeightPercentBasedOnDeviceHeight"
#define LAYOUT_CONSTRAINT_SCROLL_DIRECTION @"layoutConstraintScrollDirection"


#define ROUTE_SEARCH_INVALID_REQUEST 1500
#define ROUTE_SEARCH_PLACE_NOT_FOUND 1501
#define ROUTE_SEARCH_LIMIT_EXCEEDED 1502
#define ROUTE_SEARCH_NETWORK_FAILURE 1503
#define ROUTE_SEARCH_UNKNOWN_ERROR 1504

#define INVALID_NUMBER_OF_ARGUMENTS 101
#define FILE_NOT_FOUND 100
#define UNEXPECTED_ERROR 106

#define WEB_SQL_DIR @"WEBSQLDIRECTORY"
#define FILES_DIR   @"FILES"

#define DYNAMIC_TYPE_LIST @"dynamicTypeList"
#define ENABLE_CHANGE_TEXT_SIZE_FROM_ACCESSBILIY @"enableChangeTextSizeFromAccessibility"
#define FONT_TEXT_STYLE @"fontTextStyle"


//info.plist key value is "FriendlyWidgetMode". (int value)
//FriendlyWidgetID is default value is YES (Enabled) and NO(Disabled)
#define FRIENDLY_WIDGETID_MODE [[[[KonyModuleContext sharedContext] moduleInfoDictionary] objectForKey:@"FriendlyWidgetIDMode"] boolValue]

//Use the link https://www.ios-resolution.com/ to update the areas in future
#define IPHONE_X_AREA  (375*812) //IPHONE_X_AREA = IPHONE_X_WIDTH *IPHONE_X_HEIGHT(==IPHONEXS)
#define IPHONE_XR_AREA (414*896) //IPHONE_XR_AREA = IPHONE_XR_WIDTH *IPHONE_XR_HEIGHT(==IPHONEXSMAX)
#define IPHONE_12_AREA (390*844) //IPHONE_12_AREA = IPHONE_12_WIDTH * IPHONE_12_HEIGHT (== IPHONE12PRO, == IPHONE13, == IPHONE13PRO==IPHONE14)
#define IPHONE_12MINI_AREA (375*812) //IPHONE_12MINI_AREA = IPHONE_12MINI_WIDTH * IPHONE_12MINI_HEIGHT (== IPHONE13MINI)
#define IPHONE_12PROMAX_AREA (428*926) //IPHONE_12PROMAX_AREA = IPHONE_12PROMAX_WIDTH * IPHONE_12PROMAX_HEIGHT (== IPHONE13PROMAX==IPHONE14PLUS)
#define IPHONE_14PRO_AREA (393*852) //IPHONE_14PRO_AREA = IPHONE_14PRO_WIDTH * IPHONE_14PRO_HEIGHT
#define IPHONE_14_PROMAX_AREA (430*932) // //IPHONE_14PROMAX_AREA = IPHONE_14PROMAX_WIDTH * IPHONE_14PROMAX_HEIGHT
#define IPHONE_15PRO_AREA (393*852) //IPHONE_15PRO_AREA = IPHONE_15PRO_WIDTH * IPHONE_15PRO_HEIGHT
#define IPHONE_15_PROMAX_AREA (430*932) // //IPHONE_15PROMAX_AREA = IPHONE_15PROMAX_WIDTH * IPHONE_15PROMAX_HEIGHT
#define IPHONE_15_AREA (393*852) //IPHONE_15_AREA = IPHONE_15_WIDTH * IPHONE_15_HEIGHT
#define IPHONE_15_PLUS_AREA (430*932) // //IPHONE_15_PLUS_AREA = IPHONE_15_PLUS_WIDTH * IPHONE_15_PLUS_HEIGHT

#define CORECOMPONENT_PATH @"Frameworks/CoreComponent.framework"
#define KONYJS_FRAMEWORK_PATH [[KonyModuleContext sharedContext] modulePath]
#define KONYJS_RESOURCES_PATH [[[ApplicationContextManager sharedApplicationContextManager] getCurrentApplicationContext] resourcesLocation]
#define PF_RESOURCES @"PFResources"
#define CORECOMPONENT_PFRESOURCES_PATH [[[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:CORECOMPONENT_PATH] stringByAppendingPathComponent:PF_RESOURCES]
#define CALENDAR_PFRESOURCES_PATH [[[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"Frameworks/Calendar.framework"] stringByAppendingPathComponent:PF_RESOURCES]
#define CAMERA_PFRESOURCES_PATH [[[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"Frameworks/Camera.framework"] stringByAppendingPathComponent:PF_RESOURCES]
#define SLIDER_PFRESOURCES_PATH [[[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"Frameworks/Slider.framework"] stringByAppendingPathComponent:PF_RESOURCES]

#define APPLICATION_JAILBREAK_MESSAGE       @"This device does not meet the minimum security requirements for this application. Please contact the app publisher for more details. The application will exit when you press OK."

#define LIBRARY_JAILBREAK_MESSAGE @"This device does not meet the minimum security requirements for this library.Please contact the library publisher for more details"

#define ENTITY_ID @"id"
#define ENTITY_SOURCE @"name"
#define ENTITY_MODEL_CONFIG @"modelConfig"
#define ENTITY_CALLBACK @"callback"
#define ENTITY_POSITION @"position"
#define ENTITY_SCALE @"scale"

#define ENTITY_CALLBACK_STATUS @"status"
#define ENTITY_CALLBACK_MESSAGE @"message"

#define ANCHOR_TYPE @"anchorType"

#define FILE_EXTENSION_USDZ @"usdz"

#define CALLBACK_DETECTED @"detectedCallback"
#define CALLBACK_UNDETECTED @"undetectedCallback"
#define FRIDASERVER_QUICKSCAN @"fridaquickscan"
#define DYNAMIC_INSTRUMENTATION_DETECTION_TYPE @"type"

#define EMPTY_STRING @""
#define CUSTOM_SEG_PROPERTY @"customPropertyInSegment"
