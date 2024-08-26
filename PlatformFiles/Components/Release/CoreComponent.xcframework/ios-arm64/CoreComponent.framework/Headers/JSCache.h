//
//  JSCache.h
//  konylib
//
//  Created by Praveen.kothapeta on 08/11/17.
//

#import <Foundation/Foundation.h>

@interface JSCache : NSObject

+(void) setMemoryAndDiskCapacity:(NSArray*)args;
+(void) setCacheConfig:(NSArray*)arguments;
+(NSArray*) getCurrentMemoryUsage:(NSArray*)args;
+(NSArray*) getCurrentDiskUsage:(NSArray*)args;
+(NSArray*) getDiskCapacity:(NSArray*)args;
+(NSArray*) getMemoryCapacity:(NSArray*)args;

@end
