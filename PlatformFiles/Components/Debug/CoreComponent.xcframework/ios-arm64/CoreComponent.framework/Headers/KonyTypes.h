//
//  KonyTypes.h
//  VM
//
//  Created by Shiva on 05/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 Enumeration that represents various widget types that kony platform
 supports. Every new widget that is created in the platform should
 either be mapped to one of the following types or added as a new type
 */

typedef enum
{
    KonyLanguageTypeLua,
    KonyLanguageTypeJavaScript,
    KonyLanguageTypeUnKnown = 999
    
} KonyLanguageType;

typedef enum KonyPropertyAccessModifier
{
    KonyPropertyAccessModifierReadOnly= 0,
    KonyPropertyAccessModifierReadWrite = 1,
    KonyPropertyAccessModifierConstructor =2,
    KonyPropertyAccessModifierSegmentedUI = 3,
    KonyPropertyAccessModifierCollectionView = 4
}KonyPropertyAccessModifier;


typedef enum
{
	KonyWidgetForm          = 0,            /** Kony form widget   */
	KonyWidgetHBox_Private  = 1,            /** Kony box widget    */
	KonyWidgetLabel         = 2,			/** Kony label widget  */
	KonyWidgetButton        = 3,			/** kony button widget */
    KonyWidgetLink          = 4,
    KonyWidgetImage         = 5,
    KonyWidgetGroup         = 6,                        /** Kony groupwidget   */
    KonyWidgetPickerView    = 7,                   /** Kony pickerview    */
    KonyWidgetRichText      = 8,             /** Kony RichText */
    KonyWidgetSlider        = 9,                       /** Kony slider        */
    KonyWidgetMap  = 10,                          /**Kony Map Widget */
    KonyWidgetWeb = 11,                          /**Kony Browser Widget */
    KonyListBox = 12,
    KonyWidgetCheckBoxGroup  = 13,
    KonyComboBox = 14,
    KonyRadioButtonGroup = 15,
    KonyWidgetCalendar = 16,
    KonyWidgetSwitch = 17,
    KonyWidgetAlert = 18,
    KonyWidgetTextBox = 19,
    KonyWidgetTextArea = 20,
    KonyWidgetLine = 21,
    KonyWidgetSegmentedUI = 22,
    konyWidgetScrollBox = 23,             /** Kony ScrollBox Widget */
    KonyWidgetOldImage = 24,
    KonyWidgetPopup     = 25,
    KonyWidgetImageGallery = 26,
    KonyWidgetImageStrip = 27,
    KonyWidgetCamera = 28,
    KonyWidgetOldImageGallery = 29,
    KonyWidgetOldSegmentedUI = 30,
    KonyWidgetOldForm = 31,
    KonyWidgetTextBox2 = 32,
    KonyWidgetTextArea2 = 33,
    KonyWidgetBoxTemplate=34,
    KonyWidgetCalendarGridCell = 40,
    KonyWidgetCalendarGrid = 41,
    KonyWidgetVBox_Private = 42,
    KonyWidgetOldImageStrip = 43,
    KonyWidgetPhone = 44,
    KonyWidgetDataGrid = 45,
    KonyWidgetBox = 46,
    KonyWidgetActionSheet = KonyWidgetBox+1,
    KonyWidgetCanvas        = 48,            /** kony Canvas widget */
    KonyWidgetChart2D3D = 100,
    KonyWidgetGenericSkinContainer = 101,
    KonyWidgetTab = 102,
    KonyWidgetAppMenu = 103,
    KonyWidgetTitleBar = 104,
    KonyWidgetBadge = 200,
    KonyWidgetFlexContainer = 201,
    KonyWidgetFlexScrollContainer = 202,
    KonyWidgetTransform = 303,
    KonyWidgetNativeContainer = 304,
    KonyWidgetCordovaBrowser = 305,
    KonyWidgetBarButtonItem = 306,
    KonyWidgetToolBar = 307,
	KonyWidgetUser = 308,
    KonyWidgetCollectionView = 309,
    KonyWidgetReactNativeContainer = 310,
    KonyWidgetMLCamera = 312,
    KonyWidgetPDFView = 311,
    KonyWidgetARRenderer = 84,
    KonyWidgetSignInWithApple = 85,
    KonyWidgetUnknown = 9999
} KonyWidgetType;

typedef enum
{
  KonyValueTypeLuaNumber,   
  KonyValueTypeLuaIndex,
  KonyValueTypeLuaIndexArray,
  KonyValueTypeLuaString,
  KonyValueTypeLuaBoolean,
  KonyValueTypeLuaTable,
  KonyValueTypeLuaCallBack,
  KonyValueTypeLuaWidget,
  KonyValueTypeLuaUserDefinedObject,
  KonyValueTypeJSNumber,
  KonyValueTypeJSIndex,
  KonyValueTypeJSIndexArray,
  KonyValueTypeJSArray,
  KonyValueTypeJSDictionary,
  KonyValueTypeJSString,
  KonyValueTypeJSBoolean,
  KonyValueTypeJSCallBack,
  KonyValueTypeJSWidget,
  KonyValueTypeJSFile,
  KonyValueTypeJSFileList,
  KonyValueTypeJSRawBytes,
  KonyValueTypeJSKonyImage,
  KonyValueTypeJSMediaAudio,
  KonyValueTypeJSMediaAudioRecord,
  KonyValueTypeJSUserDefinedObject,
  KonyValueTypeJSBarButtonItem,
  KonyValueTypeJSTypeDefault, // For Default convertion
  KonyValueTypeNativeBool,
  KonyValueTypeNativeString,
  KonyValueTypeNativeArray,
  KonyValueTypeNativeIndexArray,
  KonyValueTypeNativeDictionary,
  KonyValueTypeNativeNumber,
  KonyValueTypeNativeIndex,
  KonyValueTypeNativeCallBack,
  KonyValueTypeNativeWidget,
  KonyValueTypeBoolean,
  KonyValueTypeLuaRawBytes,
  KonyValueTypeNativeFile,
  KonyValueTypeNativeFileList,
  KonyValueTypeNativeRawBytes,
  KonyValueTypeNativeKonyImage,
  KonyValueTypeNativeUserDefinedObject,
  KonyValueTypeUnKnown = 9999
} KonyValueType;

typedef enum
{
	KonyFormOrientationPortrait		= 0,				/** Portrait Orientation  */
	KonyFormOrientationLandscape	= 1,			/** Landscape Orientation   */
	KonyFormOrientationBoth			= 2,				/** Both Orientation  */
} KonyFormOrientation;

typedef enum
{
    KonyBarStyleDefault = 0,
    KonyBarStyleDark
} KonyBarStyle;


typedef enum
{
    KonyBarButtonImage = 0,
    KonyBarButtonTitle = 1,
    KonyBarButtonSystemItem = 2,
    KonyBarButtonCustom = 3
} KonyBarButtonType;

typedef enum{
   KonyImageOrientationUp,            // default orientation
   KonyImageOrientationDown,          // 180 deg rotation
   KonyImageOrientationLeft,          // 90 deg CCW
   KonyImageOrientationRight,         // 90 deg CW
   KonyImageOrientationUpMirrored,    // as above but image mirrored along other axis. horizontal flip
   KonyImageOrientationDownMirrored,  // horizontal flip
   KonyImageOrientationLeftMirrored,  // vertical flip
   KonyImageOrientationRightMirrored // vertical flip
} KonyImageOrientation;

typedef enum
{
    KonySystemBarButtonItemDone = 0,
    KonySystemBarButtonItemCancel,
    KonySystemBarButtonItemEdit,
    KonySystemBarButtonItemSave,
    KonySystemBarButtonItemAdd,
    KonySystemBarButtonItemFlexibleSpace,
    KonySystemBarButtonItemFixedSpace,
    KonySystemBarButtonItemCompose,
    KonySystemBarButtonItemReply,
    KonySystemBarButtonItemAction,
    KonySystemBarButtonItemOrganize,
    KonySystemBarButtonItemBookMarks,
    KonySystemBarButtonItemSearch,
    KonySystemBarButtonItemRefresh,
    KonySystemBarButtonItemStop,
    KonySystemBarButtonItemCamera,
    KonySystemBarButtonItemTrash,
    KonySystemBarButtonItemPlay,
    KonySystemBarButtonItemPause,
    KonySystemBarButtonItemRewind,
    KonySystemBarButtonItemFastForward,
    KonySystemBarButtonItemUndo,
    KonySystemBarButtonItemRedo,
    KonySystemBarButtonItemPageCurl,
} KonySystemBarButtonItem;

