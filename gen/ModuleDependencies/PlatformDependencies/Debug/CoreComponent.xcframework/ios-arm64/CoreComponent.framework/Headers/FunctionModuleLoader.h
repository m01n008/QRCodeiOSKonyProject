//
//  FnModuleLoader.h
//  VM
//
//  Created by Girish Haniyamballi on 20/05/14.
//
//

#import <Foundation/Foundation.h>
#import "JSUtil.h"

@interface FunctionModuleLoader : NSObject

- ( BOOL ) loadFunctionalModule:( NSString* ) moduleName inRuntime:(Runtime*) jsRuntime;
- ( BOOL ) loadStartupModules ;

@end
