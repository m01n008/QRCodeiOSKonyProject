//
//  CachedDictionary.h
//  VM
//
//  Created by Sathya Vennapusala on 12/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


/*
 
 CachedDictionary is dictionary which caches the instances of NSObject in memory. 
 Cache is configured with maxCount of objects that can be there in cache and objectes beyond macCount are evicted and cache is balenced.
 
 
 Objects stored in this cache are owned by cache. That means - even if the user releases the objects - Cache will own them untill cache evicts as part of balencing maxcount or when cache itself is released.
 
 */

@interface CachedDictionary : NSObject 
{

	@private
	
			NSMutableArray* accessedKeys;  
			/* keys get updated in the order in which they are accessed - in [0..N] keys, 0th being the latest accessed key and N being the oldest key*/
	
			int cacheMaxCount;
			/* Indicates the number of objects at any point in time the cache can handle and beyond that cache starts eveicting them */
	
			NSMutableDictionary* keyValues;
			/* Dictionary where the  actual key and the instace of objects are stored*/
	
			NSTimeInterval timerFrequecy;
			/* After this interval cache will be balanced by evicting items*/
	
			NSTimer *periodicMaintenanceTimer;
			/* Timer which when triggered invokes an operation which balences the cache by removing the items*/

			
		
}

- (id) init;

- (id) initWithMaxCount: (int) maxCount withCacheBalenceInterval: (NSTimeInterval) cacheBalenceInterval;

- (void)removeObjectForKey:(id)aKey;

- (void)setObject:(id)anObject forKey:(id)aKey;

- (id)  objectForKey:(id)aKey;

- (void)  removeAllObjects;

- (NSUInteger)count;

@end



