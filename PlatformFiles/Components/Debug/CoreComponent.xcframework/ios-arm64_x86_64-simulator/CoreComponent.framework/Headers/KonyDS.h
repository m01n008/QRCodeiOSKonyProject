
//#import "KonyUtil.h"
#import "KonyHeader.h"

//common
#define PROP_STRING_NONE						@"none"
#define PROP_STRING_SELF						@"self"
#define PROP_STRING_FORM						@"form"
#define PROP_STRING_TRUE						@"true"
#define PROP_STRING_FALSE						@"false"
#define PROP_WIDGET_ID							@"id"
#define PROP_SKIN								@"skin"
#define PROP_VISIBILITY							@"isvisible"
#define PROP_CONTAINER_WT						@"container_weight"
#define PROP_TEXT								@"text"
#define PROP_MARGIN								@"margin"
#define PROP_PADDING							@"padding"
#define PROP_STRING_DELETE						@"delete"
#define PROP_STRING_INSERT						@"insert"
#define PROP_INPUTACCESSORYVIEW_TYPE            @"inpaccessoryviewtype"
#define PROP_INPUTACCESSORYVIEW                 @"inputaccessoryview"

//Form
#define FORM_PROP_TITLE_BAR						@"titleBar"
#define FORM_PROP_TITLE_BAR_SKIN				@"titleBarSkin"
#define	FORM_PROP_SPACING						@"spacing"
#define FORM_PROP_TITLE							@"title"
#define FORM_PROP_IMAGE							@"image"
#define FORM_PROP_BUTTON						@"button"
#define FORM_PROP_TITLE_BAR_RIGHT_VIEW			@"titleBarRightSideView"
#define FORM_PROP_RIGHT_IMAGE_PATH				@"imageRightSideView"
#define FORM_PROP_RIGHT_LABEL					@"labelRightSideView"
#define FORM_PROP_RIGHT_CLOSURE					@"closureRightSideView"
#define FORM_PROP_TITLE_BAR_LEFT_VIEW			@"titleBarLeftSideView"
#define FORM_PROP_LEFT_IMAGE_PATH				@"imageLeftSideView"
#define FORM_PROP_LEFT_LABEL					@"labelLeftSideView"
#define FORM_PROP_LEFT_CLOSURE					@"closureLeftSideView"
#define FORM_PROP_MENU_RENDERER					@"menuRenderer"
#define FORM_PROP_NEED_APP_MENU					@"needAppLevelMenu"
#define FORM_PROP_STATE_ARRAY					@"widgetStateArray"
#define PRESHOW									@"preshow"
#define POSTSHOW								@"postshow"
#define ONHIDE									@"onhide"
#define ORIENTATION_MODE						@"orientationmode"
#define ON_ORIENTATION_CHANGE					@"onorientationchange"
#define FORM_PROP_HEADERS						@"globalheaders"
#define FORM_PROP_FOOTERS						@"globalfooters"



//App
#define APP_PROP_HEADERS						@"headers"
#define APP_PROP_FOOTERS						@"footers"

//Label
#define LABEL_PROP_WRAPPING						@"wrapping"
#define LABEL_PROP_WRAPPING_ON_CHAR				@"char"
#define LABEL_PROP_LONG_TEXT					@"longText"
#define LABEL_PROP_SHADOW_COLOR					@"shadowColor"
#define LABEL_PROP_SHADOW_OFFSET				@"shadowOffset"


//Textview iphone properties
#define TEXT_PROP_CLOSURE_ON_DONE				@"ondone"
#define TEXT_PROP_LABEL_DISPLAY_IN_KEYBOARD		@"labelForDisplayInKeyBoard"
#define TEXT_PROP_PLACE_HOLDER					@"placeholder"
#define TEXT_PROP_INITIAL_VALUE					@"initialValue"
#define TEXT_PROP_BORDER_STYLE					@"borderStyle"
#define TEXT_PROP_CLEAR_BUTTON					@"clearButton"
#define TEXT_PROP_EDITABLE						@"editable"
#define TEXT_PROP_DEFAULT_LOOK					@"defaultLook"
#define TEXT_PROP_KEYBOARD_TYPE					@"keyBoardType"
#define TEXT_PROP_TEXT_CHANGE_CLOSURE			@"ontextchange"


//PickerView Control
#define PICKER_PROP_IMAGE						@"dropDownImage"



