//
//  I18nStore.h
//  VM
//
//  Created by Krishna Kiran Kasturi on 22/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "I18nDB.h"
#import "I18nFile.h"

#ifndef I18nDBFile
#define	I18nDBFile	[[KonyUtil defaultI18DBPath] stringByAppendingPathComponent:@"I18nDB.sql"]
#endif


typedef enum KONYI18nStorage
{
	KonyI18nStoreSQLite = 1,	/**< SQLIte DB based I18nStore */
	KonyI18nStoreFile = 2		/**< File (plist/archive) based I8nStore */
}KONYI18nStorage;

/**
 *	@Breif	This is stateless class that provides different implementations of I8nStore.
 *	As of now, I8n data is stored in DB (SQLite) and File based Store (plist/archive).
 *	Note, KONYI18nStorage is not base class for different implementations.
 *	This does not implement the I18nStoreProtocol but uses the ones that implement.
 */
@interface I18nStore : NSObject {

}

+ (void) setResourceBundleInI8nStore: (LuaTable*) resourceBundleLuaTable forLocale: (NSString*) localeID forStorageType:(KONYI18nStorage) storeType;

+ (void) updateResourceBundleInI8nStore: (LuaTable*) resourceBundleLuaTable forLocale: (NSString*) localeID forStorageType:(KONYI18nStorage) storeType;

+ (void) deleteResourceBundleInI8nStore: (NSString*) localeID forStorageType:(KONYI18nStorage) storeType;

+ (NSString*) getLocalizedStringFromI8nStore: (NSString*) i18nKey forStorageType:(KONYI18nStorage) storeType forLocale:(NSString*)localeID;

+ (BOOL) isResourceBundlePresentInI18nStore: (NSString*) localeID forStorageType:(KONYI18nStorage) storeType;

+ (LuaTable*) getLuaTableFromI18nStore: (NSString*) pLocaleID forStorageType:(KONYI18nStorage) storeType;

+(BOOL) isI8nStoreSQLite;

//Merges the given LuaTable with the Delta table. The superset is returned after merging.
+ (LuaTable*) mergeLuaTable: (LuaTable*) originalTable withDeltas: (LuaTable*) deltaTable;

+ (BOOL) isTableExistsInStore: (NSString*) tableName forType:(KONYI18nStorage) storeType;

+ (void) synchI18nStoreCacheforStorageType:(KONYI18nStorage) storeType;

@end
