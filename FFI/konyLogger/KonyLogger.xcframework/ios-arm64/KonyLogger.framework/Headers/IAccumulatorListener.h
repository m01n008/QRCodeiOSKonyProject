//
//  IAccumulatorListener.h
//  Logger
//
//  Created by Harshini Bonam on 09/09/16.
//  Copyright © 2016 kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LogStatement.h"

@class LogAccumulator;

@protocol IAccumulatorListener <NSObject>

@required
/**-----------------------------------------------------------------------------
 * @name flushEventReveived method.
 * @param accumulator The event raiser instance.
 * @param context The context object containing the log statements information.
 * -----------------------------------------------------------------------------
 */

- (void)accumulator:(LogAccumulator *)accumulator
 flushEventReceived:(NSDictionary *)context;
- (void)accumulator:(LogAccumulator *)accumulator
   receivedStatement:(LogStatement *)statements;

@end
