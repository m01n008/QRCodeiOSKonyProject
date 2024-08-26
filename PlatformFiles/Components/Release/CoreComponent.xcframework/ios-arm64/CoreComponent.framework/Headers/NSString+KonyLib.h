//
//  NSString+KonyLib.h
//  VM
//
//  Created by KH206 on 24/10/13.
//
//

#import <Foundation/Foundation.h>

@interface NSString (KonyLib)

- (NSString*) stringByReplacingOccurrencesOfCharactersInSet:(NSCharacterSet*) charSet withString:(NSString *)replacement;

@end
