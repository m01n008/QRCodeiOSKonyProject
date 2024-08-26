/*
 *  KonyUtil.h
 *
 *  Created by Aravind Perumal on 11/18/08.
 *  Copyright 2008 Konylabs. All rights reserved.
 *
 */

#import <UIKit/UIKit.h>
#import "KonyHeader.h"
#import <AVKit/AVPlayerViewController.h>
#import "KonyTypes.h"
#import "Skin.h"
#import "LayoutModel.h"
#import "LuaTable.h"
#import "Runtime.h"

@class WidgetModel;
@class KeyFrameAnimationModel;
@class AnimationHandleProxy;
@class RootContainerWidget;
@class FlexLayoutContainer;
@class SegmentedUIWidget;
// Make this flag to 1 if network call statistics needed
#define NETDEBUG 0
#define LAYOUTDEBUG 0

#define GLOSSY_EFFECT	@"glossyEffect"
#define GLOSSY_NONE		@"none"
#define DDD_EFFECT		@"threeDLook"
#define BUT_PROP_REQUIRED_PARALLEL_EXECUTION @"requiredparallelexecution"

#define TRACE_LOG_FILE  "KonyIphoneTrace.txt"
#define TRACE_LOG_DIR   @"/../"
#define SHOW_GRADIENT_LINE 0
#define MIRROR_FLEX_POSITION_PROPERTIES @"mirrorFlexPositionProperties"
#define MIRROR_CONTENT_ALIGNMENT @"mirrorContentAlignment"
#define MIRROR_FLOW_HORIZONTAL_ALIGNMENT @"mirrorFlowHorizontalAlignment"

// related to keychain API's
#define KONY_KEYCHAIN_ITEM_IDENTIFIER @"identifier"
#define KONY_KEYCHAIN_ITEM_ACCESSIBLITY @"accessibility"
#define KONY_KEYCHAIN_ITEM_ACCESS_GROUP @"accessgroup"
#define KONY_KEYCHAIN_ITEM_SECURE_ACCOUNT @"secureaccount"
#define KONY_KEYCHAIN_ITEM_SECURE_DATA @"securedata"
#define KONY_KEYCHAIN_ITEM_SECURE_ACCOUNT_STATUS @"secureAccountStatus"
#define KONY_KEYCHAIN_ITEM_SECURE_DATA_STATUS @"secureDataStatus"
#define KONY_KEYCHAIN_ITEM_SECURE_ACCESS_CONTROL   @"secureAccessControl"

#define FILE_PROTECTION_NONE                                        @"ProtectionNone"
#define FILE_PROTECTION_COMPLETE                                    @"ProtectionComplete"
#define FILE_PROTECTION_COMPLETE_UNLESS_OPEN                        @"ProtectionCompleteUnlessOpen"
#define FILE_PROTECTION_COMPLETE_UNTIL_FIRST_USERAUTHENTICATION     @"ProtectionCompleteUntilFirstUserAuthentication"

#define FILE_PROTECTION                                             @"FileProtection"
#define RAW_BYTES_FILE_PROTECTION                                   @"RawBytesFileProtection"
#define STORE_FILE_PROTECTION                                       @"StoreFileProtection"

#define APP_LEVEL_HEADER_PLACEMENT              @"header"
#define APP_LEVEL_FOOTER_PLACEMENT              @"footer"
#define ENABLE @"enabled"
#define ADJUST_FORM_HEIGHT @"adjustFormHeight"
#define CONTAINER @"container"
#define TYPE @"type"

//Turn off before production i.e value should be 0
extern BOOL EXCEPTIONALERT;
//Turn on before production i.e value should be 1
extern BOOL GENERICEXCEPTIONALERT;
//Turn off before production i.e value should be 0
extern BOOL GLOBALSMONITORING;

@class KonyForm;
@class CallBack;
@class Widget;
@class ContainerWidget;

typedef enum { IMAGETYPE_NONE = 0, IMAGETYPE_PNG = 1, IMAGETYPE_JPEG =2 } IMAGE_TYPES;

//Class to hold the network connection info to cancel an asynch network call
@interface NetworkConnection : NSObject

@property (nonatomic, strong) NSURLConnection *connection;
@property (nonatomic) BOOL didUserCancel;
@property (nonatomic) BOOL timedout;
@property (nonatomic, strong) NSCondition* networkBlockCondition;

@end

BOOL isSDK80();

NSString* konyBase64Converter(id src);//, size_t srcLen);
NSData* convertBase64ToByteStream(NSString* base64str);
void CGContextAddRoundRect (CGContextRef c, CGRect rect, int corner_radius);
bool copyCStringToCString(char** dst, const char* src);
BOOL areOrintationsSimilar(UIDeviceOrientation orientation1, UIDeviceOrientation orientation2);

///************************************  UrlImageDelegate  ***************************************/

