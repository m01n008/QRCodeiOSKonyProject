//
//  I18nStoreProtocol.h
//  VM
//
//  Created by Krishna Kiran Kasturi on 28/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "I18nStoreProtocol.h"


@class LuaTable;

@protocol I18nStoreProtocol

@required
+ (void) setResourceBundle: (LuaTable*) resourceBundleLuaTable forLocale: (NSString*) localeID;
+ (void) updateResourceBundle: (LuaTable*) resourceBundleLuaTable forLocale: (NSString*) localeID;
+ (void) deleteResourceBundle: (NSString*) localeID;
+ (NSString*) getLocalizedString: (NSString*) i18nKey forLocale:(NSString*) localeID;
+ (BOOL) isResourceBundlePresent: (NSString*) localeID;
//Returns the NSBundle corresponding to the localeID specified
+ (LuaTable*) getLuaTable: (NSString*) pLocaleID;
+ (BOOL) isTableExists: (NSString*) tableName;

@end