/*
 MADPIOS-5072: Enum for accessibility traits
 */
typedef enum{
    KonyAccessibilityTraitNone = 0,
    KonyAccessibilityTraitHeader,
    KonyAccessibilityTraitStaticText,
    KonyAccessibilityTraitLink,
    KonyAccessibilityTraitButton,
    KonyAccessibilityTraitSelected
} KonyAccessibilityTraits;

typedef enum{
    KonyBatteryStateUnknown,
    KonyBatteryStateUnplugged,
    KonyBatteryStateCharging,
    KonyBatteryStateFull
}KonyBatteryState;

typedef enum{
    KonyBlurEffectNone,
    KonyBlurEffectExtraLight,
    KonyBlurEffectLight,
    KonyBlurEffectDark,
    KonyBlurEffectRegular,
    KonyBlurEffectProminent
}KonyBlurEffect;

typedef enum{
    KonySKOverlayStateWillStartPresentation = 0,
    KonySKOverlayStateDidFinishPresentation,
    KonySKOverlayStateWillStartDismissal,
    KonySKOverlayStateDidFinishDismissal,
    KonySKOverlayStateError
}KonySKOverlayState;

typedef enum{
    KonySKOverlayPositionBottom = 0,
    KonySKOverlayPositionBottomRaised
}KonySKOverlayPosition;

typedef NS_ENUM(NSInteger, KonyOpenURLStatus){
    KonyOpenURLStatusUnknown = -1,
    KonyOpenURLStatusFailed = 0,
    KonyOpenURLStatusOK = 1
};

typedef enum{
    KonyBiometryTypeNone,
    KonyBiometryTypeTouchID,
    KonyBiometryTypeFaceID,
    KonyBiometryTypeUnDefined
}KonyBiometryType;

typedef enum{
    KonyVideoGravityTypeResize,
    KonyVideoGravityTypeResizeAspect,
    KonyVideoGravityTypeResizeAspectFill
}KonyVideoGravityType;

typedef NS_ENUM(NSInteger, KonyARAnchorType) {
    KonyARAnchorTypeAny = 0,
    KonyARAnchorTypeHorizontalPlane = 1,
    KonyARAnchorTypeVerticalPlane = 2,
    KonyARAnchorTypeFeaturePoint = 3
    
};

typedef NS_ENUM(NSInteger, KonyAREntityAdditionStatusType) {
    KonyAREntityAdditionStatusFailure = 0,
    KonyAREntityAdditionStatusSuccess = 1
};

typedef NS_ENUM(NSInteger, KonyARWidgetPersistenceState) {
    KonyARWidgetPersistenceStateFailure = 0,
    KonyARWidgetPersistenceStateSuccess = 1
};

typedef NS_ENUM(NSInteger, KonyARViewDebugOptions) {
    KonyARViewDebugOptionsNone = 0,
    KonyARViewDebugOptionsShowPhysics = 1,
    KonyARViewDebugOptionsShowStatistics = 2,
    KonyARViewDebugOptionsShowWorldOrigin = 4,
    KonyARViewDebugOptionsShowAnchorOrigins = 8,
    KonyARViewDebugOptionsShowAnchorGeometry = 16,
    KonyARViewDebugOptionsShowFeaturePoints = 32
};

typedef NS_ENUM(NSInteger, KonyARViewDetectionOverlayType) {
    KonyARViewDetectionOverlayTypeNone = 0,
    KonyARViewDetectionOverlayTypeImage = 1,
    KonyARViewDetectionOverlayTypeVideo = 2
};

typedef NS_ENUM(NSInteger, KonyARViewDetectionConfigurationType) {
    KonyARViewDetectionConfigurationTypeSuccess = 1,
    KonyARViewDetectionConfigurationTypeFailure = 2
};


typedef enum{
    KonyContentInsetAdjustmentAutomatic,
    KonyContentInsetAdjustmentScrollableAxes,
    KonyContentInsetAdjustmentNever,
    KonyContentInsetAdjustmentAlways,
}KonyContentInsetAdjustmentType;

typedef enum{
    KonyBarMetricsDefault,
    KonyBarMetricsCompact ,
    KonyBarMetricsPrompt =101,
    KonyBarMetricsCompactPrompt
} KonyBarMetrics;

typedef enum{
    KonyWebAuthenticationSessionErrorCancelledLogin = 1,
    KonyWebAuthenticationSessionUnknownError
} KonyWebAuthenticationSessionError;

typedef enum {
    KonyFontTextStyleBody,
    KonyFontTextStyleHeadline,
    KonyFontTextStyleSubheadline,
    KonyFontTextStyleFootnote,
    KonyFontTextStyleCaption1,
    KonyFontTextStyleCaption2,
    KonyFontTextStyleTitle1, // From iOS9.0
    KonyFontTextStyleTitle2,
    KonyFontTextStyleTitle3,
    KonyFontTextStyleCallout,
    KonyFontTextStyleLargeTitle // From iOS11 available only for iOS.
} KonyFontTextStyle;

//keychainitems accessible values
typedef enum {
    KonyKeyChainItemAccessibleWhenUnlocked,
    KonyKeyChainItemAccessibleWhenUnlockedThisDeviceOnly,
    KonyKeyChainItemAccessibleAlwaysThisDeviceOnly,
    KonyKeyChainItemAccessibleWhenPasscodeSetThisDeviceOnly,
    KonyKeyChainItemAccessibleAlways,
    KonyKeyChainItemAccessibleAfterFirstUnlock,
    KonyKeyChainItemAccessibleAfterFirstUnlockThisDeviceOnly
} KonyKeyChainItemAccessible;


typedef NS_ENUM(unsigned long,KonyKeyChainAccessControl) {
    KonyKeyChainAccessControlUserPresence = 1 << 0,
    KonyKeyChainAccessControlTouchIDAny = 1u << 1,
    KonyKeyChainAccessControlTouchIDCurrentSet = 1u << 3 ,
    KonyKeyChainAccessControlDevicePasscode = 1u << 4,
    KonyKeyChainAccessControlOr = 1u << 14,
    KonyKeyChainAccessControlAnd = 1u << 15,
    KonyKeyChainAccessControlApplicationPassword = 1u << 31
};

typedef enum{
    KonyBarButtonStylePlain = 0,
    KonyBarButtonStyleDone = 1
} KonyBarButtonStyle;

typedef enum{
    KonyToolBarStyleDefault = 0,
    KonyToolBarStyleBlack = 1
} KonyToolBarStyle;

/*!
 * @brief Enum for CollectionView @b layoutType property.
 * @discussion This enum represents the values that must be given for CollectionView @b layoutType property.
 */
typedef NS_ENUM(unsigned, KonyCollectionViewLayoutType) {
    KonyCollectionViewLayoutTypeHorizontal,
    KonyCollectionViewLayoutTypeVertical,
    KonyCollectionViewLayoutTypeCustom
};

typedef NS_ENUM(unsigned, KonyMLModelSourcePathType) {
    KonyMLModelSourcePathTypeBundled,
    KonyMLModelSourcePathTypeFile
};

typedef enum KonyCameraPermissionsType {
    KonyCameraPreviewUnavailable,
    KonyCameraPermissionDenied
}KonyCameraPermissionsType;

typedef NS_ENUM(unsigned, KonyMLErrorType) {
    KonyMLErrorTypeInputImageNull,
    KonyMLErrorTypeReuseException,
    KonyMLErrorTypeImageProcessingFailed
};

/*!
 * @brief Enum for CollectionView @b selectionBehavior property.
 * @discussion This enum represents the values that must be given for CollectionView @b selectionBehavior
 * property.
 */
typedef NS_ENUM(unsigned, KonyCollectionViewSelectionBehaviourType) {
    KonyCollectionViewSelectionBehaviourTypeSingleSelect,
    KonyCollectionViewSelectionBehaviourTypeMultiSelect
};

/*!
 * @brief Enum for CollectionView @b scrollDirection property.
 * @discussion This enum represents the values that must be given for CollectionView @b scrollDirection property. Applicable
 * only in case of custom layout.
 */