//Prog Indicator
#define PROG_INDICTOR_COLOR						@"progressIndicatorColor"
#define PROG_INDICTOR_COLOR_WHITE				@"white"
#define PROG_INDICTOR_COLOR_GRAY				@"gray"
#define	PROG_INDICTOR_NEEDED					@"needProgressIndicator"


//SegUI
#define SEGUI_PROP_ENBLE_DICT					@"enableDictionary"
#define SEGUI_PROP_SECTIONS						@"sections"
#define SEGUI_PROP_DATA							@"data"
#define SEGUI_PROP_MAPPING						@"mapping"
#define SEGUI_PROP_INSERT_CLOSURE				@"oninsertclick"
#define SEGUI_PROP_DELETE_CLOSURE				@"ondeleteclick"
#define SCREEN_LEVEL_WIDGET						@"screenLevelWidget"
#define METAINFO								@"metainfo"
#define CLICKABLE								@"clickable"
#define EDITINGSTYLE							@"editstyle"
#define EDITABLE								@"editable"
#define EDITMODE								@"editmode"
#define RETAINS_HEADER_FOOTER					@"retainsheaderfooter"

//SegUI SearchBar
#define SEGUI_SEARCH_SEARCHBY					@"searchBy"
#define SEGUI_SEARCH_SEARCHBY_NONE				@"none"
#define SEGUI_SEARCH_CRITERIA					@"searchCriteria"
#define SEGUI_SEARCH_CRITERIA_STARTSWITH		@"startsWith"
#define SEGUI_SEARCH_CRITERIA_CONTAINS			@"contains"
#define SEGUI_SEARCH_CRITERIA_ENDSWITH			@"endswith"
#define SEGUI_SEARCH_ORIGINAL_SECTION			@"section"
#define SEGUI_SEARCH_ORIGINAL_ROW				@"row"
#define SEGUI_SEARCH_KB_HT_ADJ_FOR_SCR_WIDGET	198.0
#define SEGUI_SEARCH_KB_HT_ADJ_FOR_NON_SCR_WIDGET 145.0
#define SEGUI_SEARCHBAR_HEIGHT					50.0
#define SEGUI_EDIT_STYLE_ICON					@"icon"
#define SEGUI_EDIT_STYLE_SWIPE					@"swipe"


//Button
#define BUT_PROP_NORMAL_IMG						@"normalimage"
#define BUT_PROP_FOCUS_IMG						@"focusimage"


//SingleItemPicker
#define SING_PICK_PROP_MASTERDATA				@"masterdata"
#define SING_PICK_PROP_MASTERDATA_MAP			@"masterdatamap"
#define SING_PICK_PROP_SELECTED_KEY				@"selectedkey"
#define SING_PICK_PROP_SELECTED_KEYS			@"selectedkeys"
#define SING_PICK_PROP_SELECTED_INDX			@"selectedIndex"

//Image wid
#define IMG_PROP_SRC							@"src"
#define IMG_PROP_RAWDATA						@"rawdata"

#define IMG_CONSTRAINT_DISABLEURLLOADING		@"disableurlloading"


//Phone Location
#define LOC_NETWORK_ERROR				101
#define LOC_USERDENIED_ERROR			102
#define LOC_UNKNOWN_LOCATION_ERROR		103
#define LOC_UNKNOWN_ERROR				104
#define LOC_LOCATIONSERVICES_DISABLED	105

// Permision Denied error code and error message
#define LOC_PERMISSION_DENIED 2300
#define MSG_PERMISSION_DENIED @"Permission Denied"

//Encryption related Constants

typedef enum alg_id
{
	CSSM_ALGID_NONE =					0x00000000L,
	CSSM_ALGID_VENDOR_DEFINED =			CSSM_ALGID_NONE + 0x80000000L,
	CSSM_ALGID_AES_128_MD2,
	CSSM_ALGID_AES_128_MD4,
	CSSM_ALGID_AES_128_MD5,	
	CSSM_ALGID_AES_256_SHA2,
	CSSM_ALGID_192_SRND, // common key length supported by both AES and 3DES
	CSSM_ALGID_AES_128_SRND,
	CSSM_ALGID_AES_256_SRND,
	CSSM_ALGID_RSA,
    CSSM_ALGID_PBKDF2_128,
    CSSM_ALGID_PBKDF2_192,
    CSSM_ALGID_PBKDF2_256
    
}ALG_ID;

typedef enum crypto_mode
{
	CRYPTO_MODE_CBC,
	CRYPTO_MODE_ECB

}CRYPTO_MODE;

