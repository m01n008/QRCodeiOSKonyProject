
#ifndef _KONYWRAPPER_H
#define _KONYWRAPPER_H

// Include files here

#import "KonyWrapperDS.h"
#import "KonyContainer.h"

@class SegmentedUI;
@class SingleItemPicker;
@class MultiItemPicker;
@class KonyToggleView;
@class KonyTabBar;
@class LuaTable;
//@class LuaClosure;
@class CallBack;
@class LightStreamClient;
//@class KonyCheckBoxGroup;
@class OnScreenWheelWidget;
@class SUIwithPageControl;
@class AsyncConnection;
@class KonyLocationFinder;
@class KonyWebSQLDB;
@class SUIWithMultipleViews;



//@interface SkinContainer : NSObject
//{
//	AppleSkin *skin;
//}
//
//@property (readonly) AppleSkin *skin;
//
//- (id) initWithSkin : (AppleSkin *) tmpSkin;
//
//@end



BOOL	konyAddAddressInfo(AppleAddressInfo* addrInfo);
BOOL	konyDeleteRecord(NSString* key);


void	addAllImageToKonyImageAlbum(KonyWidgetType widType, id	imageGalleryId, NSMutableArray*	data, NSString* urlString , NSUInteger luaTableSize, void* userObjectTable);
void	removeAllImageFromKonyImageAlbum(KonyWidgetType widType, id	imageGalleryId);
void	removeImageAtKonyImageAlbum(KonyWidgetType widType, id	imageGalleryId, NSUInteger imgIndex);

//void	checkTypeAppleAdBar(PAAdBar aAdWidget);       //TODO:-   //????
//void*	createKonyAdBar(PAAdBar aAdBar);
//
//
//void*	createKonySlider(KONYWIDGETTYPE widType, PASlider aSlider);
//id      createKonyDataGrid(ADataGrid* aTable);
//
//
//void	convertTypeKonyCameraToAppleCamera(PACamera aCam);
//void*	createKonyCamera(PACamera aCam);

//void	setKonyAppMenu(NSMutableArray* menu, AppleSkin* skin, AppleSkin* onFocusSkin);
void	konySetAppMenuFocusItem(int index);
void	konyShowAppMenuItems (LuaTable* menuItemIDs );
void	konyHideAppMenuItems (LuaTable* menuItemIDs );

BOOL	konySendSMS(NSString *number, NSString* text);
void	konyDial(NSString* number);
KonyOpenMailOutParam*    konyOpenMail( NSArray *to, NSArray *cc, NSArray * bcc, NSString *subject, NSString * body, BOOL isBodyHtml, NSArray * attachments );

BOOL	konyAddAddressInfo(AppleAddressInfo* appleAddrInfo);
BOOL	konyDeleteRecord(NSString* personName);

//void	checkTypeAppleTab(PATab aTab );
//id		createKonyTabBar(PATab  aTab);


//id createKonyPCSUI(KONYWIDGETTYPE widtype, PASUI pSui);
//id createKonyMVSUI(PASUI pSui, NSString* carouselType);
//SingleItemPicker*	createSingleItemPicker( KONYWIDGETTYPE widtype, PASIP pSip);
//MultiItemPicker*	createMultiItemPicker( KONYWIDGETTYPE widtype, PASIP pMip);
//KonyToggleView* createKonyToggleView( KONYWIDGETTYPE widtype, PASIP pSip);
////KonyCheckBoxGroup* createTableCheckBox (KONYWIDGETTYPE widtype, PASIP pMip);
//OnScreenWheelWidget* createOnScreenWheelWidget( KONYWIDGETTYPE widtype, PASIP pSip);

NSMutableDictionary* konyFindRecord(NSString* personName, NSUInteger* count, BOOL needDetails);

KonyLocationOutParam*	konyFindLocation(void);


//BUGFIX 79365:Converting 3rd argument to NSDictionary with 2 properties(widgetref and compressionlevel)
KonyMediaGalleryOutParam* konyOpenMediaGallery(CallBack *onMediaSelect, NSDictionary *queryContext, NSMutableDictionary *PSP);

void konyRegisterForNotification( CallBack *, CallBack *, NSString * ) ;

//void konySetPushNotificationCallbacks(LuaTable *);

//id createKonyMapWidget(AMap* aMap);

//void showKonyLoadingScreen( NSString *displayText, PAppleSkin skin, Boolean showInFullScreen, Boolean isScreenBlocked, Boolean showProgressIndicator, NSDictionary *iPhoneProps );

void dismissKonyLoadingScreen();

//id createKonyWebControl(AWebControl * aWebControl);
LuaTable* convertToLuaTableFromDict(NSDictionary* dict);

LuaTable* convertToLuaTableFromArray(NSArray* array);

//id createKonySeatMap(ADataGrid* aTable);

void konySetApplicationCallbacks(NSDictionary* callbacksInfo);
void konyAddApplicationCallbacks(NSDictionary *callbacksInfo);

NSDictionary* konyGetApplicationCallbacks(NSArray* callbacksKeys);

void konySetApplicationBadgeValue(NSString *value);

NSString* konyGetApplicationBadgeValue();

NSMutableDictionary* createResultErrorDictionary(NSUInteger error,  NSError* networkError);

#endif
	
