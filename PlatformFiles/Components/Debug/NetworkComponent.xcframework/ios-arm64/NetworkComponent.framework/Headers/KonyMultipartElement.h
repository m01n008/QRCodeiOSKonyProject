//
//  KonyMultipartElement.h
//  VM
//
//  Created by SaiAnuhya Kodimela on 26/05/16.
//
//

#import <Foundation/Foundation.h>

@interface KonyMultipartElement : NSObject

@property (nonatomic, strong) NSData *headers;
@property (nonatomic, strong) NSInputStream *body;
@property (nonatomic) NSUInteger headersLength, bodyLength, length, delivered;

- (id)initWithName:(NSString *)name filename:(NSString *)filename boundary:(NSString *)boundary path:(NSString *)path;
- (id)initWithName:(NSString *)name filename:(NSString *)filename boundary:(NSString *)boundary data:(NSData *)data contentType:(NSString *)contentType;

@end
