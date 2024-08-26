//
//  I18nDB.h
//  VM
//
//  Created by Sunil Phani Manne on 28/05/10.
//  Copyright 2010 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "I18nStoreProtocol.h"

#define KEY				@"key"
#define VALUE			@"value"
#define KEYDATATYPE		@"VARCHAR"
#define VALUEDATATYPE	@"VARCHAR"

/**
 *	@Brief	SQLite based I18n Store
 */	
@interface I18nDB : NSObject <I18nStoreProtocol> {
//@private:
//	PLSqliteDatabase* db;
	
}

//Connection related
+ (BOOL) openDBConnection;
+ (void) closeDBConnection;

//CRUD Related
+ (BOOL) createI18nTable: (NSString*) tableName;
+ (BOOL) insertInToTable: (NSString*) tableName data: (LuaTable*) data;
+ (BOOL) updateTable: (NSString*) tableName data: (LuaTable*) data;
+ (BOOL) deleteTable: (NSString*) tableName;
//Utility methods
+ (BOOL) isTableExists: (NSString*) tableName;
+ (LuaTable*) getDataForAllKeys: (NSString*) tableName;
+ (NSString*) getStringForKey: (NSString*) key fromTable: (NSString*) tableName;


+ (void) setResourceBundle: (LuaTable*) resourceBundleLuaTable forLocale: (NSString*) localeID;
+ (void) updateResourceBundle: (LuaTable*) resourceBundleLuaTable forLocale: (NSString*) localeID;
+ (void) deleteResourceBundle: (NSString*) localeID;
+ (NSString*) getLocalizedString: (NSString*) i18nKey forLocale:(NSString*) localeID;
+ (BOOL) isResourceBundlePresent: (NSString*) localeID;
//Returns the NSBundle corresponding to the localeID specified
+ (LuaTable*) getLuaTable: (NSString*) pLocaleID;
+ (BOOL) isTableExists: (NSString*) tableName;


// KonyI18n protocol specific apis

@end
