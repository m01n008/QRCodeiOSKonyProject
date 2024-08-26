//
//  KonyWrapperDS.h
//  VM
/*
		Note:- Few macro's decides the functionality of the widget.
				The better idea would be , creating widget specific structures and pupulating them from XML file.
				Sample code is available in KonySplash
 
 */
//  Created by Aravind Perumal on 7/10/08.
//  Copyright 2008 Konylabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIColor.h>
#import "UIKit/UIInterface.h"

//#import "lglobals.h"

#import "util.h"
#import "KonyDS.h"
#import "KonyUtil.h"
#import <PLSqlite/PLSqliteDatabase.h>
#import "UserInterfaceManager.h"
#import "LuaBoolean.h"
#import "KonyI18n.h"
#import "VMAppDelegate.h"

/* Max height of any wheelable widget */
#ifndef MAX_WHEELWIDGET_HEIGHT
	#define	MAX_WHEELWIDGET_HEIGHT	120	
#endif

extern NSString * const apiError;
extern const char *invalidArg;

@class VMAppDelegate;
@class KonySplash;

@class LuaTable;
@class KonyCustomNavigationController;
@class WatchLocationManger;
@class KonyDebugTrace;
@class KonyRegionLocation;

#define apiError  @"API Error"

#define PASTEBOARD_PERSISTENT @"persistent pasteboard"
#define PASTEBOARD_NONPERSISTENT @"non persistent pasteboard"

typedef enum {
	Securedata_genericpassword,
	Securedata_key
} keychainItemType; 

#define ITEM_TYPE @"type_secure_item"
#define ITEM_IDENTIFIER @"item_identifier"
#define ITEM_SENSITIVEDATA @"sensitive_data"

/** iPhone/ ipod /iPad device modals */
#define DEVICEMODEL_IPHONE				@"iPhone"
#define DEVICEMODEL_IPHONE_3G			@"3G iPhone"
#define DEVICEMODEL_IPHONE_3GS			@"3GS iPhone"
#define	DEVICEMODEL_IPHONE_4G			@"4G iPhone"
#define DEVICEMODEL_IPHONE_4GS          @"4GS iPhone"
#define DEVICEMODEL_IPHONE_5G           @"5G iPhone"
#define	DEVICEMODEL_IPHONE_5C           @"iPhone 5C"
#define	DEVICEMODEL_IPHONE_5S           @"iPhone 5S"
#define	DEVICEMODEL_IPHONE_6_PLUS       @"iPhone 6 Plus"
#define	DEVICEMODEL_IPHONE_6            @"iPhone 6"
#define DEVICEMODEL_IPHONE_6S_PLUS      @"iPhone 6S Plus"
#define DEVICEMODEL_IPHONE_6S           @"iPhone 6S"
#define DEVICEMODEL_IPHONE_SE           @"iPhone SE"
#define DEVICEMODEL_IPHONE_SE_2         @"2nd Gen iPhone SE"
#define DEVICEMODEL_IPHONE_SE_3         @"3rd Gen iPhone SE"
#define DEVICEMODEL_IPHONE_7            @"iPhone 7"
#define DEVICEMODEL_IPHONE_7_PLUS       @"iPhone 7 Plus"
#define DEVICEMODEL_IPHONE_8            @"iPhone 8"
#define DEVICEMODEL_IPHONE_8_PLUS       @"iPhone 8 Plus"
#define DEVICEMODEL_IPHONE_X            @"iPhone X"
#define DEVICEMODEL_IPHONE_XR           @"iPhone XR"
#define DEVICEMODEL_IPHONE_XS           @"iPhone XS"
#define DEVICEMODEL_IPHONE_XS_MAX       @"iPhone XS Max"
#define DEVICEMODEL_IPHONE_11           @"iPhone 11"
#define DEVICEMODEL_IPHONE_11_PRO       @"iPhone 11 Pro"
#define DEVICEMODEL_IPHONE_11_PRO_MAX   @"iPhone 11 Pro Max"
#define DEVICEMODEL_IPHONE_12_MINI      @"iPhone 12 Mini"
#define DEVICEMODEL_IPHONE_12           @"iPhone 12"
#define DEVICEMODEL_IPHONE_12_PRO       @"iPhone 12 Pro"
#define DEVICEMODEL_IPHONE_12_PRO_MAX   @"iPhone 12 Pro Max"
#define DEVICEMODEL_IPHONE_13_MINI      @"iPhone 13 Mini"
#define DEVICEMODEL_IPHONE_13           @"iPhone 13"
#define DEVICEMODEL_IPHONE_13_PRO       @"iPhone 13 Pro"
#define DEVICEMODEL_IPHONE_13_PRO_MAX   @"iPhone 13 Pro Max"
#define DEVICEMODEL_IPHONE_14           @"iPhone 14"
#define DEVICEMODEL_IPHONE_14_PLUS      @"iPhone 14 Plus"
#define DEVICEMODEL_IPHONE_14_PRO       @"iPhone 14 Pro"
#define DEVICEMODEL_IPHONE_14_PRO_MAX   @"iPhone 14 Pro Max"
#define DEVICEMODEL_IPHONE_15           @"iPhone 15"
#define DEVICEMODEL_IPHONE_15_PLUS      @"iPhone 15 Plus"
#define DEVICEMODEL_IPHONE_15_PRO       @"iPhone 15 Pro"
#define DEVICEMODEL_IPHONE_15_PRO_MAX   @"iPhone 15 Pro Max"