typedef NS_ENUM(unsigned, KonyCollectionViewScrollDirection) {
    KonyCollectionViewScrollDirectionBoth,
    KonyCollectionViewScrollDirectionHorizontal,
    KonyCollectionViewScrollDirectionVertical
};
/*!
 * @brief Enum for KonyShapeLayer.
 * @discussion This enum represents the values that must be given for KonyShapeLayer.
 */
typedef enum {
    KonyShapeLayerLine,
    KonyShapeLayerCircle,
    KonyShapeLayerOval,
    KonyShapeLayerPath
}KonyShapeLayerType;
/*!
 * @brief Enum for KonyShapeLayer.
 * @discussion This enum represents the values that must be given for KonyShapeLayer.
 */
typedef enum {
    KonyShapeLayerStyleSolid,
    KonyShapeLayerStyleDashed
}KonyShapeLayerStyle;
/*!
 * @brief Enum for KonyShapeLineLayerJoin.
 * @discussion This enum represents the values that must be given for KonyShapeLayer.
 */
typedef enum {
    KonyShapeLayerJoinMitter,
    KonyShapeLayerJoinRound,
    KonyShapeLayerJoinBavel
}KonyShapeLineJoin;
/**
 *    Data types stored in KonyDataStore.
 *  The Rationale behind these data types is to allow all possible lua types (8 types of Lua language)
 *  functions (LuaClosures) are not handled for the time being.
 *  Note : (In order to Store a new type in KonyDS , KonyDataStore guide lines to extend support for new types should be studied.)
 *
 *    @TODO:
 *    isSerializable/ed is right now not associated to KonyDataStore (nor KonyTypeAdapter). Decision needs to be taken , either to standardize it or
 *    going ahead with Archiving only.
 */

typedef enum KONYDSTypes
{
    KONYDSLuaTableType = 0,            /**<  corresponds to LuaTable */
    KONYDSRawBytesType = 1,            /**<  corresponds to RawBytes */
    KONYDSNSDictionaryType = 2,        /**<  corresponds to NSDictionary */
    KONYDSNSArrayType = 3,            /**<  corresponds to NSArray */
    KONYDSNSNumberType = 4,            /**<  corresponds to NSNumber */
    KONYDSLuaBooleanType = 5,        /**<  corresponds to BOOL */
    KONYDSNSStringType = 6,            /**<  corresponds to NSString */
    KONYDSNSNullType = 7,            /**<  corresponds to NSNull */
    KONYDSUnKnownType = 8,            /**<  corresponds to Types that are supported but not known */
    KONYDSUndefinedType                /**<  corresponds to unsupported data types */
}KONYDSTypes;

typedef enum  KonyDataStorageType
{
    KonyDataStorageFile = 0,
    KonyDataStorageSQLite = 1
}KonyDataStorageType;

typedef enum
{
	KonyWidgetAlignmentTopLeft			= 1,				  /** Top Left Alignment   */
	KonyWidgetAlignmentTopCenter		= 2,                /** Top Center Alignment    */
	KonyWidgetAlignmentTopRight		= 3,                    /** Top Right Alignment  */
	KonyWidgetAlignmentMiddleLeft		= 4,                /** Middle Left Alignment  */
	KonyWidgetAlignmentMiddleCenter	= 5,                /** Middle Center Alignment */
	KonyWidgetAlignmentMiddleRight		= 6,            /** Middle Right Alignment */
	KonyWidgetAlignmentBottomLeft		= 7,                /** Bottom Left Alignment */
	KonyWidgetAlignmentBottomCenter	= 8,                /** Bottom Center Alignment */
	KonyWidgetAlignmentBottomRight		= 9,            /** Bottom Right Alignment */
} KonyWidgetAlignment;

typedef enum
{
    KonyWidgetContentAlignmentUnknown       = 0,
	KonyWidgetContentAlignmentTopLeft		= 1,				  /** Top Left Alignment   */
	KonyWidgetContentAlignmentTopCenter		= 2,                /** Top Center Alignment    */
	KonyWidgetContentAlignmentTopRight		= 3,                    /** Top Right Alignment  */
	KonyWidgetContentAlignmentMiddleLeft	= 4,                /** Middle Left Alignment  */
	KonyWidgetContentAlignmentMiddleCenter	= 5,                /** Middle Center Alignment */
	KonyWidgetContentAlignmentMiddleRight	= 6,            /** Middle Right Alignment */
	KonyWidgetContentAlignmentBottomLeft	= 7,                /** Bottom Left Alignment */
	KonyWidgetContentAlignmentBottomCenter	= 8,                /** Bottom Center Alignment */
	KonyWidgetContentAlignmentBottomRight	= 9,            /** Bottom Right Alignment */
} KonyWidgetContentAlignment;

//TextTruncatePosition
typedef enum
{
    KonyTextTruncatePositionNone = 0,       // fallback to wrapping
    KonyTextTruncatePositionHead,           // put ellipses in begining of last line
    KonyTextTruncatePositionMiddle,         // put ellipses in middle of last line
    KonyTextTruncatePositionTail,           // put ellipses at end
}KonyTextTruncatePosition;

//Payment Networks
typedef NS_ENUM(NSUInteger, KonyPaymentNetwork)
{
    KonyPaymentNetworkAmex,
    KonyPaymentNetworkCarteBancaire,
    KonyPaymentNetworkCarteBancaires,
    KonyPaymentNetworkCartesBancaires,
    KonyPaymentNetworkChinaUnionPay,
    KonyPaymentNetworkDiscover,
    KonyPaymentNetworkIDCredit,
    KonyPaymentNetworkInterac,
    KonyPaymentNetworkJCB,
    KonyPaymentNetworkMasterCard,
    KonyPaymentNetworkPrivateLabel,
    KonyPaymentNetworkQuicPay,
    KonyPaymentNetworkSuica,
    KonyPaymentNetworkVisa
};

//MerchantCapabilities
typedef NS_OPTIONS(NSUInteger, KonyMerchantCapability)
{
    KonyMerchantCapability3DS = 1UL << 0,            // Merchant supports 3DS
    KonyMerchantCapabilityEMV = 1UL << 1,              // Merchant supports EMV
    KonyMerchantCapabilityCredit = 1UL << 2,           // Merchant supports credit
    KonyMerchantCapabilityDebit = 1UL << 3            // Merchant supports Debit
};

//PriceSummary Constants
typedef NS_ENUM(NSUInteger, KonyPriceSummaryType)
{
    KonyPriceSummaryTypeFinal,
    KonyPriceSummaryTypePending
};

//ShippingTypeConstants
typedef enum
{
    KonyShippingTypeShipping,
    KonyShippingTypeDelivery,
    KonyShippingTypeStorePickup,
    KonyShippingTypeServicePickup
}KonyShippingType;

typedef enum
{
    KonyAddressFieldName,
    KonyAddressFieldPhone,
    KonyAddressFieldEmail,
    KonyAddressFieldFieldPostalAddress,
    KonyAddressFieldPhoneticName
}KonyAddressField;

typedef NS_ENUM(NSInteger, KonyStrikethroughStyle) {
    KonyStrikethroughStyleThick             = 0x02,
    KonyStrikethroughStyleDouble            = 0x09,
    KonyStrikethroughStylePatternDot        = 0x0100,
    KonyStrikethroughStylePatternDash       = 0x0200,
    KonyStrikethroughStylePatternDashDot    = 0x0300,
    KonyStrikethroughStylePatternDashDotDot = 0x0400,
    KonyStrikethroughStyleByWord            = 0x8000
};

typedef enum
{
	KonyWidgetLayoutDirectionLeft		= 1,                    /** Layout Direction Left   */
	KonyWidgetLayoutDirectionCenter		= 2,                /** Layout Direction Center  */
	KonyWidgetLayoutDirectionRight		= 3                     /** Layout Direction Right  */
} KonyWidgetLayoutDirection;

typedef enum
{
	KonyContainerOrientationHorizontal	= 1,                /** Container Orienation Horizontal */
	KonyContainerOrientationVertical	= 2,                    /** Container Orientation Vertical */
    KonyContainerOrientationBoth        = 3
} KonyContainerOrientation;

