//
//  RawBytesMemoryPool.h
//  VM
//
//  Created by Krishna Kiran Kasturi on 17/03/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 *	@Brief	RawBytesMemoryPool is implementation of memory pool customized for (but not limited to) RawBytes.
 *	Responsibiities are to :	Store/Fetch/Delete elements, delete all elements.
 *	Pool is responsible for storing and deleting the objects - hence , users of Pool need not allocate(free) memory.
 *	This is currently customized for RawBytes - need to insert/fetch in single objects. bulk insertions and range seraches are (currently) not possible.
 *	@Note : Implementation details:
 *			NSDictionary  is used to implement Pool hence , fetch happens in constant time.
 *			This is not a memory pool, its just a dictonary data type that. 
 */

@interface RawBytesMemoryPool : NSObject 
{
@private
	NSMutableDictionary *dataStore;					/**<	array used to store elements in Pool */
}

-(id) init;
-(id) dataForId:(NSString*) uniqueId;
-(BOOL) insertData:(id) data At:(NSString*) uniqueId;
-(BOOL) deleteDataAt:(NSString*) uniqueId;
-(void) cleanStore;

@end