#define	DEVICEMODEL_IPOD				@"1st Gen iPod"
#define	DEVICEMODEL_IPOD_2GEN			@"2nd Gen iPod"
#define	DEVICEMODEL_IPOD_3GEN			@"3rd Gen iPod"
#define	DEVICEMODEL_IPOD_4GEN			@"4th Gen iPod"
#define	DEVICEMODEL_IPOD_5GEN			@"5th Gen iPod"
#define	DEVICEMODEL_IPOD_6GEN			@"6th Gen iPod"
#define DEVICEMODEL_IPOD_7GEN           @"7th Gen iPod"
#define	DEVICEMODEL_IPHONE_SIMLUATOR	@"iPhone Simulator"
#define	DEVICEMODEL_IPAD_SIMLUATOR      @"iPad Simulator"
#define DEVICEMODEL_IPAD                @"iPad"
#define DEVICEMODEL_IPAD_2              @"iPad 2"
#define DEVICEMODEL_IPAD_3              @"iPad 3"
#define DEVICEMODEL_IPAD_4              @"iPad 4"
#define DEVICEMODEL_IPAD_5              @"iPad 5"
#define DEVICEMODEL_IPAD_6              @"iPad 6"
#define DEVICEMODEL_IPAD_7              @"iPad 7"
#define DEVICEMODEL_IPAD_8              @"iPad 8"
#define DEVICEMODEL_IPAD_9              @"iPad 9"
#define DEVICEMODEL_IPAD_MINI           @"iPad Mini"
#define DEVICEMODEL_IPAD_MINI_2         @"iPad Mini 2"
#define DEVICEMODEL_IPAD_MINI_3         @"iPad Mini 3"
#define DEVICEMODEL_IPAD_MINI_4         @"iPad Mini 4"
#define DEVICEMODEL_IPAD_MINI_5         @"iPad Mini 5"
#define DEVICEMODEL_IPAD_MINI_6         @"iPad Mini 6"
#define DEVICEMODEL_IPAD_AIR            @"iPad Air"
#define DEVICEMODEL_IPAD_AIR_2          @"iPad Air 2"
#define DEVICEMODEL_IPAD_AIR_3          @"iPad Air 3"
#define DEVICEMODEL_IPAD_AIR_4          @"iPad Air 4"
#define DEVICEMODEL_IPAD_PRO            @"iPad Pro"
#define DEVICEMODEL_IPAD_PRO_2          @"iPad Pro 2"
#define DEVICEMODEL_IPAD_PRO_3          @"iPad Pro 3"
#define DEVICEMODEL_IPAD_PRO_4          @"iPad Pro 4"
#define DEVICEMODEL_IPAD_PRO_5          @"iPad Pro 5"
#define DEVICEMODEL_IPAD_PRO_MINI       @"iPad Pro Mini"
#define DEVICEMODEL_IPAD_PRO_10_5_INCH  @"iPad Pro(10.5-inch)"
#define DEVICEMODEL_IPAD_PRO_11_INCH    @"1st Gen iPad Pro(11-inch)"
#define DEVICEMODEL_IPAD_PRO_11_INCH_2  @"2nd Gen iPad Pro(11-inch)"
#define DEVICEMODEL_IPAD_PRO_11_INCH_3  @"3rd Gen iPad Pro(11-inch)"
#define DEVICEMODEL_UNKNOWN				@"unknown"