@protocol UrlImageDelegate <NSObject>
@optional
- (void) willStartDownload:(id) urlObject;
- (void) didEndDownload:(id) responseInfo;
@end

/*************************************  ImageManipulator  *****************************************/ 


@interface ImageManipulator : NSObject {
}

+ (UIImage *)blendImage:(UIImage *)img withColor:(UIColor *)color;

+(UIImage *)makeRoundCornerImage : (UIImage*) img  cornerWidth: (float)cornerWidth cornerHeight: (float) cornerHeight;

//+ (UIImage *)makeGlossyImage : (UIImage*) img cornerWidth: (float)width cornerHeight: (float) height;

//+ (UIImage *)makeGlossyImage : (UIImage*) img ;

+ (UIImage *)makeGlossyImage:(UIImage *)img glossyType:(NSString *)type ;

+ (UIImage *)makeGlossyImageIfNeeded:(UIImage *)img iphoneProperties:(NSDictionary *)iphoneProperties ;

+(UIImage *)makeImageWithSize : (CGSize) size andColor: (UIColor*) color;

+(UIImage *)makeDownArrowImageInCenterWithImage : (UIImage*) img  color: (id) color;

+ (UIImage*)scaleImage:(UIImage*)image toSize:(CGSize)size;

@end


@interface KonyNetworkUtil : NSObject 
{
	
	
	
}

+(id) getErrorTable:(int ) error  netError:( NSError*) networkError;
+(id) getJsonData: (NSData*) reqData;
+(id) getJsonDataAsNative: (NSData*) reqData;
/**
@brief It returns the list of cookies stored in NSHTTPCookieStorage
@discussion This method accepts the  URL path for which cookies to read and additional param for type of data expected in return.
The format param is provided for helping the cookies to syn properly between the 2 cookie storages.(between NSHTTPCookieStorage and WKHTTPCookieStorage). The default format of cookie is a string format where user needs to modify it before setting the cookie in other storage.
@param  url The input value representing the  url path for the cookies to retrive.
@param  format The format of cookies either in JSON or String format
@return The list of cookies in array in the desired format specified in input.
*/
+(NSArray*)getCookiesForURL : (NSString *)url inFormat:(CookiesFormat)format;
+(void)setCookiesForURL : (NSString *)url withCookies:(NSArray*)cookiesList;
+ (void)clearAllCookies;
+ (void)clearAllCookiesForURL:(NSString *)URLString;
+ (void)clearCookies:(NSArray *)cookieNamesArray forURL:(NSString *)URLString;

    /*****Bug #60634 fix *****/
+ (BOOL) addSkipBackupAttribute:(BOOL) shouldSkipBackup toItemAtPath:(NSString *) filePathString;

@end


@interface KonyDataBaseUtil : NSObject {
@private
    
}

+(NSDictionary* ) getErrorTable:(int)errorCode DBError:(NSError *)dbError;

@end




@class KonyDataStore;
@class KonyMVCUtils;
@interface KonyUtil : NSObject 
{
	
	
	
}
+(JSObjectRef)getJsObjectForModel:(WidgetModel*)wdgModel;
+ (id)getInstanceForID:(NSString*)ID usingMVCMethod:(NSString *)methodName;
+ (BOOL) containsRestrictedCharecters:(NSString *) restrictedCharecters inProvidedString:(NSString *) inputString;
+(UIImage*)getUIImageFromObject:(id)objectRef;
+(UIImage*)getUIImageFromObject:(id)objectRef inPath:(NSString *)path;
+ (NSDictionary *) getFileProtection:(NSString *)value;
+ (NSArray *)startupFiles;
+ (id)getFormInstanceForFormID:(NSString*)formID;
+ (id)getTemplateInstanceForTemplateID:(NSString*)templateID;
+ (WidgetModel *)getTemplateModelFromTemplateString:(id)templateString forConsumerModel:(id)consumerModel withExistingCache:(id)templateCache;
+ (WidgetModel *)getTemplateModelFromTemplateString:(id)templateString forConsumerModel:(id)consumerModel;
+ (void)executeOnParentUtil:(NSMutableArray*)arguments;
+ (void)destroyControllerInMVCMap:(NSString*)controllerName;
+ (BOOL)executeDeepLinkingMethodForMVCForm:(id)startupForm;
+ (void)executeMVCBackButtonActionWithPrevForm:(id)prevForm;

+ (HttpResponseType)getResponseTypeForMimeType:(NSString *)MIMEType;

+ (BOOL) isValidHexColor:(NSString*) value;

//Sync api to animate a widget given animationModel
+ (AnimationHandleProxy *)triggerAnimationForWidgetModel:(WidgetModel *)widgetModel andAnimationModel:(KeyFrameAnimationModel *)animModel;

//Async api to animate a widget given animationModel
+ (AnimationHandleProxy *)triggerAnimationAsyncForWidgetModel:(WidgetModel *)widgetModel andAnimationModel:(KeyFrameAnimationModel *)animModel;

