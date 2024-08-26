//
//  KonyI18n.h
//  VM
//
//  Created by SunilPhani on 17/12/09.
//  Copyright 2009 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LuaTable.h"
#import "I18nStore.h"


#ifndef DEFAULT_I8NSTORE
	#define	DEFAULT_I8NSTORE	KonyI18nStoreFile
#endif

#define LPROJ_EXTENSION      @".lproj"
#define BUNDLE_RESOURCE_FILE @"Localizable.strings"
#define I18N_DEVICE_LOCALE_INFO_KEY_LANGUAGE    @"language"
#define I18N_DEVICE_LOCALE_INFO_KEY_COUNTRY     @"country"
#define I18N_DEVICE_LOCALE_INFO_KEY_NAME        @"name"
#define I18N_DEVICE_LOCALE_INFO_KEY_VARIANT     @"variant"
#define I18N_DEVICE_LOCALE_INFO_KEY_SCRIPT     @"script"
#define BUNDLE_LOCALIZE_RESOURCES @""
#define KonyCurrentLocaleDidChangeNotification @"KonyCurrentLocaleDidChangeNotification"

/**
 *	@Brief	This is a stateless object responsible for  I18n funcationalities.
 *	
 *	It supports storing ,retriving and deleting I18n content. 
 *	I18n content is of two types (as of now) - Strings and Images.
 *		Strings: I18n Strings are stored in two persistant stores a) preloaded bundles (lproj files)	b) I18nStore (dynamically saved).
 *		Images : I18n images are stored seperately in I18n Image store (file based).
 */
@interface KonyI18n : NSObject {

}

/* Gets the Localized version of the string for the given i18nKey in the currentLocale.
 The i18nKey is first looked up in the local DB, if found returns the corresponding value.
 If not found in the local DB, the resourceBundle corresponding to the locale is searched for the given i18nKey
 to return the corresponding value. If the i18nKey is not found in the both the places then returns nil
 */ 
+ (NSString*) getLocalizedString: (NSString*) i18nKey;

+ (UIImage*) getLocalizedImage: (NSString*) imageName;

+ (UIImage *)getLocalizedImage: (NSString*) imageName inPath:(NSString *)path;
+ (NSBundle*) getResourceBundleForLocaleID: (NSString*) localeID;
+ (NSDictionary*) getImageForGivenGifImageName: (NSString*) imgName inPath:(NSString *)path;

//Returns the current locale
+ (NSString*) getCurrentLocale;

//Checks whether the ResourceBundle for the DeviceLocale is found or not. If found, sets the DeviceLocale as the 
//current locale else falls back to the Current Locale
+ (void) setCurrentLocale;

//Sets a given LocaleID as the current Locale
+ (void) setCurrentLocale: (NSString *) localeID;

//Sets a given LocaleID as the default Locale
+ (void) setDefaultLocale: (NSString*) localeID;

//Returns true is the resource bundle table is present in the DB else false
+ (BOOL) isResourceBundlePresent: (NSString*) localeID;

+ (NSMutableDictionary*) getWidgetContent: (NSMutableDictionary*) widgetContent;

+ (void) setResourceBundle: (LuaTable*) resourceBundleLuaTable forLocale: (NSString*) localeID ;

+ (void) updateResourceBundle: (LuaTable*) resourceBundleLuaTable forLocale: (NSString*) localeID ;

+ (void) deleteResourceBundle: (NSString*) localeID ;

+ (NSArray *) getSupportedDeviceLocaleIdentifiers;

+ (NSArray *) getSupportedDeviceLocalesInfo;

+ (BOOL) isLocaleSupportedByDevice: (NSString *)localeID;

// Internal methods ( ideally shud be in private headers).

+ (NSString*) getLocalizedStringInternal: (NSString*) i18nKey;

+ (NSString*) getLocalizedStringFromResourceBundle: (NSString*) i18nKey;

+ (UIImage*) getImageFromFolder: (NSString*) imagePath;

//Returns the Device locale set at the Iphone OS level
+ (NSString*) getDeviceLocale;

+ (void) postSetDefaultLocale;

//Constructs the ISO Standard LocaleID from the Iphone language and Iphone Locale ID
+ (NSString*) constructISOLocaleID: (NSString*) iphoneLanguage iphoneLocaleID: (NSString*) iphoneLocaleID;

//Preprocesses the localeID - removes the hyphens present in the localeID
+ (NSString*) preprocessLocaleID: (NSString*) originalLocaleID;

//Util Functions to Create, Update, Delete ResourceBundles in DB
+ (void) setResourceBundleInDBCache: (LuaTable*) resourceBundleLuaTable forLocale: (NSString*) localeID;

+ (BOOL) isResourceBundlePresentOnFileSystem:(NSString *)localeID;
+ (BOOL) isCurrentResourceBundlePresent;

+ (NSString*) getResourceBundlePath: (NSString*) localeID;

+ (NSString*) chopTheRegionFromLocaleID: (NSString*) localeID;

+ (NSString*) readString: (NSString*) i18nKey fromFile: (NSString*) fileName;

+ (void) synchI18nDBCache;
+ (void) synchI18nFileCache;
+ (void) initializeI18nDBCache;
+ (void) initializeI18nFileCache;
+ (void) updateStringInI18nDBCache: (NSString*) str forKey: (NSString*) i18nKey forLocale: (NSString*) localeID;
+ (void) updateStringInI18nFileCache: (NSString*) str forKey: (NSString*) i18nKey forLocale: (NSString*) localeID;
+(void) cleanCache;

+ (BOOL) isKeyAlreadyPresentInDB: (NSString*) key;
+ (BOOL) convertI18nStore:(KONYI18nStorage) fromType to:(KONYI18nStorage)toType;
@end