//webSQL

typedef enum {UNKNOWN_ERR, DATABASE_ERR, VERSION_ERR, TOO_LARGE_ERR, QUOTA_ERR, SYNTAX_ERR, CONSTRAINT_ERR, TIMEOUT_ERR} DATABASEERROR;
#define INVALID_ERROR -1


#define IOS5 50000
#define IOS6 60000
#define IOS7 70000
#define IOS8 80000
#define IOS9 90000
#define IOS10 100000
#define IOS11 110000
#define IOS13 130000
#define IOS4_1  __IPHONE_4_1

#define ROUND_CORNER_RADIUS_VALUE 10.0

//Turn off before production i.e value should be 0
//#define DEBUGINFO 0 // Moved to application configuration build settings

#define NONE 0

/* weight */
#define NORMAL 1
#define BOLD 2
#define DEFAULT_FONT_WEIGHT NORMAL

/* style */
#define ITALIC 1
#define UNDERLINE 2
#define DEFAULT_FONT_STYLE NONE

/* size */
#define SMALL 1
#define MEDIUM 2
#define LARGE 3

#define DEFAULT_FONT_SIZE	100
#define MAX_WIDGET_ID_CHAR  64

//Kony default image file

#define DEFAULT_IMAGE_FILE_NAME  @"imagewhenfailed"
#define IMAGE_WHEN_DOWNLOADING   @"imagewhendownloading"
#define SCALE_MODE  @"scalemode"
#define KONYDEFAULT_IMAGE_FILE	 @"konyres_imgNA.jpg"
#define	DISPLAY_TEXT			 @"displayText"
#define CONTENT_ALIGNMENT		 @"contentAlignment"
#define SPACE_BETWEEN_IMAGES       @"spacebetweenimages"
#define ON_DOWNLOAD_COMPLETE_CALLBACK @"ondownloadcomplete"

//Textbox type
#define TEXTBOX_DEFAULT				1                         
#define TEXTBOX_KONYSKIN            2                         
#define TEXTBOX_WITHOUT_NORMALSKIN  3                         
#define TEXTBOX_WITHOUT_ONFOCUSSKIN 4   

// Std paddings for KonyLabel
#define KONY_DEF_LABEL_PADDING		3
#define KONY_DEF_TEXT_PADDING		3
#define KONY_DEF_BORDER_WIDTH		1
#define KONY_DEF_BORDER_COLOR		MAKE_RGBA(0,0,0,255)

#define MAXCOLORSIZE				16  
#define COLORBASE					16	
#define MAX_LISTBOX_CHOICES			6

//Accessibility related constants
#define ACCESSIBILITYCONFIG @"accessibilityConfig"
#define ACCESSIBILITYLABEL  @"a11yLabel"
#define ACCESSIBILITYVALUE  @"a11yValue"
#define ACCESSIBILITYHINT   @"a11yHint"
#define ACCESSIBILITYHIDDEN @"a11yHidden"
#define ACCESSIBILITYCHILDRENHIDDEN @"a11yChildrenHidden"
#define ACCESSIBILITYORDER  @"a11yNavigationMode"
#define ACCESSIBILITYINDEX  @"a11yIndex"
#define ACCESSIBILITYTRAITS  @"a11yAttributes"

