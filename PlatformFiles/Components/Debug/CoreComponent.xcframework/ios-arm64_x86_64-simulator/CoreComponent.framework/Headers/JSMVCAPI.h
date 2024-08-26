//
//  JSMVCAPI.h
//  VM
//
//  Created by Dhananjay on 08/09/16.
//
//

#import <Foundation/Foundation.h>
#import "JSStaticAPI.h"

@interface JSMVCAPI : NSObject <JSStaticAPI>

+ (NSArray *)showForm:(NSArray *)args;
+ (NSArray *)destroyForm:(NSArray *)args;
/** @method setAppLevelWidget
 *  @brief sets widget at app level
 *  @param argumentss  A array of arguments from JSRuntime.
 *  @returns integer indicating the error value.
 */
+ (NSArray *) setAppLevelWidget: (NSArray *)arguments;
@end
