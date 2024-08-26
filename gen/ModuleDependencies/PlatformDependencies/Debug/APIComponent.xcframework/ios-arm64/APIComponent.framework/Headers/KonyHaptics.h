//
//  KonyHaptics.h
//  APIComponent
//
//  Created by Naveen Patnana on 06/01/20.
//  Copyright © 2020 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreHaptics/CoreHaptics.h>
#import <CoreComponent/CoreComponent.h>
/*!
@class KonyHaptics

@brief The KonyHaptics class

@discussion This class was designed and implemented to create patterns and trigger it.

@superclass NSObject
*/

NS_ASSUME_NONNULL_BEGIN

API_AVAILABLE(ios(13.0))
@interface KonyHaptics : NSObject
{
    NSMutableArray* eventWell;
    CHHapticPattern *pattern;
}
@property (nonatomic,strong) CHHapticEngine* engine;    
+(NSArray*)isDeviceCompatible:(NSArray*)args;
+(void)remoteStart:(NSArray*)args;
-(void)createEventSet:(NSArray*)args;
-(void) createPatternAndTrigger;

@end

NS_ASSUME_NONNULL_END
