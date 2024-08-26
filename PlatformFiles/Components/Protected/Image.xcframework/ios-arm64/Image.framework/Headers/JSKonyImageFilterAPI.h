//
//  JSKonyImageFilterAPI.h
//  VM
//
//  Created by Prabhakar K on 15/09/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSStaticAPI.h>

@interface JSKonyImageFilterAPI : NSObject<JSStaticAPI>
+(id) createFilter:(NSArray*) arguments;
@end