//Api for animation. The argmnet waitUntilDone decides whether the call will be sync/async
+ (AnimationHandleProxy *)triggerAnimationForWidgetModel:(WidgetModel *)widgetModel andAnimationModel:(KeyFrameAnimationModel *)animModel waitUntilDone:(BOOL)waitUntilDone;

+ (RootContainerWidget *)getRootWidgetForWidget:(Widget *)aWidget;
+(CGRect)currentInterfaceRect;
+(NSLineBreakMode) konywrapToNSLinebreakMode:(KonyTextWrap)wrapping;
+(BOOL) isImageURL:(NSString*) imageName;
+(UIImage*) getImageFromURL:(NSString*) url;
+(CGSize) currentScreenSize;
+(CGSize) currentScreenSizeForPopupWidget;
+(float) sipHeightForcurrentDeviceSize;
+(CGRect) currentScreenRect;
+(CGRect) currentScreenRectForPopupWidget;
+(float) navigationBarHeight;
+(float) tabBarHeight;
+(CGSize)calculateEffectiveFormSizeForCurrentForm;
+(BOOL) isTitleorNavBarPresent;
+(float) statusBarHeight;
+(CGSize) statusBarSize;
+(void) executeApplicationCallback:(NSString*) callbackKey;
/** @method executeApplicationCallbacksForAppState
 *  @breif This method executes all callbacks present in applicationCallbacks list for the specified kappState.
 *  @param input is an appState with string value. ex: ("onForeground","onBackground","isAppLaunchedForInteraction").
 *  @returns nil.
 **/
+(void) executeApplicationCallbacksForAppState:(NSString*)appState;
+ (BOOL) isClosureInProgress;
+ (NSArray *) executeClosureGenericSpacial: (id) closure  values : (NSMutableArray *) values numberOfValues : (int) numberOfValues spawn : (BOOL) spawn;
+ (NSArray *) executeClosureGeneric: (id) closure  values : (NSMutableArray *) values numberOfValues : (NSUInteger) numberOfValues spawn : (BOOL) spawn;
+ (NSArray *) executeClosure: (id) closure spawn : (BOOL) spawn;
+ (NSArray *) checkAndExecuteClosure: (id) closure values : (NSMutableArray *) values numberOfValues :(NSUInteger) numberOfValues spawn : (BOOL) spawn overRide: (BOOL) overRide;
+ (NSArray *) checkAndExecuteClosure: (id) closure values : (NSMutableArray *) values numberOfValues :(NSUInteger) numberOfValues spawn : (BOOL) spawn overRide: (BOOL) overRide withOptions:(NSDictionary *) optionsDict_;

+ (void)executeMVCMethod:(NSString *)methodName withArgs:(NSMutableArray *)args;
+ (void)executeMVCMethod:(NSString *)methodName withArgs:(NSMutableArray *)args onRunTime:(Runtime*)runtime;

+ (void) showAlert:(NSString *)name reason:(NSString *)reason;
+ (void) showAlertOniOS8:(id)alertController;
+ (void) drawShadowedBackgroundWithContext: (CGContextRef) context color: (CGColorRef) color inRect: (CGRect) rect;
+ (void) drawBackgroundWithContext: (CGContextRef) context color: (CGColorRef) color inRect: (CGRect) rect;
+ (void) drawBackgroundWithContextWithNoClip: (CGContextRef) context color: (CGColorRef) color inRect: (CGRect) rect;
+ (void) drawGradientWithContext: (CGContextRef) context topColor: (CGColorRef) tColor bottomColor: (CGColorRef) bColor inRect: (CGRect) rect;
+ (void) drawGradientWithContextWithNoClip: (CGContextRef) context topColor: (CGColorRef) tColor bottomColor: (CGColorRef) bColor inRect: (CGRect) rect;
+ (void) drawSplitWithContext: (CGContextRef) context topColor: (CGColorRef) tColor bottomColor: (CGColorRef) bColor inRect: (CGRect) rect;
+ (void) drawSplitWithContextWithNoClip: (CGContextRef) context topColor: (CGColorRef) tColor bottomColor: (CGColorRef) bColor inRect: (CGRect) rect;
+ (void) saveCurrentState: (CGContextRef) context;
+ (void) restoreState: (CGContextRef) context;
+ (void) clipRect: (CGRect) rect withContext: (CGContextRef) context withRadius: (double) radius;
+ (int) findImageSourceType: (NSString*) source;
+ (void) drawImageWithContext: (CGContextRef) context image: (UIImage*) image inRect: (CGRect) rect;
+ (void) drawBorderLine: (CGRect) rect withContext: (CGContextRef) context withRadius: (double) radius color:(CGColorRef) color;
+ (void) drawBorderLineWithThickness:(CGRect)rect withContext:(CGContextRef)context withRadius:(double)radius color:(CGColorRef)color withThickness:(double)thickness;
+ (void) drawBorderLineWithThicknessTabView:(CGRect)rect withContext:(CGContextRef)context withRadius:(double)radius color:(CGColorRef)color withThickness:(double)thickness;
+ (void) drawBackgroundAsItIsWithContext: (CGContextRef) context color: (CGColorRef) color inRect: (CGRect) rect;
+ (void) drawBackgroundAsItIsWithContextWithNoClip: (CGContextRef) context color: (CGColorRef) color inRect: (CGRect) rect;
+ (NSString *) urlencode: (id) url;
+(BOOL)isIphone5;
+ (NSInteger) getSystemVersionAsAnInteger;
+ (void) validateMasterData: (NSMutableArray *) masterData;
+ (void) validateMasterDataForPicker: (NSMutableArray *) masterData;
+(BOOL) isPad;
+(BOOL)isiOS10AndAbove;
+(BOOL)isiOS7LookAndFeel;
+(BOOL)isiOS11AndAbove;
+(BOOL)isiOS13AndAbove;
+(BOOL)isIphoneX; // Returns true for iPhone X,iPhone XR,iPhone XS and iPhoneXSMAX
+(BOOL)isSafeAreaLayoutRequired;
+(BOOL) isComponentSupportedInSegment;