#define EXTENDTOP           @"extendTop"
#define EXTENDBOTTOM        @"extendBottom"
#define STATUSBARSTYLE      @"statusBarStyle"
#define STATUSBARHIDDEN     @"prefersStatusBarHidden"

//Segment animation related constants
#define ANIMATION       @"animation"
#define CONFIG          @"config"
#define DEFINITION      @"definition"
#define CALLBACKS       @"callbacks"
#define WIDGETID        @"widgetID"
#define CONTEXT         @"context"
#define ROW_INDEX       @"rowIndex"
#define ITEM_INDEX      @"itemIndex"
#define SECTION_INDEX   @"sectionIndex"
#define CONTEXTARRAY    @"rows"
#define WIDGETARRAY     @"widgets"
#define VISIBLE         @"visible"
#define INVISIBLE       @"invisible"

//Segment Search related
#define CASE_SENSITIVE  @"caseSensitive"
#define SEARCH_TYPE     @"searchType"
#define SEARCHABLE_WIDGETS     @"searchableWidgets"
#define TEXT_TO_SERACH  @"textToSearch"
#define UPDATE_SEGMENT  @"updateSegment"
#define SHOW_SECTION_HEADER_FOOTER @"showHeaderFooter"

#define INDEX_PATH      @"indexPath"
#define ANIMATION_MODEL @"animationModel"
#define NATIVE_ROW_ANIM_TYPE   @"TableViewRowAnimation"

#define START_CALLBACK  @"startCallback"
#define END_CALBACK     @"endCallback"

//Segment Swipe related
#define MIN_THRESHOLD_IN_SWIPE 30

#define CANCELNWBAR_CANCEL_KEY					@"platform.cancelnetworkbar.cancelkey"
#define CANCELNWBAR_LOADINGMSG_KEY				@"platform.cancelnetworkbar.loadingmsgkey"
#define CANCELNWBAR_CANCEL_DEFAULT_VALUE		@"Cancel"
#define CANCELNWBAR_LOADINGMSG_DEFAULT_VALUE	@"Loading ... please standby"
#define STATUSBAR_HEIGHT                        20

//ShapeLayer related
#define SHAPE_ID                  @"shapeid"
#define SHAPE_TYPE                @"shapeType"
#define SHAPE_LINE_STYLE          @"lineStyle"
#define SHAPE_LINE_STYLE_CONFIG   @"lineStyleConfig"
#define SHAPE_THICKNESS           @"thickness"
#define SHAPE_STROKE_COLOR        @"strokeColor"
#define SHAPE_POINTS              @"points"

extern LuaBoolean *lTrue, *lFalse;
extern NSNull *lNil;

typedef enum
{
    OPERATION_TYPE_NONE,
    OPERATION_TYPE_ADDAT,
    OPERATION_TYPE_REMOVEAT,
    OPERATION_TYPE_SETDATAAT,
    OPERATION_TYPE_ADDALL,
    OPERATION_TYPE_SETDATA,
    OPERATION_TYPE_REMOVEALL,
    OPERATION_TYPE_ADDSECTIONAT,
    OPERATION_TYPE_SETSECTIONAT,
    OPERATION_TYPE_REMOVESECTIONAT
}OPERATION_TYPE;

#define REMOVAL_ACTIVITY_COMPLETED @"removalActivityCompleted"

//Contact API macros
#define MAX_KONY_CONTACT_FIELD 10
#define FIRSTNAME		@"firstname"
#define LASTNAME		@"lastname"
#define PHONENUMBER  	@"phone"
#define	POSTALADDRESS   @"postal"
#define EMAIL			@"email"
#define COMPANY         @"company"
#define JOBTITLE		@"jobtitle"
#define RAWBYTES        @"photorawbytes"
#define DISPLAYNAME     @"displayname"
#define RECORDID        @"id"
#define WEBSITE         @"website"
#define WEBSITE_TYPE    @"type"
#define WEBSITE_URL     @"url"
//Alert
typedef enum { ERROR, INFO, CONFIRMATION, CUSTOM } ALERTTYPE;

