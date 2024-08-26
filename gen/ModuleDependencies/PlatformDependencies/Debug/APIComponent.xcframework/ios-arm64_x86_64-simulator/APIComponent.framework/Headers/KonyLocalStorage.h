//
//  KonyLocalStorage.h
//  VM
//
//  Created by Uday Bheema on 13/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#define LOCAL_STORAGE_PATH @"HTML5LOCALSTORAGE"
#define LOCAL_STORAGE_FILENAME @"localstorage.metadata"


@interface KonyLocalStorage : NSObject

@property (strong) NSMutableArray* keyList;

+ (KonyLocalStorage *)getLocalStorageInstance; 
-(NSString*) getLocalStorageMetaDataFilePath;
-(BOOL) validateItem:(id) aItem;
-(void) removeItem:(NSString*) aKey;
-(NSString*) getLocalStorageMetaDataFilePath;
-(NSString*) getKey:(int) Idx;
-(id) getItemForKey:(NSString*) aKey;
-(void) setItem:(id) item forKey:(NSString*) aKey;
-(void) clearAllItems;
-(NSUInteger) getKeyCount;
-(void) sync;
@end