+(float)getCameraControlsHeight;
+(CGRect) getCameraControlbarRect;
+(CGRect) getCameraRetakebarRect;
+(UIColor*)getColor :(NSString *)colorStr;
+(UIColor*)getColorFromHexString:(NSString*)colorHexString;

//--to draw multi-step gradient at an angle
+(void)drawGradientWithContext:(CGContextRef)context withColors:(NSArray *)colors forLocations:(NSArray *)locations andGradientAngle:(CGFloat)gradientAngle inRect:(CGRect)rect;

//used to calculate start and endpoint in widgets where layers are used for multi-step gradient. Returns an array of the 2 points
+(NSArray *)calculateExtremePointsWithGradientAngle:(CGFloat)gradientAngle :(CGRect) rect;
//to draw a multigradient border 
+(void)createMultiGradientBorderWithContext:(CGContextRef)context withColors:(NSArray *)colors forLocations:(NSArray *)locations gradientAngle:(CGFloat)gradientAngle cornerRadius:(CGFloat)borderGradientRadius borderWidth:(CGFloat)borderGradientWidth inRect:(CGRect)rect;

//--to draw inner widget level shadows (for rounded corner widgets the cornerRadius will be non-zero)
+(void)drawInnerShadowWithContext:(CGContextRef)context withColor:(UIColor *)innerShadowColor shadowRadius:(CGFloat)blurRadius andCornerRadius:(CGFloat)cornerRadius andOffset:(CGPoint)offsetPoint inRect:(CGRect)rect;

//method to set shadow path once the frame of the view is set
+(void)updateShadowPathForView:(UIView *)currentView andSkin:(Skin *)currentSkin withRect:(CGRect)pathBounds;

//Methods to Show and Dismiss Background Screen Saver
+ (void) showBackgroundScreenSaver;
+ (void) dismissBackgroundScreenSaver;
+ (UIBlurEffectStyle) getNativeBlurEffectForKonyBlurEffect;

+ (NSString *) getSplashVideoNameFor:(NSString *) movieFileName;
+ (NSString *) getLaunchImageNameFor:(NSString *) imageName;

+ (BOOL) isWidgetCurrentlyShown: (UIView*) widget;
+(void) calculateSubWidgetMarginsAndPaddingsForWidgets: (NSArray*) widgetList forGivenLength: (float) length;
+(void) calculateSubWidgetMarginsAndPaddings:(LayoutModel*)layoutModel forGivenLength: (float) length;

//	returns default path for KonyDataStore
+(NSString*) defaultDataStorePath;
+(NSString*) getPath:(NSString*) dirName;

//	returns default path for I8nStore
+(NSString*) defaultI18DBPath;

+(NSString*) defaultSkinsPath;

+(NSBundle *)konyJSFrameworkAbsolutePath;

+ (UIInterfaceOrientationMask)getResultingOrientationMaskFromArrayOfOrientations:(NSMutableArray *)supportedOrientationsFormLevel;

+ (BOOL)isAppMenuPresentForCurrentForm;

+ (BOOL) shouldAlwaysRunOnMainThread;

+(void) showNativeForm:(id) formId;

+(CGSize) currentDeviceSize ;
+(CGRect) currentDeviceRectInPixels;
+(CGSize) currentDeviceSizeInPixels;
/**
 @brief Returns origin of leftBarButtonItem custom view. This is a helper method for calculating frame origin for back button from iOS11.
 @return Returns a CGPoint value.
 **/
