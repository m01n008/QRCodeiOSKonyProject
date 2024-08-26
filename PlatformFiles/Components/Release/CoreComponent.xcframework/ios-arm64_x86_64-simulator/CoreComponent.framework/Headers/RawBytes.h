//
//  RawBytes.h
//  RawBytes1
//
//  Created by Shiva on 31/07/10.
//	Modified by KH250 on 18/03/11.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//
#import "UIKit/UIKit.h"

/** Type of data stored in RawBytes */
typedef enum rawByteTypes {
	RAWBYTESTYPE_IMAGE,	/**< Image data type for RawBytes	*/
	RAWBYTESTYPE_VIDEO,	/**< Video data type for RawBytes	*/
	RAWBYTESTYPE_AUDIO,	/**< Audio data type for RawBytes	*/
    RAWBYTESTYPE_BYTES,
    RAWBYTESTYPE_FILE,
    RAWBYTESTYPE_LIVEPHOTO
} RawBytesTypes;


/** Type of storage for RawBytes - File and In Memory Storage are supported */
typedef enum RAWBYTES_STORAGETYPE 
{
	RawBytesStorageTypeFile = 0,	/**< RawBytes storage in Files	*/
	RawBytesStorageTypeMemory = 1	/**< RawBytes storage in Memory	*/
}RAWBYTES_STORAGETYPE;	

/**
 *	@Brief API that any DataStorage for RawBytes shoud abide
 */
@protocol  RawBytesStorageProtocol <NSObject,NSSecureCoding>

@required
-(BOOL) setRawBytes:(id)data force:(BOOL)isForced;
-(id) getRawBytes;
-(void) releaseRawBytes;
+(void) cleanData;
-(BOOL) appendData:(NSData*) aData;
@end

@class RawBytesMemoryPool;

/**
 * @Brief RawBytes is responsible for Storing ,Retriving and Deleting (different types of ) Data.
 * Collaborations: RawByteStorage classes.
 * 
 * There is provision to select the storage type for RawBytes - (in memory and File storage, as of now).
 * Selection of Storagetype is done at initialization itself; A RawByte Handler will hold data in only one storagetype at a time.
 */ 
@interface RawBytes : NSObject <NSSecureCoding>{
	NSString   *dataId;									/**< Unique id to indentify RawBytes - created/copied at init and explicitly released at delloc */
	RawBytesTypes dataType;								/**< type of storage (Image/Video/Audio) */
@private
	RAWBYTES_STORAGETYPE	storageType;				/**< type of storage for RawBytes (in File/Memory) - created at init and explicitly released at dealloc */
	id <RawBytesStorageProtocol>	rawBytesStore;		/**< rawBytesStore, where rawbytes are stored - internal to RawBytes */
    
    NSMutableDictionary* metaData;                      /**< Holds the meta data about the Raw Bytes stored. Eg: EXIF info in case of Images or Geo Taggin Info etc */
    id fileObject;
}


@property (nonatomic,readonly) NSString *text;
@property (nonatomic) NSDictionary *livePhotoResourcePaths;

// MemoryPool related methods
+(RawBytesMemoryPool*) sharedRawBytesMemoryPool;

// RawBytes release methods
+ (void) cleanData;
- (void) releaseRawBytes;

	// init methods
- (id) initWithData: (NSData *) data andType: (RawBytesTypes) dataType;
- (id) initWithSerializedData: (NSString *) data andDataFilePath: (NSString *) dirPath;
- (id) initWithId: (NSString *) id Data:(NSData *) data andType:(RawBytesTypes) tempDataType;
	//init methods with Storage type
- (id) initWithData: (NSData *) data andType: (RawBytesTypes) dataType andStorageType:(RAWBYTES_STORAGETYPE)storageType;
- (id) initWithData: (NSData *) data andType: (RawBytesTypes) dataType andStorageType:(RAWBYTES_STORAGETYPE)rawBytesStorageType andMetaData: (NSMutableDictionary*) metaDataDict;
- (id) initWithSerializedData: (NSString *) data andDataFilePath: (NSString *) dirPath andStorageType:(RAWBYTES_STORAGETYPE)storageType;
- (id) initWithId: (NSString *) id Data:(NSData *) data andType:(RawBytesTypes) tempDataType andStorageType:(RAWBYTES_STORAGETYPE)storageType;

-(id) initWithFileObject:(id) aFileObject;
-(id) initWithUIImage:(UIImage *)anImage andMetadata:(NSMutableDictionary *)metaDataDict;

	// serialization methods
- (NSString *) serializeAndStoreDataAtPath : (NSString *) path;

	// Storage methods
- (id) CreateRawBytesStorageForType;
-(void) destroyRawBytesStorage;
- (void)setData:(NSData *)data metadata:(NSDictionary *)metadata storageType:(RAWBYTES_STORAGETYPE)rawBytesStorageType dataType:(RawBytesTypes)dataType;
	// getters and setters 
- (NSData *) getData;
- (UIImage *)getDataAsImage;
- (RawBytesTypes) getDataType;
- (NSString *) getId;
- (NSMutableDictionary*) getMetaData;

-(BOOL) append:(NSArray*) aRawData;
- (enum RAWBYTES_STORAGETYPE)getStorageType;
- (NSString *)getFilepath;

- (id) initWithURL: (NSURL *) videoURL andType: (RawBytesTypes) dataType andStorageType:(RAWBYTES_STORAGETYPE)storageType;
-(NSString*) getResourcePath;
+(NSString*) getTempFilePath;

@end