typedef enum
{
	KonyLineOrientationInvalid  = 0,
    KonyLineOrientationHorizontal	= 1,                /** Line Orienation Horizontal */
	KonyLineOrientationVertical	= 2,                    /** Line Orientation Vertical */
} KonyLineOrientation;

typedef enum
{
    KonyWidgetBackgroundStylePlain,
    KonyWidgetBackgroundStyleVerticalGradient,
    KonyWidgetBackgroundStyleVerticalSplit,
    KonyWidgetBackgroundStyleImage,
    KonyWidgetBackgroundStyleMSGradient
} KonyWidgetBackgroundStyle; 

typedef enum
{
    KonyWidgetBorderStyleSquare,
    KonyWidgetBorderStyleRoundedCorner,
    KonyWidgetBorderStyleRoundedEdges,
    KonyWidgetBorderStyleCustomRoundedCorner
}KonyWidgetBorderStyle;

typedef enum
{
    KonyWidgetBorderTypeOneColor=0,
    KonyWidgetBorderTypeMSGradient=1
}KonyWidgetBorderType;

typedef enum
{
    KonyWidgetBorderTypeNone=0,
    KonyWidgetBorderTypeDashed=1
}KonyWidgetBorderLineStyle;

typedef enum
{
    KonyWidgetFontColorTypeOne=0,
    KonyWidgetFontColorTypeMSGradient=1
}KonyWidgetFontColorType;

typedef enum
{
    KonyScrollableWidgetScrollDirectionHorizontal = 1,
    KonyScrollableWidgetScrollDirectionVertical,
    KonyScrollableWidgetScrollDirectionDiagonal = 3,                //Did not want to do this, but I have no option... :(
    KonyScrollableWidgetScrollDirectionBoth = 3,
    KonyScrollableWidgetScrollDirectionNone
}KonyScrollableWidgetScrollDirection;

//typedef enum
//{
//    KonyScrollableWidgetScrollHeightReferenceByForm = 1,
//    KonyScrollableWidgetScrollHeightReferenceByParent
//}KonyScrollableWidgetScrollHeightReference;

typedef enum
{
    KonyAlertTypeError = 1,
    KonyAlertTypeConfirmation,
    KonyAlertTypeInfo,
    KonyAlertTypeCustom
    
}KonyAlertType;

typedef enum
{
    KonyWebRequestTypeGet,
    KonyWebRequestTypePost
    
}KonyWebRequestType;

typedef enum
{
    KonyFormWidgetTypeStatic,
    KonyFormWidgetTypeDynamic,
    KonyFormWidgetTypeNative
    
}KonyFormWidgetType;

typedef enum {
    KonyActionItemStyleDefault =0,
    KonyActionItemStyleCancel,
    KonyActionItemStyleDestructive
}KonyActionItemStyle;

typedef  enum {
    KonyActionAnchorDirectionTop = 1UL << 0,
    KonyActionAnchorDirectionBottom = 1UL << 1,
    KonyActionAnchorDirectionLeft = 1UL << 2,
    KonyActionAnchorDirectionRight = 1UL << 3
}KonyActionAnchorDirection;

typedef  enum {
    KonyRawbytesTypeImage = 0,
    KonyRawbytesTypeVideo,
    KonyRawbytesTypeAudio,
    KonyRawbytesTypeFile,
    KonyRawbytesTypeBytes,
    KonyRawbytesTypeLivePhoto
}KonyRawbytesType;

typedef  enum {
    KonyDismissSIPInCallbacksNO = 0,
    KonyDismissSIPInCallbacksDefault,
    KonyDismissSIPInCallbacksYES
}KonyDismissSIPInCallbacksBehaviour;

typedef enum
{
    KonyDataGridColumnTypeImage,
    KonyDataGridColumnTypeText
    
}KonyDataGridColumnType;

typedef enum
{
    KonyFormDisplayOrientationPortrait,
    KonyFormDisplayOrientationLandscape,
    KonyFormDisplayOrientationBoth
}KonyFormDisplayOrientation;


typedef enum
{
    KonyDeviceOrientationPortrait,
    KonyDeviceOrientationLandscape
}KonyDeviceOrientation;


typedef enum
{
    KonyFormAdjustTypeResize,
    KonyFormAdjustTypePan
} KonyFormAdjustType;

typedef enum
{
    KonyFormNavigationTypeForward
}KonyFormNavigationType;

typedef enum
{
    BoxPositionAsNormal = 1,
    BoxPositionAsHeader,
    BoxPositionAsFooter,
    BoxPositionAsScreenLevelSegHeader,
    BoxPositionAsScreenLevelSegFooter
}BoxPosition;

typedef enum
{
    GroupWidgetViewTypeListView = 1,
    GroupWidgetViewTypeTableView,
    GroupWidgetViewTypeToggleView,
    GroupWidgetViewTypeOnScreenWheel,
    GroupWidgetViewTypeOnOffSwitch
} GroupWidgetViewType;

typedef enum
{
    GroupWidgetToggleViewStylePlain = 1,
    GroupWidgetToggleViewStyleBordered,
    GroupWidgetToggleViewStyleBar
} GroupWidgetToggleViewStyle;

typedef enum
{
    CalendarViewTypeDefault = 0,
    CalendarViewTypeGridOnscreen,
    CalendarViewTypeGridPopup,
    CalendarViewTypeWheelOnscreen,
    CalendarViewTypeWheelPopup,
    CalendarViewTypeNative
}CalendarViewType;

typedef enum
{
    CalendarModeOnlyDate = 1,
    CalendarModeOnlyTime,
    CalendarModeBothDateAndTime
}CalendarMode;

typedef enum
{
    CalendarAutomatic = 1,
    CalendarInline,
    CalendarCompact,
    CalendarWheels
}CalendarStyle;

typedef enum{
    CalendarIconAlignmentLeft,
    CalendarIconAlignmentRight,
    CalendarIconAlignmentAuto
}CalendarIconAlignment;

typedef enum {
    GestureTap = 1,
	GestureSwipe=2,
	GestureLongPress=3,
	GesturePan=4,
    GestureRotation=5,
    GesturePinch=6
} KonyGesture;

typedef enum
{
    ImageGlossyEffectTypeDefault = 1,
    ImageGlossyEffectTypeLinear,
    ImageGlossyEffectTypeRadial
    
}ImageGlossyEffectType;

typedef enum
{
    ImageScaleModeType_Image1_Default =1,
    ImageScaleModeTypeMaintainAspectRatio,
    ImageScaleModeTypeFitToDimensions,
    ImageScaleModeTypeCrop,
    
    
}ImageScaleModeType;

typedef enum
{
    URLImageSourceUndefined,
    URLImageSourceCache,
    URLImageSourceDownloaded

}URLImageState;

typedef enum
{
    SegmentedUIViewTypeTableView = 1,
    SegmentedUIViewTypePageView,
    SegmentedUIViewTypeLinearView,
    SegmentedUIViewTypeRotaryView,
    SegmentedUIViewTypeInvertedRotaryView,
    SegmentedUIViewTypeCylinderView,
    SegmentedUIViewTypeInvertedCylinderView,
    SegmentedUIViewTypeCoverFlow,
    SegmentedUIViewTypeCoverFlow2,
    SegmentedUIViewTypeCustom
    
    
}SegmentedUIViewType;

typedef enum
{
    BrowserTypeWebView = 1,
    BrowserTypeWKWebView
}BrowserType;

typedef enum
{
    SSLValidationBehaviourNone = 1,
    SSLValidationBehaviourDefault = 2,
    SSLValidationBehaviourCheckDeclaredAllowOthers = 3
}SSLValidationBehaviour;

typedef enum
{
    SegmentedUIEditStyleNone = 1,
    SegmentedUIEditStyleSwipe,
    SegmentedUIEditStyleIcon
}SegmentedUIEditStyle;

typedef enum
{
    SegmentedUIEditModeInsert = 1,
    SegmentedUIEditModeDelete,
    SegmentedUIEditModeNone
}SegmentedUIEditMode;

