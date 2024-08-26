//
//  Chunk.h
//  TaskFrameworkLibrary
//
//  Created by MADP on 16/09/16.
//  Copyright © 2016 MADP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chunk : NSObject

@property (nonatomic, retain) NSData *data;
@property (nonatomic, retain) NSNumber *offset;

- (void)setData:(NSData *)data;
- (void)setOffset:(NSNumber *)offset;

@end
