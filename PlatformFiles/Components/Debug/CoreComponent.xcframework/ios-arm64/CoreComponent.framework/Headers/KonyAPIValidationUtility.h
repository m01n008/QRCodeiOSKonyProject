//
//  KonyAPIValidationUtility.h
//  VM
//
//  Created by KH707 on 24/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

//API Names : Use camel case, as we will be using all the internal implementations (for e.g : keys in the dictionary ) as camelCase only.
#define SHOW_LOADING_SCREEN @"showLoadingScreen" 
#define CONFIG_KEYS                     @"ConfigKeyMappings"

#import <Foundation/Foundation.h>
#import "LanguageContext.h"

@interface KonyAPIValidationUtility : NSObject{
    
    @private
        NSMutableDictionary  *apiInfoDict; //This one will contain all the API (available in the plist) with respective ConfigKeys object as value
}

+ (KonyAPIValidationUtility*) sharedInstance;

- (void) initWithLanguageContext: (LanguageContext*) langContext ;
- (NSString*)getConfigKeyForMappedKey:(NSString*)mappedKeyReceived forAPI:(NSString*)APIName;
- (NSString*)getMappedKeyForConfigKey:(NSString*)configKeyReceived forAPI:(NSString*)APIName;
- (NSDictionary*)getMappedKeysDictionaryForAPI:(NSString *)APIName forDict:(NSMutableDictionary*)dict;



@end


@interface APIInfoClass : NSObject{
    
    @private
    
        NSDictionary *configKeyDict;
        NSString *name;
}

-(APIInfoClass*)initWithDictionary:(NSDictionary*)apiInfoDict ForAPIName:(NSString*)apiName;
@property(nonatomic,retain)NSDictionary *configKeyDict;
@property(nonatomic,retain)NSString *name;


@end