//Image
typedef enum { JUNK, LOCAL, URL, RAW, BASE64, KONYIMAGE,IMAGEASSET, LOCALKONYIMAGEOBJECT} IMAGESOURCE;

//Location API
#define LATITUDE			0
#define LONGITUDE			1

@interface ArrayTable : NSObject
    @property (nonatomic) uint32 arraySize;
    @property (nonatomic) void* arrayData;
@end

typedef enum COLUMNTYPE_ {
				COLUMN_IMAGE_TYPE	,
				COLUMN_TEXT_TYPE
		} COLUMNTYPE;

typedef enum { HORIZONTAL = 1, VERTICAL } ORIENTATION;

typedef enum { LEFT	= 1, CENTER, RIGHT } WIDGETDIRECTION;  

/*	1=top-left,2=top-center,3=top-right,
	4=middle-left,5=middle-center,6=middle-right,
	7=bottom-left,8=bottom-center,9=bottom-right
*/

typedef enum { TOP_LEFT = 1, TOP_CENTER, TOP_RIGHT, 
			   MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, 
			   BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
			 } WIDGETALIGN;

typedef enum { SQUARE, ROUND_CORNER, ROUND,CUSTOMROUND } BORDERSTYLE;	// border shape

typedef enum { PLAIN, VERTICAL_GRADIENT, SPLIT, IMG, MSGRADIENT} BGSTYLE;   // background look

typedef enum { STATUS_OK = 0, STATUS_ERROR = -1} STATUS;

typedef enum { ERROR_INSUFFICIENT_PERMS = 101, ERROR_NOTCONFIGURED = 102, ERROR_UNKNOWN = 103, ERROR_DATA_ERROR = 104 } ERROR_CODES;

typedef enum _skinType {
	NORMALSKIN,
	FOCUSSKIN,
    HIGHLIGHTEDSKIN
}skinType;

typedef enum NOTIFICATION_OCCURRED {
    NOTHING = 0,
    OFFLINE = 1,
    ONLINE  = 2
} notification_occurred;

@interface MainArg : NSObject

    @property (nonatomic) id kform;
    @property (nonatomic) UIWindow *window;
    @property (nonatomic )float	screenWidth;
    @property (nonatomic) VMAppDelegate* appDelegate;
    @property (nonatomic) KonySplash* konySplash;
    @property (nonatomic) NSCondition* konyCondition;
    @property (nonatomic) NSUInteger wakeupDear;
    @property (nonatomic) NSMutableArray* viewsToBeRemovedFromWidnow;
    @property (nonatomic) id konyAppMenu;
    @property (nonatomic) id konyApplication;
    @property (nonatomic) KonyCustomNavigationController*	appMenuNavCtrl;
    @property (nonatomic) id nextPrevToolBar;
    @property (nonatomic) id purgeLock;
    @property (nonatomic) BOOL isClosureInProgress;
    @property (nonatomic) BOOL isRotationInProgress;
    @property (nonatomic) BOOL isBlockingCall;
    @property (nonatomic) NSString* defaultLocale;
    @property (nonatomic) NSString*	currentLocale;
    @property (nonatomic) int currentOrientation;
    //I18n DB Cache
    @property (nonatomic) LuaTable* i18nDBCache;
    @property (nonatomic) LuaTable*	i18nFileCache;
    @property (nonatomic) BOOL isI18nEnabled;
    @property (nonatomic) BOOL isCurrentResourceBundlePresent;
    @property (nonatomic) BOOL isBundlePresentInDB;
    @property (nonatomic) KONYI18nStorage i18nStorageType;

    //KonyDB
    @property (nonatomic) PLSqliteDatabase* i18nDB;
    @property (nonatomic) NSUInteger operationsInProgress;

    //Alert
    @property (nonatomic) NSMutableArray* activeAlerts;

    @property (nonatomic) id asyncConnectionManager;
    @property (nonatomic) WatchLocationManger *watchLocationManager;
	@property (nonatomic) KonyRegionLocation *regionGeofenceManager;

    //Active Popups
    @property (nonatomic) NSMutableArray* activePopups;
    @property (nonatomic) notification_occurred remoteNotificationOccurred;
    @property (nonatomic) notification_occurred localNotificationOccurred;
    @property (nonatomic) NSDictionary* remoteNotificationUserInfo;
    @property (nonatomic) NSString *remoteNotificationActionIdentifier;
    @property (nonatomic) NSString *localNotificationActionIdentifier;
    @property (nonatomic) UserInterfaceManager *uiManager;
    //APM flags for app foreground and background transistion timestamp
    @property (nonatomic) NSDate *appEnterForegroundTimeStamp;
    @property (nonatomic) NSDate *appEnterBackgroundTimeStamp;
    @property (nonatomic) NSTimeInterval appLoadDuration;

