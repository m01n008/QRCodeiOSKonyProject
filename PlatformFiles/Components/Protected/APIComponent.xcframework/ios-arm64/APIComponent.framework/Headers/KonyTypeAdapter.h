//
//  KonyTypeAdapter.h
//  VM
//
//  Created by Krishna Kiran Kasturi on 08/06/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/KonyTypes.h>

/**
 *	@Brief	Protocol that all KonyTypeDataStoreAdaptors should implement.
 *
 *	KonyDataStore expects data in NSDictionary and returns data in NSDictionary when searched. Hence any data type that needs to be stored in KonyDataStore
 *	needs to be adapted to KonyDataStore.
 *	Also it should implement interface to tell KonyDataStore , if the contents are serialzable (plist-objects).
 */
@protocol KonyTypeDataStoreAdapter<NSObject>

@required
-(id) convertTypeForDataStore:(id)obj;	/**< Converts  type to KonyDatastore compliant type (NSDictionary) */
-(id) convertTypeFromDataStore:(id)obj;	/**< Converts Type provided by KonyDataStore to reuqired type */
-(BOOL) isTypeSerializable;				/**< confirms if the provided type is serializabe */
-(BOOL) isTypeSerialized:(NSDictionary*) dict;	/**<  confirms if the data stored in KonyDataStore is serialized */

@end

/**
 *	This class is respnisible for converting Lua Types complaint to KonyDataStore and vice versa
 *	@Note : 
 *	KonyDataStore always expects data in NSDictionary.
 *	LuaType is expected for returning objects from KonyDataStore.
 *
 */
@interface KonyLuaTypeDataStoreAdapter : NSObject <KonyTypeDataStoreAdapter> {
	BOOL isSerialized;	/**< flag tha indicates if the data is serialized or not */
}
@property (nonatomic,assign) BOOL isSerialized;

@end

@interface KonyBasicTypesDataStoreAdapter : NSObject <KonyTypeDataStoreAdapter> {
	BOOL isSerialized;	/**< flag tha indicates if the data is serialized or not */
}

@property (nonatomic , assign) 	BOOL isSerialized;
@end

@interface KonyDataStoreAdapterForLocalStorage : NSObject <KonyTypeDataStoreAdapter> {
}

@end

@interface KonyTypeAdaptorUtil : NSObject

// Provide the required typeconverter for the
+(id) getKonyTypeAdapter:(KONYDSTypes) objType For:(id)target ;

@end