+ (CGPoint) getBackButtonOrigin;
/**
 @brief Method which specifies whether to swap required flex positional properties and content alignment for RTL. It returns true if    isI18nLayoutConfigEnabled is true, locale level config is specified and widget level retain property is false/not defined.
 @param propertyName: This value will be either mirrorFlexPositionProperties, mirrorContentAlignment or mirrorFlowHorizontalAlignment.
 @param retainValue: This value comes from widgetModel which is the custom value defined by user and is to be retained.
 @param modified: This is a boolean value specifies whether the property is swapped or not.
 @return BOOL value indicating to swap or not.
 **/

+ (BOOL) isRTLSwapRequired:(NSString*)propertyName widgetRetainValue:(BOOL)retainValue isMirrored:(BOOL)mirrored;

/**
 @brief This method checks and applies RTL swap for the model passed as parameter.
 @param widgetmodel
 @return WidgetModel with either swapped or non swapped model.
 **/
+ (WidgetModel*) applyRTLSwappingIfNeeded:(WidgetModel*)model;

/**
 @brief This method swaps left/right values of widgetModel.
 @param WidgetModel.
 @return widgetModel with swapped left/Right values.
 **/
+ (WidgetModel*) swapLeftRightValues:(WidgetModel*)model;
/**
 @brief This method swaps leftPadding/Right Padding values of widgetModel.
 @param WidgetModel.
 @return widgetModel with swapped leftPadding/Right Padding values.
 **/
+ (WidgetModel*) swapPaddingValues:(WidgetModel*)model;
/**
 @brief This method swaps contentALignment values of widgetModel.
 @param WidgetModel.
 @return widgetModel with swapped contentALignment values.
 **/
+ (WidgetModel*) swapContentAlignment:(WidgetModel*)model;


/**
 @brief Performs the selector with the given objects as the arguments on the given target on a background thread.
 
 @param Selector to be performed on the background thread. Note: This can be a static or non static selector.
 @param Target on which the selector has to be performed. This can be a class (for static methods) or object (for instance methods).
 @param Array of the arguments to be passed to the selector.
 
 @return None.
 */
+ (void) performSelectorInBackground:(SEL)aSelector onTarget:(id)target withObjects:(NSArray*)objects;


//Accessibility related utility apis

//Api to convert incoming language specific key names inside the accessibility config dictionary to platform names for ease of parsing
+ (NSMutableDictionary *)convertAccessibilityConfigKeysToFrameworkNames:(NSMutableDictionary *)accConfig forWidgetModel:(WidgetModel *)widgetModel;

//The following group of apis are intended to set up the accessibility properties of an NSObject depending on various flags
+(void) applyAccessibilityProps:(NSMutableDictionary *)accConfig toObject:(NSObject *)anObject;
+(void) applyAccessibilityProps:(NSMutableDictionary *)accConfig toObject:(NSObject *)anObject isContainer:(BOOL)isContainer;
+(void) applyAccessibilityProps:(NSMutableDictionary *)accConfig toObject:(NSObject *)anObject respectTitleOnly:(BOOL)flag;
+(void) applyAccessibilityProps:(NSMutableDictionary *)accConfig toObject:(NSObject *)anObject respectIsAccessibilityElement:(BOOL)flag;
+(void) applyAccessibilityProps:(NSMutableDictionary *)accConfig toObject:(NSObject *)anObject respectTitleOnly:(BOOL)flag1 respectIsAccessibilityElement:(BOOL)flag2;

// MADPIOS-5072: set accessibility traits to an objects
+(void) applyAccessibilityTraits:(NSMutableDictionary *)accConfig toObject:(NSObject *)anObject;
//Introduced for automation sake as the automation scripts were recorded before
//accessibility implementation... Once we invoke accessiblity related iOS apis, the internal hierarchy
//of iOS elements present on screen changes sometimes, causing the pre recorded scripts to fail
//so, we disable these apis while runnung the code for UI automation test
+ (BOOL)isAccessibilityEnabledForFramework;

//Api to reset accessibility properties set to any NSObject
+ (void)resetAccessibilityForObject:(NSObject *)object;

+ (UIView*)accessibilityUtil:(UIView *)checkView;

+ (BOOL)showBackgroundUpdateIndicator;
+ (BOOL)bundledServerTrustCerts;
+ (BOOL)bundledClientTrustCerts;
+ (BOOL)shouldAllowSelfSignedCertificate;
+ (BOOL)shouldAllowBundledWithSystemDefault;
+ (BOOL)shouldAllowBundledOnly;
+ (void)handleAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
+ (void)handleAuthenticationChallengeForSession:(NSURLAuthenticationChallenge *)challenge :(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *credential))completionHandler;
+ (NSUInteger)getIndexOfWidget:(Widget *)widget insideContainer:(ContainerWidget *)container;

+ (CGRect)getBoundsFromFrame:(CGRect)frame;
+ (CGPoint)getCenterFromFrame:(CGRect)frame;

