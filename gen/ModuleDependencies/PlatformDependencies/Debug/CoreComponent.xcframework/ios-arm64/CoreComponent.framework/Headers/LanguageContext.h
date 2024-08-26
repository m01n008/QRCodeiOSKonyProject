//
//  LanguageContext.h
//  VM
//
//  Created by KH206 on 13/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"

@interface LanguageContext : NSObject
{
    KonyLanguageType languageType; 
}

@property (nonatomic, readonly) KonyLanguageType languageType;

+(LanguageContext*) sharedContext;

+(KonyLanguageType) currentLanguage;

+(void) setLanguageType: (KonyLanguageType) newLanguageType;

@end