typedef enum
{
    SegmentedUISearchCriteriaStartsWith = 1,
    SegmentedUISearchCriteriaContains,
    SegmentedUISearchCriteriaEndsWith,
    SegmentedUISearchCriteriaNotStartsWith ,
    SegmentedUISearchCriteriaNotContains,
    SegmentedUISearchCriteriaNotEndsWith,
    SegmentedUISearchCriteriaGreater,
    SegmentedUISearchCriteriaGreaterEqual,
    SegmentedUISearchCriteriaLesser,
    SegmentedUISearchCriteriaLesserEqual,
    SegmentedUISearchCriteriaStrictEqual,
    SegmentedUISearchCriteriaNotEqual,
    SegmentedUISearchCriteriaAnd,
    SegmentedUISearchCriteriaOr
}SegmentedUISearchCriteria;

typedef enum
{
    SegmentedUISearchSetOperatorAnd = 1,
    SegmentedUISearchSetOperatorOr
}SegmentedUISearchSetOperators;

typedef enum
{
    SegmentedUIProgressIndicatorColorWhite = 1,
    SegmentedUIProgressIndicatorColorGrey
}SegmentedUIProgressIndicatorColor;


typedef enum
{
    SegmentedUISelectionBehaviorDefault = 1,
    SegmentedUISelectionBehaviorSingleSelect,
    SegmentedUISelectionBehaviorMultiSelect
}SegmentedUISelectionBehavior;

typedef enum
{
    SegmentedUIScrollPositionDefault = 0,
    SegmentedUIScrollPositionRetain,
    SegmentedUIScrollPositionTop
}SegmentedUIScrollPosition;

typedef enum
{
    MapViewModeNormal,
    MapViewModeSatellite,
    MapViewModeHybrid
}MapViewMode;

typedef enum
{
    MapViewCurrentLocationTypeNone,
    MapViewCurrentLocationTypeAsPin,
    MapViewCurrentLocationTypeAsCircle
}MapViewCurrentLocationType;

typedef enum
{
    MapProviderNameGoogle
}MapProviderName;

typedef enum KonyTextWrap
{
    KonyTextWrapWord = 0,
    KonyTextWrapChar = 1,
    KonyTextNoWrap = 2,
    KonyTextTailTruncation = 3
}
KonyTextWrap;

typedef enum KonyLoadingScreenTypes
{
    KonyLoadingScreenFullScreen = 0,
    KonyLoadingScreenOnlyCenter = 1
}
KonyLoadingScreenTypes;


typedef enum
{
    KonyWidgetEventTypeClick,
    KonyWidgetEventTypeSwipe,
    KonyWidgetEventTypePinch,
    KonyWidgetEventTypeZoom,
    KonyWidgetEventTypeMultiClick
}KonyWidgetEventType;


typedef enum
{
    KonyWidgetSkinExtracionModeWidget,
    KonyWidgetSkinExtracionModeLabel,
    KonyWidgetSkinExtracionModeBox,
    KonyWidgetSkinExtracionModeSegmentedUI
}KonyWidgetSkinExtracionMode;

typedef enum DeviceResourceType
{
    DeviceCamera = 0,
    DevicePhotoGallery = 1,
    DeviceGeolocation = 2
}DeviceResourceType;

typedef enum
{
    IMAGE_SAVE_FAILED = 1,
    
}WriteImageToMediaGallery;

typedef enum ResourceType
{
    ResourceCamera = 1,
    ResourcePhotoGallery = 2,
    ResourceGeolocation = 3,
    ResourceContacts = 4,
    ResourceCalendar = 5,
    ResourceSiri = 6, /* Available from iOS10 onward for Intent Extension*/
    ResourceAudioRecord = 7
}ResourceType;

typedef enum LocationErrorType
{
    LocationPermissionDenied = 1,
    LocationPositionUnavaible = 2,
    LocationTimeout = 3
}LocationErrorType;

typedef enum geoLocationAccessMode
{
    geoLocationAccessModeAlways = 0,
    geoLocationAccessModeWhenInUse = 1
}
GeolocationAccessMode;

typedef enum audioSessionCategories{
    audioSessionCategoryAmbient = 0,
    audioSessionCategorySoloAmbient,
    audioSessionCategoryPlayback,
    audioSessionCategoryRecord,
    audioSessionCategoryPlayAndRecord,
    audioSessionCategoryMultiRoute
}audioSessionCategories;

typedef enum audioSessionCategoryOptions{
    audioSessionCategoryOptionMixWithOthers = 0,
    audioSessionCategoryOptionDuckOthers,
    audioSessionCategoryOptionAllowBluetooth,
    audioSessionCategoryOptionDefaultToSpeaker,
    audioSessionCategoryOptionInterruptSpokenAudioAndMixWithOthers,
    audioSessionCategoryOptionAllowBluetoothA2DP,
    audioSessionCategoryOptionAllowAirPlay,
    audioSessionCategoryOptionOverrideMutedMicrophoneInterruption
}audioSessionCategoryOptions;

typedef enum CachePolicies
{
    UseProtocolCachePolicy = 0,
    ReloadIgnoringLocalCacheData,
    ReturnCacheDataElseLoad,
    ReturnCacheDataDontLoad
}CachePolicies;

typedef enum StoragePolicies
{
    DiskAndMemory = 0,
    MemoryOnly,
    NotAllowed
}StoragePolicies;

typedef enum CameraCaptureMode
{
    CameraCaptureModePhoto = 0,
    CameraCaptureModeVideo
}CameraCaptureMode;

typedef enum CameraSourceMode
{
    CameraSourceModeDefault = 0,
    CameraSourceModeRear = 1,
    CameraSourceModeFront = 2
}
CameraSourceMode;

typedef enum NotificationType{
    NotificationTypeScreenChangedAccessibility = 0
}
NotificationType;

typedef enum CameraFailureModes
{
    CameraSourceUnavailable = 0,
    CameraSourceRearUnavailable,
    CameraSourceFrontUnavailable,
    CameraVideoCaptureUnavailable,
    CameraPhotoCaptureUnavailable,
    CameraCaptureFailed,
    CameraVideoSaveFailed,
    CameraAccessModeInMemoryDataRetrieveFailed
}
CameraFailureModes;

typedef enum CameraVideoFormat
{
    CameraVideoFormatMP4 = 0,
    CameraVideoFormatMOV
}CameraVideoFormat;

typedef enum CameraVideoResolution
{
    CameraVideoQualityMedium = 0,
    CameraVideoQualityHigh,
    CameraVideoQualityLow,
    CameraVideoQuality640X480,
    CameraVideoQuality1280X720,
    CameraVideoQuality960X540
}CameraVideoResolution;

typedef enum CameraAccessMode
{
    CameraAccessModePublic = 0,
    CameraAccessModePrivate = 1,
    CameraAccessModeInMemory = 2
}
CameraAccessMode;

typedef enum CameraFlashMode
{
    CameraFlashModeAuto= 0,    //Flash will be on/off automated when camera is in preview mode.
    CameraFlashModeOn,        //Flash will be on always, when camera is in preview mode
    CameraFlashModeOff,       //Flash will be off always, when camera is in preview mode
    CameraFlashModeAlwaysOn  //Camera flash will be open always, by default whenever Camera is in preview mode
}CameraFlashMode;

typedef enum CameraImageFormat
{
    CameraImageFormatPNG = 0,
    CameraImageFormatJPEG = 1
}
CameraImageFormat;

typedef enum CameraCaptureOrientation
{
    CameraCaptureOrientationDefault = 0,    /**< no target orientation - what you take is what you get */
    CameraCaptureOrientationLandscape = 1,  /**< image oriented to landscape(Left - device), if source is Portrait(any)  */
    CameraCaptureOrientationPortrait = 2    /**< image oriented to Portrait(Up), if source is Landscape(any)  */
}
CameraCaptureOrientation;

/** Resource Access State */
typedef enum ResourceAccessState
{
    ResourceAccessStatusNotDetermined = 0,        /**< Resource Access status not determined, waiting for user response */
    ResourceAccessStatusRestricted = 1,           /**< Resource Access status Restricted  */
    ResourceAccessStatusDenied = 2,               /**< Resource Access status Denied */
    ResourceAccessStatusAuthorized = 3,           /**< Resource Access status Authorized */
    ResourceAccessStatusAuthorizedAlways =
    ResourceAccessStatusAuthorized,               /**< Resource Access status Authorized for Always */
    ResourceAccessStatusAuthorizedWhenInUse = 4,  /**< Resource Access status Authorized for whenInUse */
    ResourceAccessStatusUnknown = 5,               /**< Resource Access status Unknown */
    ResourceAccessStatusWriteOnly = 6             /**< Resource Access status Write only */
}ResourceAccessState;


