//
//  KonyDataCache.h
//  Cashing
//
//  Created by SaiAnuhya Kodimela on 25/05/15.
//  Copyright (c) 2015 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface KonyDataCache : NSObject

@property (nonatomic) NSTimeInterval cacheTimeOutInterval;

- (id)initWithName:(NSString *)cacheName;
+ (instancetype)sharedInstance;

- (void)setObject:(id)value forKey:(id)key;
- (id)getObjectForKey:(id)key;

- (void)setCacheWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)getDictionaryFromCache;

- (void)setString:(NSString*)string forKey:(NSString*)key;
- (NSString*)getStringForKey:(NSString*)key;

- (void)setImage:(UIImage *)image forKey:(NSString*)key;
- (UIImage *)getImageForKey:(NSString*)key;

- (NSArray *)getAllkeys;

- (void)clearCache;
- (void)removeCacheForKey:(NSString*)key;

@end