@end

typedef enum CollapsibleItemImageAllignment
{
	CollapsibleItemImageAllignmentLeft = 0,
	CollapsibleItemImageAllignmentRight,
	CollapsibleItemImageAllignmentCenter
}CollapsibleItemImageAllignment;



@interface ImageData : NSObject <NSCopying>
//Commented byte string as nobody is populating it except for copyWithZone
    //@property (nonatomic) NSString*	byteString;
    @property (nonatomic) id	sourceImageObj;
    @property (nonatomic) IMAGESOURCE imageSrc;
@end




typedef enum SEGUIBEHAVIOR {
	DEFAULT = 0,
	SINGLESELECT,
	MULTISELECT
}SEGUIBEHAVIOR1;

@interface AppleAddressInfo : NSObject
    @property (nonatomic) NSString*	sFirstName;
    @property (nonatomic) NSString*	sLastName;
    @property (nonatomic) NSMutableArray* sPhoneNumber;
    @property (nonatomic) NSMutableArray* sPostalAddress;
    @property (nonatomic) NSMutableArray* sEmail;
    @property (nonatomic) NSMutableArray* sCompany;
    @property (nonatomic) NSString*	sJobtitle;
    @property (nonatomic) id rawBytes;
@end


@interface KonyLocationOutParam : NSObject
    @property (nonatomic) NSString*	cellId;
    @property (nonatomic) NSMutableArray*	position;
    @property (nonatomic) BOOL		isSuccess;
    @property (nonatomic) NSString*	errorMsg;
    @property (nonatomic) NSNumber*	errorCode;
@end

/*  Function prototype */
BOOL copyCstringToCstring( char** dst, const char* src );

void* MALLOC( size_t size );

// Media Gallery status info
typedef enum {
	OPENMEDIAGALLERY_SUCCESS = 0,
	OPENMEDIAGALLERY_FAILURE = -1,
	ERROR_INSUFFICIENTPERMISSIONS = 101,
	ERROR_NOGALLERY = 102,
	ERROR_UNKNOWNERROR = 103,
	ERROR_INVALIDARGUMENTS = 104,
	ERROR_MEDIANOTAVAILABLE = 105
}eCodes;

# define OPENMEDIAGALLERY_EXP_CLOSURE_PARAMS 2 || 1      //taken optional mimetype parameter into consideration
@interface KonyMediaGalleryOutParam : NSObject
    @property (nonatomic) int isSuccess;
    @property (nonatomic) NSString *errorMsg;
    @property (nonatomic) NSNumber *errorCode;
@end

@interface KonyOpenMailOutParam : NSObject
    @property (nonatomic) BOOL isSuccess;
    @property (nonatomic) NSString*	errorMsg;
    @property (nonatomic) NSNumber*	errorCode;
@end

CGRect CGRectIntegralWithZeroRestore(CGRect aRect);

@interface ListenerHash : NSObject

@property(nonatomic, assign) id listener;
@property(nonatomic,retain)  NSIndexPath* ctx;

-(id)initWithListner:(id)clicklistner andContext:(NSIndexPath*)context;
@end