+ (void)updateCenterAndBoundsOfView:(UIView *)view withFrame:(CGRect)frame;
+ (void)updateCenterAndBoundsFromFrame:(CGRect)frame andAnchorPoint:(CGPoint)anchorPoint
                                center:(CGPoint *)center bounds:(CGRect *)bounds;
+ (BOOL)isRectNaN:(CGRect)rect;
+ (BOOL)isPointNaN:(CGPoint)point;
+ (BOOL)isSizeNaN:(CGSize)size;

+ (KonyApplicationState)getKonyApplicationState;
+ (UIBackgroundTaskIdentifier)beginKonyBackgroundTask:(NSArray *)arguments;
+ (void)endKonyBackgroundTask:(NSArray *)arguments;

+ (SegmentedUIWidget *)getComposingSegmentedUIWidgetIfAnyForWidget:(Widget *)aWidget;

+ (void) createRuntimeHandleForObject:(id) object;
+ (void) createRuntimeHandleForWidgetModel:(WidgetModel*) model;
+ (void)handleAuthenticationMethodServerTrustForChallenge:(NSURLAuthenticationChallenge *)challenge withCompletionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *credential))completionHandler;
+ (void)handleAuthenticationMethodServerTrustForChallenge:(NSURLAuthenticationChallenge *)challenge;
+(UIColor*)colorFromHexString:(NSString*) hexStr_;
/// 3DTouch Utils
/**
 * This is a utility method used to check if 3D Touch/Force Touch is available on a device or not
 * @return boolean values indicating support for 3DTouch
 */
+ (BOOL)isForceTouchAvailable;

/**
 * This is a utility function used to convert an array, whose elements can be either a number or a string
 * with displayed unit embedded, into an array of values of specified display unit format. The supported
 * display units are dp, px, %. If value is a number, default unit is dp
 * @param array - an array of values to be converted Ex. ["10%", "10dp", "150px", 200].
 * @param toUnits - the units into which the array values are to be converted.
 * @param referenceSize - the reference size to be used for percentage calculations.
 * @return an array with values converted into specified display unit format.
 */
+ (NSArray *)convertValuesInArray:(NSArray *)array toUnits:(FlexLayoutDisplayUnit)toUnits referenceSize:(CGSize)referenceSize;

/**
 * This is a utility function used to convert an array, whose elements can be either a number or a string
 * with displayed unit embedded, into a CGSize in dp. If value is a number, default unit is dp
 * @param array - an array of values to be converted Ex. ["10%", "10dp", "150px", 200].
 * @param referenceSize - the reference size to be used for percentage calculations.
 * @return a CGSize in dp
 */
+ (CGSize)CGSizeMakeFromArray:(NSArray *)array referenceSize:(CGSize)referenceSize;

/**
 * This is a utility function used to convert an array, whose elements can be either a number or a string
 * with displayed unit embedded, into a CGRect in dp. If value is a number, default unit is dp
 * @param array - an array of values to be converted Ex. ["10%", "10dp", "150px", 200].
 * @param referenceSize - the reference size to be used for percentage calculations.
 * @return a CGRect in dp
 */
+ (CGRect)CGRectMakeFromArray:(NSArray *)array referenceSize:(CGSize)referenceSize;

/**
 * @brief Utility to convert point dictionary into CGPoint in dp.
 * @discussion Used to convert a dictionary, whose elements can be either a number or a string
 * with displayed unit embedded, into a CGPoint in dp. If value is a number, unit is widget's default unit
 * @param pointDict - a dictionary of values to be converted Ex. [x : "10%", y : "10dp"].
 * @param composingWidget - the widget that should act as reference for the conversion.
 * @return a CGPoint in dp
 */
+(CGPoint)CGPointforPointDict:(NSDictionary *)pointDict insideWidget:(Widget *)composingWidget;
+ (CGPoint)CGPointforPointDict:(NSDictionary *)pointDict insideWidget:(Widget *)composingWidget defaultUnit:(FlexLayoutDisplayUnit)unit;
/**
 * @brief Utility to convert size dictionary into CGSize in dp.
 * @discussion Used to convert a dictionary, whose elements can be either a number or a string
 * with displayed unit embedded, into a CGSize in dp. If value is a number, unit is widget's default unit
 * @param sizeDict - a dictionary of values to be converted Ex. [x : "10%", y : "10dp"].
 * @param composingWidget - the widget that should act as reference for the conversion.
 * @return a CGSize in dp
 */
+ (CGSize)CGSizeForSizeDict:(NSDictionary *)sizeDict insideWidget:(Widget *)composingWidget;

/**
 * @brief Utility to convert a value of a specific FlexLayoutPropertyType into dp
 * @discussion Used to convert a property value, which can be either a number or a string
 * with displayed unit embedded, into dp value. If value is a number, unit is widget's default unit
 * @param value - property value to be converted
 * @param propertyType - FlexLayoutPropertyType type of the value to be converted
 * @param composingWidget - the widget that should act as reference for the conversion.
 * @return a converted value in dp
 */
