//
//  BaseLogPersister.h
//  Logger
//
//  Created by Harshini Bonam on 09/09/16.
//  Created by Harshini Bonam on 09/09/16.
//  Copyright © 2016 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FormatError.h"
#import "PersistError.h"
#import "IAccumulatorListener.h"

@class LogStatement;

typedef void(^PersistStatusBlock)(BOOL success, NSArray <LogStatement *> *statements);

@interface BaseLogPersister :NSObject <IAccumulatorListener>

@property (nonatomic, copy)PersistStatusBlock statusBlock;

- (instancetype)initWithQueue:(int)queueType;

- (instancetype)initWithLoggerName: (NSString *)loggerName
                         WithQueue:(int)queueType;

- (NSString *)format:(LogStatement *)statement
               error:(FormatError **)error;

- (void)persist:(NSString *)statementString
          error:(PersistError **)error;

- (void)persistContext:(NSDictionary *)context;

- (void)formatAndPersist:(NSArray <LogStatement *> *)statements;

- (void) executeStatusBlock:(BOOL)success
                           :(NSArray <LogStatement *> *)statements;

- (NSString *) getLoggerName;

- (dispatch_queue_t)getPersisterQueue;
@end
