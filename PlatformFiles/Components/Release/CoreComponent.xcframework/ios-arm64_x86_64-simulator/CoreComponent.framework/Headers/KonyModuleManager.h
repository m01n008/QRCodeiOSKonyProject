//
//  KonyModuleManager.h
//  VM
//
//  Created by KH206 on 08/04/15.
//
//

#import <Foundation/Foundation.h>
#import "KonyModuleManagerConstants.h"

@interface KonyModuleManager : NSObject

+(instancetype) sharedManager;

-(void) loadModule:(NSString*) moduleName;
-(void) loadModule:(NSString*) moduleName withConfig:(NSDictionary*) configDict;

@end