+ (float)convertedValueForPropertyValue:(id)value ofType:(FlexLayoutPropertyType)propertyType insideWidget:(Widget *)composingWidget;
+(void)addAccessibilityIdentifier:(UIView *)rootView andRootWidgetID:(NSString *)rootWidgetID;

/**
 @brief adds protocol dynamically for the given class based on ios version number.
 
 @param protocolName is the name of the protocol which has to be added.
 @param classObject to which the protocol has to be added.
 @param version refers to ios version number.
 
 @return None.
 */

+ (void)addProtocol:(NSString *)protocolName ToClass:(Class)classObject forVersion:(int)version;

+ (void)setWidget:(Widget*) widget viewFrame:(CGRect) frame;

+ (BOOL) isSessionEnabled;
+ (UIFont *) preferredFontForTextStyle:(KonyFontTextStyle) fontTextStyle;
+ (UIFontTextStyle) getPreferredFontTextStyle:(KonyFontTextStyle) textStyle;

#if DEBUGINFO
+ (NSArray *) generateXMLForCurrentForm: (WidgetModel *) rootModel;
+ (NSString*)generateXMLString:(NSMutableDictionary*)xmlObject;
+ (NSMutableDictionary*) createTree:(WidgetModel*)model;
+ (NSMutableDictionary*)createWidgetData:(WidgetModel*)model;
+(NSDictionary*)createPaddingsDict:(WidgetModel*)model;
+(NSDictionary*)createMArginsDict:(WidgetModel*)model;
+(NSDictionary*) createAttributes:(WidgetModel*)model;
#endif

+ (BOOL) isTouchIDAvailable;
+ (CFStringRef) getKeyChainItemAccessibleValue:(KonyKeyChainItemAccessible) keyChainItemAccessValue;
+ (BOOL)isAUserWidget:(Widget *)aWidget;
+ (Widget *)getUserWidgetFromContainer:(FlexLayoutContainer *)container;
/**
 @brief : This function is used to convert the values passed in the form of dp,pixel,% to the native values ie., dp
 @param widget The widget on which the layout values needed
 @param refWdg Reference widget to extract the layout values for the widget passed in param1
 @param valueInString layout value passed in the form of string
 @param layoutProperty type of value to extract
 
 @return coverted value
 */
+ (float)convertLayoutValuesToDpforWidget:(Widget*)widget withrefWidget:(Widget*)refWdg forValue:(id)valueInString layoutProp:(FlexLayoutPropertyType)layoutProperty;
+ (NSArray *)getSeverCertsData;
@end

@interface NSString (KUID)

+ (NSString*)stringWithNewKUID;

@end

@interface NSString (StringManipulations) 

- (BOOL)containsSubString:(NSString*)subString;

@end

@interface NSString (URLStringEncoding)

- (NSString *)encodeImageURLStringIfEnabled;

@end


@interface KonyNetworkManager : NSObject

@property (nonatomic, strong) NSMutableArray *networkCallListeners;

+(KonyNetworkManager *)getSharedNetworkManager;

-(BOOL)isObjectOnNetworkCallListenerQueue:(id)object;

/*-(void)registerNetworkCallListener:(id)object withCtx:(id)ctx;

-(void)unregisterNetworkCallListener:(id)object withCtx:(id)ctx;

-(void)unregisterNetworkCallListenersForObject:(id)object;*/

-(void)goingToMakeNetworkCall;

-(void)completedNetworkCall;

@end




@interface KonyRemoteNotification : NSObject
{
@private
    NSDictionary *callbacksDict;
}

@property (nonatomic, retain) NSDictionary *callbacksDict;

+ (id)sharedObject ;
+ (id)allocWithZone:(NSZone *)zone;

- (id) copyWithZone:(NSZone *) zone;


- (void)setNotificationCallbacks:(NSDictionary *)callbacksDictionary;

@end

@interface KonyLocalNotification : NSObject
{
@private
    NSDictionary *callbacksDict;
}

@property (nonatomic, retain) NSDictionary *callbacksDict;

+ (id)sharedObject ;
+ (id)allocWithZone:(NSZone *)zone;

- (id) copyWithZone:(NSZone *) zone;


- (void)setNotificationCallbacks:(NSDictionary *)callbacksDictionary;

@end

@interface KonyBytesConverter : NSObject
{

}

@property (nonatomic, assign) UIImage * rawImage;

- (id) convertRawBytes :(id)rawbytes SrcImgType:(IMAGE_TYPES)imageTypeSrc DestImgType:(IMAGE_TYPES)imageTypeDest Comp:(float)compression ScaleFactor:(float)scaleFactor;
- (BOOL) validateImageType : (IMAGE_TYPES) imageType;
- (UIImage*) scaleImage:(UIImage*) sourceImage Sf:(float) scaleFactor;
@end

