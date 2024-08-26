//
//  NSException+KonyErrorException.h
//  VM
//
//  Created by Amba on 21/06/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSException (KonyErrorException)

+ (NSException *)exceptionWithErrorType:(NSString*)errorType withRetValue:(id)retVal errorCode:(NSInteger)errorCode errorMessage:(NSString *)errorMessage;
+ (NSException *)exceptionWithError:(NSError *)error;

@end
