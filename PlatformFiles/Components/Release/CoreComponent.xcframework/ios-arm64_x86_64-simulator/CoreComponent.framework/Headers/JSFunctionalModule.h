//
//  JSFunctionalModuleAPI.h
//  VM
//
//  Created by Girish on 14/05/14.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSStaticAPI.h"

@interface JSFunctionalModuleAPI :NSObject <JSStaticAPI>

// Methods are moved to CommonApplicationAPI.h

/** @method loadFunctionalModule
 *  @brief Loads the given functional module into the VM
 *  @param modulename:  String – Unique Name of the module which is defined in functionaModules.xml
 *  @returns nil.
 **/
+ (NSArray *) loadFunctionalModule: (NSArray *) arguments;

/** @method loadFunctionalModuleAsync
 *  @brief Loads the given functional module into the VM asynchronously
 *  @param modulename:  String – Unique Name of the module which is defined in functionaModules.xml.
 *  @param successcallback: Callback which will be invoked after successful load of module files.
 *  @param errorcallback:  Callback which will be invoked if there are any issue while loading module files.
 *  @returns nil.
 **/
+ (NSArray *) loadFunctionalModuleAsync: (NSArray *) arguments;


@end
