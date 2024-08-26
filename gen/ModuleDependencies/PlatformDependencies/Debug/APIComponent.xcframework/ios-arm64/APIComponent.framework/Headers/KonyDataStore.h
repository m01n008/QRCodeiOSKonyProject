//
//  KonyDataStoreFile.m
//  VM
//
//  Created by Krishna Kiran Kasturi on 04/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KonyDataStoreSQLite.h"
#import "KonyDataStoreFile.h"

/**
 *	@Brief Provides Data Storing capability.KonyDataStore is responsible for storing  retriving,deleting KonyData Storable objects.
 *	@Note : only the class methods :KONYDSStore,KONYDSDelete,KONYDSRetrieve should be used for all practical purposes.
 *	Other methods would soon be depricated.
 *	Also note that, KonyDataStore doesnt act as a base to different internal implementation of DataStore (File based and SQLite based).
 *
 */
@interface KonyDataStore : NSObject
{
	
}

/** KonyDataStore methods */
+(BOOL) KONYDSStore:(id) dataToStore withUniqueIdentifier:(NSString *)uniqueIdentifier;
+(BOOL) KONYDSDelete:(NSString *)uniqueIdentifier;
+(id) KONYDSRetrieve:(NSString *)uniqueIdentifier ofType:(KONYDSTypes)type;

+(BOOL) KONYDSStore:(id)dataToStore withUniqueIdentifier:(NSString *)uniqueIdentifier inPath:(NSString*)path;
+(BOOL) KONYDSDelete:(NSString *)uniqueIdentifier inPath:(NSString*)path;
+(id) KONYDSRetrieve:(NSString *)uniqueIdentifier ofType:(KONYDSTypes)type inPath:(NSString*)path;

/*
 *	The below methods would be depricated. Should not use them 
 */

/** KonyDataStore Type variants */
+(BOOL) KONYDSStore:(id) dataToStore withUniqueIdentifier:(NSString *)uniqueIdentifier forStorageType:(KonyDataStorageType)storageType;
+(BOOL) KONYDSDelete:(NSString *)uniqueIdentifier forStorageType:(KonyDataStorageType)storageType;
+(id) KONYDSRetrieve:(NSString *)uniqueIdentifier ofType:(KONYDSTypes)type  forStorageType:(KonyDataStorageType)storageType;

/** Utility methods to convert from one format to other */
+(BOOL) KONYDSConvert:(NSString*)uniqueIdentifier  From:(KonyDataStorageType) fromStorageType to:(KonyDataStorageType)toType;
+(NSArray*) KONYDSListAllDataStoreElementsFor:(KonyDataStorageType)storageType;
+(BOOL) KONYDSDestroyStoreOfType:(KonyDataStorageType)storageType;
+(BOOL) KONYDSConvertStore:(KonyDataStorageType) fromStorageType to:(KonyDataStorageType)toStorageType;
+(BOOL) isSQLiteFile:(NSString*)uniqueIdentifier;

@end



