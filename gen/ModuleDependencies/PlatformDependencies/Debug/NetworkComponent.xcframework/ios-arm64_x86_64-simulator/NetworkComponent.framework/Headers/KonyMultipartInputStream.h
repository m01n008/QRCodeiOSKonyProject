//
//  KonyMultipartInputStream.h
//  VM
//
//  Created by SaiAnuhya Kodimela on 26/05/16.
//
//

#import <Foundation/Foundation.h>
#import "KonyMultipartElement.h"

@interface KonyMultipartInputStream : NSInputStream

@property (nonatomic, readonly) NSString *boundary;
@property (nonatomic, readonly) NSUInteger length;

- (void)addPartWithName:(NSString *)name filename:(NSString *)filename path:(NSString *)path;
- (void)addPartWithName:(NSString *)name filename:(NSString *)filename data:(NSData *)data contentType:(NSString *)ct;

@end