//valid applicaiton callback names
#define APPLICATIONCALLBACK_ONACTIVE		@"onactive"
#define APPLICATIONCALLBACK_ONINACTIVE		@"oninactive"
#define APPLICATIONCALLBACK_ONBACKGROUND	@"onbackground"
#define APPLICATIONCALLBACK_ONFOREGROUND	@"onforeground"
#define APPLICATIONCALLBACK_ONAPPTERMINATE	@"onappterminate"
#define APPLICATIONCALLBACK_ONLOWMEMORY	@"onlowmemory"
#define APPLICATIONCALLBACK_ON_APPLICATION_OPEN_URL @"onapplicationopenurl"
#define APPLICATIONCALLBACK_ON_WATCH_REQUEST    @"onwatchrequest"
#define APPLICATIONCALLBACK_STORE_OVERLAY_EVENT    @"storeoverlayevent"
#define APPLICATIONCALLBACK_ON_PRE_ACTIVITY_REQUEST    @"onpreactivityrequest"
#define APPLICATIONCALLBACK_ON_ACTIVITY_REQUEST    @"onactivityrequest"
#define APPLICATIONCALLBACK_ALLOW_EXTENSIONS	@"shouldAllowExtensions"
#define APPLICATIONCALLBACK_IS_APPLAUNCHED_FOR_INTERACTION    @"isAppLaunchedForInteraction"
#define SETTINGSCHANGE_SETTING @"setting"
#define SETTINGSCHANGE_APPLICATION_APPEARANCE_STYLE @"applicationAppearanceStyle"
#define APPLICATIONCALLBACK_ONSCREENCAPTURE        @"onScreenCapture"
@interface MultiTaskingController : NSObject
{
	NSMutableDictionary* _applicationCallBacks;			/* Dictionary to hold application callbacks */
    NSMutableDictionary *_applicationCallbacksList;     /* Dictionary to hold callbacks from addApplicationCallbacks method */
    NSArray *_registeredSettingsList;
    CallBack *_settingsCallback;
}

+ (id)sharedObject ;									/* always returns the singleton instance of this class */

- (CallBack*) getApplicationCallbackForKey:(NSString*) callbackKey;
- (void) setApplicationCallback:(CallBack*) callback forKey:(NSString*) callbackKey;
/** @method addApplicationCallbacks
 *  @breif This method adds application callbacks for the specified appState.
 *  @param Takes two parameters appState which is a string and other is dictionary of callbacks.
 *  @returns nil.
 **/
- (void) addApplicationCallbacks:(NSDictionary*) callbacks forAppState:(NSString*) appState;
/** @method getApplicationCallbackForAppState
 *  @breif This method returns the dictionary of callbacks for the specified appState.
 *  @param input is a String with appState.
 *  @returns NSDictionary of callbacks.
 **/
- (NSDictionary*) getApplicationCallbackForAppState:(NSString*) appState;
/** @method removeApplicationCallbacks
 *  @breif This method removes application callbacks from callbacks dictionary based on callbacks keys provided by user for each app state.
 *  @param input contains a dictionary. The dictionary contains appStates(onForeground, onBackground etc) as keys and list of callback keys as value.
 *  @returns nil.
 **/
- (void) removeApplicationCallbacks:(NSDictionary*) callbackKeyList;
- (void) executeSettingsChangeCallback:(NSString*) settingName withSettingValue:(NSObject*) settingValue;
/** @method registerOnSettingsChangeCallback
*  @breif This method register for device settings change callback for the specified list of settings.
*  @param Takes two parameters settingList which is a array and other is JSFunction of callback.
*  @returns nil.
**/
- (void) registerOnSettingsChangeCallback :(NSArray *)settingList :(JSFunction *)callback;
@end


//Category for UIImage to return 2x images for the iPhone 4.0 and above
//as the initWithContentsOfFile and ImageWithContentsOfFile APIs are not working as expected

@interface UIImage (TPAdditions)

+ (UIImage*)imageWithContentsOfResolutionIndependentFile:(NSString *)path;

+ (NSDictionary*)imageWithContentsOfResolutionIndependentFileForGifImage:(NSString *)path;

+ (UIImage *)animatedImageWithAnimatedGIFData:(NSData *)data :(CGFloat)imageScale;
+ (NSDictionary*)animatedImageWithAnimatedGIFDataReturningImageArray:(NSData *)data :(CGFloat)imageScale;
@end

@interface MediaPlayer : NSObject
{
	
@public
	
    AVPlayerViewController * mAVViewPlayer;
	
}

-(void)playVideo:(NSString *)urlString;
- (void) movieDidExitFullscreen:(NSNotification*) aNotification;

@end

//  an API that generates cryptographically secure random numbers.
@interface CryptoRandom : NSObject
+(long) getLongSecureRandom;
@end





