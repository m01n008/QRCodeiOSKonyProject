//
//  KonyDataStoreFile.h
//  VM
//
//  Created by Krishna Kiran Kasturi on 04/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/KonyTypes.h>

@protocol KonyTypeDataStoreAdapter;

/**
 *	KonyDataStore is non queryable persistant store which can be used to persist data/object graphs.
 *	Implementation details for FileBased KonyDataStore:
 *	plist objects (NSString,NSNumber,NSArray,NSDictionary,NSData,NSDate)  can be serialized (plist-storable).
 *	plist serialization being efficient (theroitically) for plist-objects and small(frequently used) data, is used for simple data (plist - objects)
 *	For Complex Objects, Data is stored in Archives.
 *
 *	Also,  KonyDataStore expects data in NSDictionary and returns data in NSDictionary when searched. 
 *	Hence any data type that needs to be stored in KonyDataStore needs to be adapted to KonyDataStore.
 *	Also it(KonyTypeDataStoreAdapter) should implement interface to tell KonyDataStore , if the contents are serialzable (plist-objects).
 *
 */

/**
 
 *
 *	Internal class , SQLite based Data Store implementation. All KONYDSTypes can be stored in KonyDataStoreFile. 
 *	Dont use this functionality directly. Instead use KonyDataStore
 *  This being a State less Object, ideally should not depend on any other objects
 */
@interface KonyDataStoreFile : NSObject  {
	
}

/** KonyDataStore methods */
+(BOOL) KONYDSStoreFile:(id) dataToStore withUniqueIdentifier:(NSString *)uniqueIdentifier;
+(BOOL) KONYDSDeleteFile:(NSString *)uniqueIdentifier;
+(id) KONYDSRetrieveFile:(NSString *)uniqueIdentifier ofType:(KONYDSTypes)type;
+(NSArray*) listContents;
+(NSArray*) listContentsAtPath:(NSString*) fPath;
+(KONYDSTypes) getKONYDSTypeFromData:(id) data;

/** DataStore methods that work with give path, instead of DataStore default path */
+(BOOL) KONYDSStoreFile:(id)dataToStore withUniqueIdentifier:(NSString *)uniqueIdentifier inPath:(NSString*)path;
+(BOOL) KONYDSDeleteFile:(NSString *)uniqueIdentifier inPath:(NSString*)path;
+(id) KONYDSRetrieveFile:(NSString *)uniqueIdentifier ofType:(KONYDSTypes)type inPath:(NSString*)path;


/** Datatore methods that supply thier custom adapters and that are agnostic to type they work with */
+(BOOL) KONYDSStoreFile:(id)dataToStore withUniqueIdentifier:(NSString *)uniqueIdentifier inPath:(NSString*)path withTypeAdapter:(id<KonyTypeDataStoreAdapter>) adap;
+(id) KONYDSRetrieveFile:(NSString *)uniqueIdentifier ofType:(KONYDSTypes)type inPath:(NSString*)path withTypeAdapter:(id<KonyTypeDataStoreAdapter>) adap;

@end
