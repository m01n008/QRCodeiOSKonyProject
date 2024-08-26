//
//  I18nFile.h
//  VM
//
//  Created by Krishna Kiran Kasturi on 23/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "I18nStoreProtocol.h"

@class LuaTable;

/**
 *	@Brief	File/Archive based I18n Store .
 */
@interface I18nFile : NSObject <I18nStoreProtocol>{

}

+ (void) setResourceBundle: (LuaTable*) resourceBundleLuaTable forLocale: (NSString*) localeID;
+ (void) updateResourceBundle: (LuaTable*) resourceBundleLuaTable forLocale: (NSString*) localeID;
+ (void) deleteResourceBundle: (NSString*) localeID;
+ (NSString*) getLocalizedString: (NSString*) i18nKey forLocale:(NSString*) localeID;
+ (BOOL) isResourceBundlePresent: (NSString*) localeID;
//Returns the NSBundle corresponding to the localeID specified
+ (LuaTable*) getLuaTable: (NSString*) pLocaleID;
+ (BOOL) isTableExists: (NSString*) tableName;


@end