typedef enum crypto_operation
{
	CRYPTO_ENCRYPT,
	CRYPTO_DECRYPT
	
}CRYPTO_OPERATION;

typedef enum crypto_padding
{
	CRYPTO_PADDING_NONE,
	CRYPTO_PADDING_PKCS1,
	CRYPTO_PADDING_PKCS7

}CRYPTO_PADDING;




#define KEY_SIZE_256 256
#define KEY_SIZE_128 128
#define KEY_SIZE_192 192
#define KEY_SIZE_PUBLIC_KEY 512
#define CRYPTO_ERROR_INVALID_PARAMETERS 100
#define CRYPTO_ERROR_UNSUPPORTED_ALGO 101
#define CRYPTO_ERROR_UNKONWN_ERROR 102
#define CRYPTO_ERROR_RESOURCE_NOT_FOUND 103
#define CRYPTO_ERROR_ILLEGAL_KEYSIZE 104
#define CRYPTO_ERROR_INSUFFICIENT_BUFFER 105
#define CRYPTO_ERROR_MEMORY_ALLOCATION_FAILURE 106
#define CRYPTO_ERROR_INPUTDATA_DECODE_ENCODE_ERROR 107
#define CRYPTO_ERROR_ITEM_ALREADY_EXIST 108
#define CRYPTO_ERROR_ITEM_CANNOT_BE_FOUND 109
#define CRYPTO_ERROR_INVALID_TYPE   110

#define CRYPTO_ERROR_INVALID_PARAMETERS_TEXT						@"invalid paramaters supplied"
#define CRYPTO_ERROR_UNSUPPORTED_ALGO_TEXT							@"unsupported algorithm"
#define CRYPTO_ERROR_UNKONWN_ERROR_TEXT								@"unknown error"
#define CRYPTO_ERROR_RESOURCE_NOT_FOUND_TEXT						@"resouce not found"
#define CRYPTO_ERROR_ILLEGAL_KEYSIZE_TEXT							@"illegal key size"
#define CRYPTO_ERROR_INSUFFICIENT_BUFFER_TEXT						@"insufficient buffer"
#define CRYPTO_ERROR_MEMORY_ALLOCATION_FAILURE_TEXT					@"memory allocation failure"
#define CRYPTO_ERROR_INPUTDATA_DECODE_ENCODE_ERROR_TEXT				@"input data encode/decode error"
#define CRYPTO_ERROR_ITEM_ALREADY_EXIST_TEXT						@"specified item already exist"
#define CRYPTO_ERROR_ITEM_CANNOT_BE_FOUND_TEXT						@"specified item cannot be found"
#define CRYPTO_ERROR_INVALID_TYPE_TEXT                              @"Invalid Type"

#define LOCAL_AUTHENTICATION_KEY_MESSAGE                            @"promptMessage"
#define LOCAL_AUTHENTICATION_KEY_FALLBACKTITLE                      @"fallbackTitle"
#define LOCAL_AUTHENTICATION_POLICY_VALUE                           @"policy"

typedef enum local_authentication_status
{
    LOCAL_AUTHENTICATION_NO_ERROR = 5000,
    LOCAL_AUTHENTICATION_AUTHENTICATION_FAILED = 5001,    // - Authentication was not successful because the user failed to provide valid credentials.
    LOCAL_AUTHENTICATION_USER_CANCELLED = 5002,           // - Authentication was canceled by the user—for example, the user tapped Cancel in the dialog.
    LOCAL_AUTHENTICATION_USER_FALLBACK = 5003,            // - Authentication was canceled because the user tapped the fallback button (Enter Password).
    LOCAL_AUTHENTICATION_SYSTEM_CANCEL = 5004,            // - Authentication was canceled by system.
    LOCAL_AUTHENTICATION_PASSCODE_NOT_SET = 5005,         // - Authentication could not start because the passcode is not set on the device.
    LOCAL_AUTHENTICATION_TOUCH_ID_NOT_AVAILABLE = 5006,   // - Authentication could not start because Touch ID is not available on the device.
    LOCAL_AUTHENTICATION_TOUCH_ID_NOT_ENROLLED = 5007,    // - Authentication could not start, because Touch ID has no enrolled fingers.
    LOCAL_AUTHENTICATION_BIOMETRICTS_NOT_SUPPORTED_TARGET_DEVICE_OS = 5008, // Target device's os does not support local authentication with touch id.
    LOCAL_AUTHENTICATION_TOUCH_ID_LOCKOUT = 5009,         // Authentication was not successful, because there were too many failed Touch ID attempts and Touch ID is now locked.
    LOCAL_AUTHENTICATION_APP_CANCEL = 5010,               // Authentication was canceled by application (e.g. invalidate was called while authentication was in progress).
    LOCAL_AUTHENTICATION_INVALID_CONTEXT = 5011,          // LAContext passed to this call has been previously invalidated.
    LOCAL_AUTHENTICATION_UNKONOWN_ERROR = 5099            // For any other error barring above defined errors.
    
}LOCAL_AUTHENTICATION_STATUS;

