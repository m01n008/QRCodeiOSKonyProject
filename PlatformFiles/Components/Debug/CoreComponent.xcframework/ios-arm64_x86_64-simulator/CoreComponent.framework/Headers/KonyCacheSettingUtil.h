//
//  KonyCacheSettingUtil.h
//  konylib
//
//  Created by Praveen.kothapeta on 08/11/17.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"

@interface KonyCacheSettingUtil : NSObject

+(void) setMemoryCapacity :(NSNumber*)cacheSizeMemory diskCapacity :(NSNumber*)cacheSizeDisk;
+(NSUInteger) getMemoryCapacity;
+(NSUInteger) getDiskCapacity;
+(NSUInteger) getCurrentDiskUsage;
+(NSUInteger) getCurrentMemoryUsage;
+(void)setCachePolicy:(CachePolicies)newCachePolicy;
+(void)setStoragePolicy:(StoragePolicies)newStoragePolicy;
+(NSURLRequestCachePolicy)cachePolicy;
+(NSURLCacheStoragePolicy)storagePolicy;
+(NSURLRequestCachePolicy) getAppleCachePolicyWithKonyCachePolicy:(CachePolicies)konyCachePolicy;
+(NSURLCacheStoragePolicy) getAppleStoragePolicyWithKonyStoragePolicy:(StoragePolicies)konyStoragePolicy;

@end
