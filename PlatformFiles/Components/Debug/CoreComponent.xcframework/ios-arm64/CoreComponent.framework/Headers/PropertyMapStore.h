//
//  PropertyMapStore.h
//  VM
//
//  Created by KH206 on 14/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PropertyMap.h"
#import "KonyTypes.h"
#import "LanguageContext.h"

@interface PropertyMapStore : NSObject
{
    NSMutableDictionary *propertyMapDict;
    LanguageContext *languageContext;
}

+ (void) resetSharedInstance;
- (id) initWithLanguageContext: (LanguageContext*) langContext;
+ (PropertyMapStore*) sharedInstance;
- (PropertyMap*) getPropertyMapForWidgetType: (KonyWidgetType) widgettype;

@end