typedef enum KonyApplicationMode
{
    KonyApplicationModeNative = 1,
    KonyApplicationModeWrapper,
	KonyApplicationModeHybrid
}KonyApplicationMode;

typedef enum KonyApplicationState
{
    KonyApplicationStateActive = 1,
    KonyApplicationStateInactive,
    KonyApplicationStateBackground
}KonyApplicationState;

typedef enum KonyMasterType
{
    KonyMasterTypeDefault = 0,
    KonyMasterTypeUserWidget
}konyMasterType;

typedef enum
{
    KonyLayoutConstraintHeightPercentBasedOnFormHeight = 1,
    KonyLayoutConstraintHeightPercentBasedOnParentWidth,
    KonyLayoutConstraintHeightFixedValueInPixel,
    KonyLayoutConstraintHeigthPercentBasedOnFormWidth,
    KonyLayoutConstraintHeightPercentBasedOnParentHeight,
    KonyLayoutConstraintHeightPercentBasedOnDeviceHeight,
    KonyLayoutConstraintWidthFixedValueInPixel,
    KonyLayoutConstraintWidthPercentBasedOnParentWidth,
    KonyLayoutConstraintHeightTobeIgnored,
}KonyLayoutConstraint;

typedef enum KonySegmentedUIPageViewStyle
{
    KonySegmentedUIPageViewStyleNormal = 1,
    KonySegmentedUIPageViewStyleWithPageControl,
}KonySegmentedUIPageViewStyle;

typedef enum KonySegmentedUIIndicatorType
{
    KonySegmentedUIIndicatorTypeNone = 1,
    KonySegmentedUIIndicatorTypeRowSelect,
    KonySegmentedUIIndicatorTypeRowClick,
}KonySegmentedUIIndicatorType;

typedef enum KonyButtonType
{
    KonyButtonTypeCustom = UIButtonTypeCustom,
    KonyButtonTypeSystem = UIButtonTypeSystem,
    KonyButtonTypeDetailDisclosure = UIButtonTypeDetailDisclosure,
    KonyButtonTypeInfoLight = UIButtonTypeInfoLight,
    KonyButtonTypeInfoDark = UIButtonTypeInfoDark,
    KonyButtonTypeContact = UIButtonTypeContactAdd
}KonyButtonType;

typedef enum KonySignInWithAppleButtonType
{
    KonySignInWithAppleButtonTypeSignIn ,
    KonySignInWithAppleButtonTypeContinue,
    KonySignInWithAppleButtonTypeSignUp,
    KonySignInWithAppleButtonTypeDefault
}KonySignInWithAppleButtonType;

typedef enum KonySignInWithAppleButtonStyle
{
    KonySignInWithAppleButtonStyleWhite,
    KonySignInWithAppleButtonStyleWhiteOutline,
    KonySignInWithAppleButtonStyleBlack
}KonySignInWithAppleButtonStyle;

typedef enum KonySignInWithAppleAuthorizationCredentialState
{
    KonySignInWithAppleAuthorizationCredentialStateRevoked,
    KonySignInWithAppleAuthorizationCredentialStateAuthorized,
    KonySignInWithAppleAuthorizationCredentialStateNotFound
}KonySignInWithAppleAuthorizationCredentialState;

typedef enum KonySignInWithAppleAuthorizationError
{
    KonySignInWithAppleAuthorizationErrorUnknown = 1000,
    KonySignInWithAppleAuthorizationErrorCanceled = 1001,
    KonySignInWithAppleAuthorizationErrorInvalidResponse = 1002,
    KonySignInWithAppleAuthorizationErrorNotHandled = 1003,
    KonySignInWithAppleAuthorizationErrorFailed = 1004
}KonySignInWithAppleAuthorizationError;

typedef enum KonyScreenLevelWidgetHeaderRetainMode
{
    KonyScreenLevelWidgetHeaderRetainModeNone = 1,
    KonyScreenLevelWidgetHeaderRetainModeDefault,
    KonyScreenLevelWidgetHeaderRetainModeAll
}KonyScreenLevelWidgetHeaderRetainMode;

typedef enum KonyWidgetPosition
{
    KonyWidgetPositionNone = 1,
    KonyWidgetPositionHeaderForContainer,
    KonyWidgetPositionHeaderForScreenLevelWidget,
    KonyWidgetPositionFooterForContainer,
    KonyWidgetPositionFooterForScreenLevelWidget
}KonyWidgetPosition;

typedef enum KonyImageGalleryViewType
{
    KonyImageGalleryViewTypeGallery= 1,
    KonyImageGalleryViewTypeHorizontalStrip,
    KonyImageGalleryViewTypeSlot,
    KonyImageGalleryViewTypeLinearView,
    KonyImageGalleryViewTypeRotaryView,
    KonyImageGalleryViewTypeInvertedRotaryView,
    KonyImageGalleryViewTypeCylinderView,
    KonyImageGalleryViewTypeInvertedCylinderView,
    KonyImageGalleryViewTypeCoverFlow,
    KonyImageGalleryViewTypeCoverFlow2,
    KonyImageGalleryViewTypeCustom
    
}KonyImageGalleryViewType;

typedef enum TabViewType
{
    TabViewTypeTabView = 0,
    TabViewTypeCollapsibleView = 1,
    TabViewTypePageView = 2
}
TabViewType;

typedef enum TabViewCollapsibleImagePosition
{
    TabViewCollapsibleImagePositionLeft = 0,
    TabViewCollapsibleImagePositionRight = 1
}
TabViewCollapsibleImagePosition;

typedef enum TabViewCollapsibleTabNameAlignment
{
    TabViewCollapsibleTabNameAlignmentLeft = 0,
    TabViewCollapsibleTabNameAlignmentRight = 1,
    TabViewCollapsibleTabNameAlignmentCentre = 2,
}
TabViewCollapsibleTabNameAlignment;

typedef enum KonyInputAccessoryViewTypes
{
    KonyInputAccessoryViewTypeNextPrevToolbar = 0,
    KonyInputAccessoryViewTypeNone      = 1,
    KonyInputAccessoryViewTypeCancel = 2,
    KonyInputAccessoryViewTypeCustom = 3,
    KonyInputAccessoryViewTypeDefault = 4
}KonyInputAccessoryViewTypes;

typedef enum DataType
{
    UNKNOWN_TYPE,
    INTEGER_TYPE,
    UNSIGNED_INTEGER_TYPE,
    FLOAT_TYPE,
    CHAR_TYPE,
    DOUBLE_TYPE,
    LONG_TYPE,
    SHORT_TYPE,
    BOOL_TYPE,
    OBJECT_TYPE
}DataType;

typedef enum {
    HTTP_READY_STATE_UNSENT = 0,
    HTTP_READY_STATE_OPENED,
    HTTP_READY_STATE_HEADERS_RECEIVED,
    HTTP_READY_STATE_LOADING,
    HTTP_READY_STATE_DONE
} HttpReadyState;


typedef enum {
    HTTP_RESPONSE_TYPE_TEXT = 0,
    HTTP_RESPONSE_TYPE_JSON,
    HTTP_RESPONSE_TYPE_DOCUMENT,
    HTTP_RESPONSE_TYPE_RAWDATA,
    HTTP_RESPONSE_TYPE_BLOB,
    HTTP_RESPONSE_TYPE_ARRAYBUFFER
} HttpResponseType;

typedef enum {
    HTTP_INTEGRITY_CHECK_NOT_DONE = 0,
    HTTP_INTEGRITY_CHECK_SUCCESSFUL,
    HTTP_INTEGRITY_CHECK_FAILED
} HttpIntegrityCheckStatus;

typedef enum {
    NETWORK_STATUS_TYPE_3G = 1,
    NETWORK_STATUS_TYPE_WIFI,
    NETWORK_STATUS_TYPE_ETHERNET,
    NETWORK_STATUS_TYPE_ANY
} NetworkStatusType;

typedef enum AppMenuType : NSInteger{
    KonyAppMenuDefault,
    KonyAppMenuBottom,
    KonyAppMenuTop,
    KonyAppMenuLeft,
    KonyAppMenuRight
}AppMenuType;

