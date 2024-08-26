//
//  KonyException.h
//  Logger
//
//  Created by Harshini Bonam on 09/09/16.
//  Copyright © 2016 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoggerError :NSError

@property (nonatomic, assign)NSInteger errorCode;
@property (nonatomic, retain)NSMutableString *errorDomain;
@property (nonatomic, retain)NSMutableDictionary *errorInfo;
@property (nonatomic, retain)LoggerError *errorCause;

/*
 * init method
 */
- (instancetype)initWithErrorCode:(NSInteger)errorCode
                            domain:(NSString *)errorDomain
                    context:(NSDictionary *)errorInfo;
/*
 * Get message method
 */
- (NSString *)getMessage;
- (NSString *)getMessageWithVerbose:(BOOL)verbose;
- (NSString *)recursiveDescription;
- (void)printStackTrace;
@end
