//
//  keychainFFI.h
//  keychainFFI
//
//  Created by Vadithya on 17/03/16.
//  Copyright © 2016 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface keychainFFI : NSObject

+ (NSString*)keyChainGroupAccessId;
+ (BOOL) setItem:(NSString*)item forKey:(NSString*)key;
+ (NSString*) itemForKey:(NSString*)key;
+ (BOOL) deleteItemForKey:(NSString*)key;

@end