typedef enum AppMenuItemAlignment : NSInteger{
    KonyAppMenuItemAlignCenter,
    KonyAppMenuItemAlignBegin,
    KonyAppMenuItemAlignEnd
}AppMenuItemAlignment;

typedef enum
{
    TransitionCurveLinear = 1,
    TransitionCurveEaseIn,
    TransitionCurveEaseOut,
    TransitionCurveEaseInOut
}TransitionCurveType;

typedef enum
{
    AnimationCurveLinear = 1,
    AnimationCurveEaseIn,
    AnimationCurveEaseOut,
    AnimationCurveEaseInOut
}AnimationCurveType;

typedef enum
{
    AnimationExpand = 1,
    AnimationCollapse,
    AnimationReveal,
    AnimationFade,
    AnimationFlipRight,
    AnimationFlipLeft,
    AnimationDefault,
    AnimationNone
}AnimationEffectType;

typedef enum
{
    AnimationSplitReferenceDefault = 0,
    AnimationSplitRefernceByScreenPercentage = 1,
    AnimationSplitRefernceByPresentFormHitPoint = 2,
    AnimationSplitRefernceByPreviousFormHitPoint = 3,
}AnimationSplitRefernceType;

typedef enum
{
    STATUS_BAR_STYLE_DEFAULT = 0,
    STATUS_BAR_STYLE_LIGHT_CONTENT,
    /**
     *FTR1066 - Statusbar Configuration
     *New constant 'STATUS_BAR_STYLE_NONE' introduced, so as to have the form take
     *application level default value or iOS/Kony default value.
     */
    STATUS_BAR_STYLE_NONE
}StatusBarStyleType;

typedef enum
{
    checkBoxSelectionImageAlignmentLeft = 0,
    checkBoxSelectionImageAlignmentRight = 1
}CheckBoxSelectionImageAlignment;

typedef enum KonyDragState
{
    KonyDragStateUnknown,
    KonyDragStateStart,
    KonyDragStateMoving,
    KonyDragStateEnd
}KonyDragState;

typedef enum
{
    AccessibilityOrderModeInheritance, //This value is intended to provide support to pick any app level setting if provided
    AccessibilityOrderModeNative,
    AccessibilityOrderModeCustom,
    AccessibilityOrderModeScreen
} AccessibilityOrderMode;

typedef enum
{
    loadingIndicatorStyleSmall = 0,
    loadingIndicatorStyleBig = 1,
    loadingIndicatorStyleDefault = 2
}LoadingIndicatorStyle;


typedef enum
{
    BACKGROUND_TASK_STATUS_NEW_DATA = 0,
    BACKGROUND_TASK_STATUS_FAILED = 1,
    BACKGROUND_TASK_STATUS_NO_NEW_DATA = 2
}BACKGROUND_TASK_STATUS;

typedef enum
{
    TintModeSourceOver = 1,
    TintModeSourceIn = 2,
    TintModeSourceAtop = 3,
    TintModeScreen = 4,
    TintModeAutomatic = 5,
    TintModeDimmed= 6,
    TintModeNormal =  7
}TintMode;

typedef enum {
    FeedbackTypeNotificationSuccess,
    FeedbackTypeNotificationWarning,
    FeedbackTypeNotificationFailure,
    FeedbackTypeImpactLight,
    FeedbackTypeImpactMedium,
    FeedbackTypeImpactHeavy,
    FeedbackTypeSelection
}FeedbackType;

typedef enum {
    customHapticTypeTransient=0,
    customHapticTypeContinous=1
}customHapticTypes;

typedef enum{
    customHapticParameterIntensity=0,
    customHapticParameterSharpness=1,
    customHapticParameterAttackTime=2,
    customHapticParameterDecayTime=3,
    customHapticParameterReleaseTime=4,
    customHapticParameterSustained=5
} customHapticParameters;

typedef NS_ENUM(NSInteger, ItemDataType) {
    ItemDataTypeJSON = 1,
    ItemDataTypeFile,
    ItemDataTypeText
};

typedef NS_ENUM(NSInteger, CookiesFormat) {
    CookiesInString = 0,
    CookiesInJson
};

typedef NS_ENUM(NSInteger, FileDataVisibility) {
    FileDataVisibilityAll = 0,
    FileDataVisibilityTeam,
    FileDataVisibilityGroup,
    FileDataVisibilityApp,
};
typedef NS_ENUM(NSInteger, SkinProperties){
    SkinPropertiesBackgroundTypeSingleColor = 0,
    SkinPropertiesBackgroundTypeTwoStepGradient = 1,
    SkinPropertiesBackgroundTypeMultiStepGradient = 2,
    SkinPropertiesBackgroundTypeImage = 3,
    SkinPropertiesBorderTypeSingleColor = 4,
    SkinPropertiesBorderTypeMultiStepGradient = 5,
    SkinPropertiesBorderStylePlain=6,
    SkinPropertiesBorderStyleRoundedCorner=7,
    SkinPropertiesBorderStyleCustom=8,
    SkinPropertiesBorderStyleCompleteRoundedCorner,
    SkinPropertiesTwoStepGradientStyleVerticalGradient,
    SkinPropertiesTwoStepGradientStyleVerticalSplit,
    SkinPropertiesMultiStepGradientTypeToTop,
    SkinPropertiesMultiStepGradientTypeToRight,
    SkinPropertiesMultiStepGradientTypeToBottom,
    SkinPropertiesMultiStepGradientTypeToLeft,
    SkinPropertiesMultiStepGradientTypeCustom
};

typedef enum
{
    NSURL_SESSION_TASK_STATE_RUNNING = 0,
    NSURL_SESSION_TASK_STATE_SUSPENDED = 1,
    NSURL_SESSION_TASK_STATE_CANCELING = 2,
    NSURL_SESSION_TASK_STATE_COMPLETED = 3
}NSURL_SESSION_TASK_STATE;

#define KEY_ANIMATION_ANIMATION_DURATION @"animDuration"
#define KEY_ANIMATION_ANIMATION_DELAY @"animDelay"
#define KEY_ANIMATION_ANIMATION_CURVE @"animCurve"
#define KEY_ANIMATION_ANIMATION_EFFECT @"animEffect"
#define KEY_ANIMATION_ANIMATION_HIDE @"hide"
#define KEY_ANIMATION_ANIMATION_FLIP @"flip"
#define KEY_ANIMATION_ANIMATION_REVEAL @"reveal"
#define KEY_ANIMATION_ANIMATION_REMOVE @"remove"
#define KEY_ANIMATION_ANIMATION_CALLBACKS @"animCallBacks"
#define KEY_ANIMATION_ANIMATION_STARTED @"animStarted"
#define KEY_ANIMATION_ANIMATION_ENDED @"animEnded"
#define KEY_ANIMATION_ANIMATION_WIDGET @"animationWidget"
#define KEY_ANIMATION_ANIMATION_CONTEXT @"animationContext"

#define KEY_ANIMATION_BACKUP_FRAME @"animBackupFrame"
#define KEY_ANIMATION_BACKUP_ALPHA @"animBackupAlpha"
#define KEY_ANIMATION_BACKUP_CLIP_TO_BOUNDS @"animBackupClipToBounds"
#define KEY_ANIMATION_BACKUP_TRANSFORM @"animBackupTransform"
#define KEY_ANIMATION_BACKUP_ANCHOR_POINT @"animBackupAnchorPoint"

#define ROOT_RUNTIME_ID 1
//#define WORKER_INSTANCE @"WORKER_INSTANCE"


/********************** Flex Layout Related Constants ********************/

/*!
 Enumeration indicating the different types of Flex Layouts.
 */
typedef NS_ENUM(NSUInteger, FlexLayoutType) {
    FlexLayoutTypeFreeForm,
    FlexLayoutTypeHorizontalFlow,
    FlexLayoutTypeVerticalFlow,
    FlexLayoutTypeResponsiveGrid,
    FlexLayoutTypeUnknown
};

typedef NS_ENUM(NSUInteger, FlexLayoutDisplayUnit) {
    FlexLayoutDisplayUnitDP,
    FlexLayoutDisplayUnitPixel,
    FlexLayoutDisplayUnitPercent,
    FlexLayoutDisplayUnitUnknown
};

/*!
 enum indicating the various constants types that can be held by a <code>FlexLayoutModelProperty</code>.
 */