typedef enum local_authentication_mode
{
    LOCAL_AUTHENTICATION_MODE_NONE,
    LOCAL_AUTHENTICATION_MODE_TOUCH_ID,                     // - Authentication using touch ID
    LOCAL_AUTHENTICATION_PASS_CODE                          // - Authentication using pass code - not yet there still !! being futuristic !!

}LOCAL_AUTHENTICATION_MODE;

typedef enum local_authentication_policy
{
    LOCAL_AUTHENTICATION_POLICY_DEV_OWNER_AUTH_WITH_BIOMETRICS = 1, //LAPolicyDeviceOwnerAuthenticationWithBiometrics.User authentication with biometry.
    LOCAL_AUTHENTICATION_POLICY_DEV_OWNER_AUTH, // LAPolicyDeviceOwnerAuthentication.User authentication with biometry, Apple Watch, or the device passcode.
}LOCAL_AUTHENTICATION_POLICY;

//flag which says RAW is of type UIImage
//#define RAW_IS_UIIMAGE			1

//define section
#define KONYSKIN_MEMBER_SIZE	16

//network timeoutinterval
#define URL_REQUEST_TIMEOUT_INTERVAL			180.0
#define PARALLEL_URL_REQUEST_TIMEOUT_INTERVAL	25.0

//Widgets minimum or default values

// Base minimum width, minimum height
#define kStdSUIMinWidth			300 //150.0 //106.0
#define kStdSUIMinHeight		300 

//Button minimum width, minimum height
#define kStdButtonMinWidth		80.0 //106.0 //106
#define kStdButtonMinHeight		36.0

//Label minimum width, minimum height
#define kStdLabelMinWidth		5.0 //150.0 //20.0
#define kStdLabelMinHeight		36.0 //20.0

//text field default size
#define kStdTextFieldHeight		36.0
#define kStdTextFieldWidth		180; //207; //160.0	// initial width, but the table cell will dictact the actual width

//text area default size
#define kStdTextAreaHeight		120.0
#define kStdTextAreaWidth		300.0	// initial width, but the table cell will dictact the actual width

// Map Widget
#define ZOOM_LEVEL				@"initialZoomlevel"

// specific font metrics used in our text fields and text views
#define kFontName				@"Arial"
#define kTextFieldFontSize		18.0
#define kTextViewFontSize		18.0
#define kDefaultFontSize		15.0

#define kToolbarHeight			40.0

#define BUTTON_FONT_SIZE		14.0
#define TEXT_LABEL_FONT_SIZE	12.0
#define LABEL_BG_ALPHA			0.2

#define IPHONE_PORTRAIT_KEYBOARD_HEIGHT 216
#define IPHONE_LANDSCAPE_KEYBOARD_HEIGHT 162
#define IPAD_PORTRAIT_KEYBOARD_HEIGHT 264
#define IPAD_LANDSCAPE_KEYBOARD_HEIGHT 352
#define IPAD_INTERNAL_SIP_HEIGHT	216
/* Useful Macros */
#define FREEIF(p)			if (p) { free((void*)(p)); (p) = 0; } 

#define RGB_TO_UICOLOR(c)	[ UIColor colorWithRed:((c>>24)&0xFF)/255.0 \
										green:((c>>16)&0xFF)/255.0 \
										blue:((c >>8)&0xFF)/255.0 \
										alpha: (1.0 - ((c)&0xFF)/100.0) ];

#define PRINTCOLOR(c)		NSLog(@" BG color %x R:%f G:%f B:%f A:%f Actuals A in Hex - %x", \
											(c),(((c)>>24)&0xFF)/255.0 ,(((c)>>16)&0xFF)/255.0 \
													,(((c>>8))&0xFF)/255.0 ,(1.0 - ((c)&0xFF)/255.0),  ((c)&0xFF));



