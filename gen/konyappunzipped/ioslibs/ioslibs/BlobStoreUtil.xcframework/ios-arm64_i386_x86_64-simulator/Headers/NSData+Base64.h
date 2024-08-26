//
//  NSData+Base64.h
//  VMAppWithKonylib
//
//  Created by Rajkumar Hasgul on 14/12/15.
//
//

#import <Foundation/Foundation.h>

@interface NSData (Base64)
+(NSData *)dataWithBase64EncodedString:(NSString *)string;
@end