typedef NS_ENUM(NSUInteger, FlexLayoutModelPropertyConstantType) {
    FlexLayoutModelPropertyConstantTypeUseAvailableSpace,
    FlexLayoutModelPropertyConstantTypeUsePreferredSize,
    FlexLayoutModelPropertyConstantTypeUnknown
};


#define FLEX_LAYOUT_MODEL_PROPERTY_CONSTANT_USE_AVAILABLE_SPACE @"FLEX_AVAILABLE_SPACE"
#define FLEX_LAYOUT_MODEL_PROPERTY_CONSTANT_USE_PREFERRED_SIZE @"FLEX_PREFERRED_SIZE"

typedef NS_ENUM(NSUInteger, FlexScrollDirectionConstantType)
{
    FlexScrollContainerScrollDirectionHorizontal,
    FlexScrollContainerScrollDirectionVertical,
    FlexScrollContainerScrollDirectionBoth,
    FlexScrollContainerScrollDirectionNone
};

typedef NS_ENUM(NSUInteger, FlexLayoutAutogrowMode) {
    FlexLayoutAutogrowModeNone,
    FlexLayoutAutogrowModeHeight,
    FlexLayoutAutogrowModeUnknown
};

/****************** End of Flex Layout Related Constants *****************/

typedef NS_ENUM(NSUInteger, NotificationActionMode)
{
    NotificationActionForeground,
    NotificationActionBackground

};

typedef enum {
    SegmentOperationStateAdd,
    SegmentOperationStateRemove,
    SegmentOperationStateUpdate,
    SegmentOperationStateVisible,
    SegmentOperationStateNone
}SegmentOperationState;


typedef enum {
    VocabularyStringTypeContactName,
    VocabularyStringTypeContactGroupName,
    VocabularyStringTypePhotoTag,
    VocabularyStringTypePhotoAlbumName,
    VocabularyStringTypeWorkoutActivityName,
    VocabularyStringTypeCarProfileName
}VocabularyStringType;

/****************** Push/Local Notification Related Constants *****************/

typedef enum {
    
    AuthorizationStatusNotDetermined,
    AuthorizationStatusDenied,
    AuthorizationStatusAuthorized
    
}NotificationAuthorizationStatus;

typedef enum {
    
    NotificationSettingNotSupported,
    NotificationSettingDisabled,
    NotificationSettingEnabled
    
}NotificationSetting;

typedef enum {
    
    AlertStyleNone,
    AlertStyleBanner,
    AlertStyleAlert
    
}NotificationAlertStyle;

/****************** End of Push/Local Notification Related Constants *****************/

/****************** Notification Type Related Constants *****************/
typedef enum {
    
    ApplicationSettingTypeNotification = 1

}ApplicationSettingType;

/****************** End of Notification Type Related Constants *****************/
typedef NS_ENUM(NSInteger)
{
    PDFDisplaySinglePage = 0,
    PDFDisplaySinglePageContinuous = 1,
    PDFDisplayTwoUp = 2,
    PDFDisplayTwoUpContinuous = 3
    
}PdfDisplayMode;

typedef NS_ENUM(NSInteger)
{
    PDFDisplayDirectionVertical = 0,
    PDFDisplayDirectionHorizontal = 1
    
}PdfDisplayDirection;

typedef NS_ENUM(NSInteger)
{
    PDFDisplayBoxMediaBox = 0,
    PDFDisplayBoxCropBox = 1,
    PDFDisplayBoxBleedBox = 2,
    PDFDisplayBoxTrimBox = 3,
    PDFDisplayBoxArtBox = 4
    
}PdfDisplayBox;

typedef NS_ENUM(NSInteger)
{
    PDFInterpolationQualityNone = 0,
    PDFInterpolationQualityLow = 1,
    PDFInterpolationQualityHigh = 2
    
}PdfInterpolationQuality;

typedef NS_ENUM(NSInteger)
{
    PDFThumbnailPositionTop = 0,
    PDFThumbnailPositionBottom = 1,
    PDFThumbnailPositionLeft = 2,
    PDFThumbnailPositionRight = 3
}PdfThumbnailPosition;

/*!
 Enumeration indicating the preview action type
 */
typedef NS_ENUM(NSUInteger, PreviewActionType) {
    PreviewActionTypeIndividual,
    PreviewActionTypeGroup
};


/*!
 Enumeration indicating the pin image sourcetypes.
 */

typedef NS_ENUM(NSUInteger, PinImageSourceType)
{
    PinImageSourceTypeResource,
    PinImageSourceTypeFile,
    PinImageSourceTypeBase64,
    PinImageSourceTypeImage
};


/*!
 Enumeration indicating Permission authorization type.
 */

typedef NS_ENUM(NSUInteger, PermissionType)
{
    PermissionTypeDenied,
    PermissionTypeGranted,
    PermissionTypeRestricted,
    PermissionTypeNotSupported
};

/*!
 Enumeration indicating the pin image anchor positions.
 */

typedef NS_ENUM(NSUInteger, PinImageAnchor)
{
    PinImageAnchorTopLeft,
    PinImageAnchorTopRight,
    PinImageAnchorTopCenter,
    PinImageAnchorCenter,
    PinImageAnchorBottomLeft,
    PinImageAnchorBottomRight,
    PinImageAnchorBottomCenter,
    PinImageAnchorMiddleLeft,
    PinImageAnchorMiddleRight
};


/*!
 Enumeration indicating the map overlay shapes.
 */

typedef NS_ENUM(NSUInteger, OverlayShapeType)
{
    OverlayShapeTypePolyline,
    OverlayShapeTypePolygon,
    OverlayShapeTypeCircle
};
/*!
 Enumeration indicating the app launch mode internal type
 */

typedef NS_ENUM(NSUInteger, AppLaunchModeInternalType) {
    AppLaunchModeInternalTypeNormal,
    AppLaunchModeInternalTypePushNotification,
    AppLaunchModeInternalTypeURLScheme,
    AppLaunchModeInternalTypeShortcutItem,
    AppLaunchModeInternalTypeUniversalLink,
    AppLaunchModeInternalTypeLibrary
};


/*!
 Enumeration indicating the app launch mode type
 */

typedef NS_ENUM(NSUInteger, AppLaunchModeType) {
    AppLaunchModeTypeNormal = 1,
    AppLaunchModeTypePushNotification = 2,
    AppLaunchModeTypeDeepLink = 3,
    AppLaunchModeTypeUniversalLink = 4,
    AppLaunchModeTypeLibrary = 5
};

/*!
 Enumeration indicating the app widget placement
 */

typedef NS_ENUM(NSUInteger, AppWidgetPosition) {
    AppWidgetHeader,
    AppWidgetFooter
};

/*
 Enumeration Indicating calendar repeat types
 */

typedef NS_ENUM(NSUInteger, CalendarEventRepeatType) {
    CalendarEventRepeatTypeNone,
    CalendarEventRepeatTypeDaily,
    CalendarEventRepeatTypeWeekly,
    CalendarEventRepeatTypeMonthly,
    CalendarEventRepeatTypeYearly
};

/*
 Enumeration Indicating calendar event remove types
 */

typedef NS_ENUM(NSUInteger, CalendarEventRemove) {
    CalendarEventRemoveThis,
    CalendarEventRemoveThisAndFuture
};

typedef NS_ENUM(NSUInteger, AppearanceStyle) {
    AppearanceStyleUnknown,
    AppearanceStyleDark,
    AppearanceStyleLight
};
extern NSString *const DISMISS_SIP_TOSTRING[];

//AWS constants

#define     EVENT_LISTENER_LOADSTART                        @"loadstart"
#define     EVENT_LISTENER_PROGRESS                          @"progress"
#define     EVENT_LISTENER_ABORT                                 @"abort"
#define     EVENT_LISTENER_ERROR                                 @"error"
#define     EVENT_LISTENER_LOAD                                   @"load"
#define     EVENT_LISTENER_TIMEOUT                            @"timeout"
#define     EVENT_LISTENER_LOADEND                          @"loadend"
#define     EVENT_LISTENER_REDAYSTATECHANGE     @"readystatechange"


#define LENGTH_COMPUTABLE @"lengthComputable"
#define TOTAL_DATA_LENGTH @"total" //excpected length
#define DOWNLOADED_DATA_LENGTH @"loaded"

