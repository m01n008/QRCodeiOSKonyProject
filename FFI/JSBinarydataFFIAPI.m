//
//  JSBinarydataFFIAPI.m
//  JS - FFI bindings
//
//  This is a generated file. Do not modify this file.
//  Copyright 2011 Kony Labs. All rights reserved.
//

//# import "lglobals.h"

#import "CallBack.h"
#import "KonyValueConversionUtility.h"


#import <QRPOC/QRPOC-Swift.h>
#import "JSBinarydataFFIAPI.h"


#import "Binary/OnlineBinaryDataManager.h"
#import "Binary/TaskQueueManager.h"
#import "Binary/Chunk.h"
#import "Binary/OnlineBinaryUploadManager.h"
#import "BinaryDataManagerFFI.h"
#import "Binary/BinaryLogger.h"
#import "Binary/BinaryDataManager.h"
#import "Binary/CompletionBlocks.h"
#import "Binary/Binary.h"
#import "Binary/BinaryDataManagerConstants.h"

#define apiError @"API Error "
@implementation JSBinarydataFFIAPI



#pragma mark -
#pragma mark JSBindings

+ (NSArray *)deleteBinaryObject:(NSArray *)args {

	id arg = nil;


	/* 1. dbName (type: String) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	NSString *dbName = nil;
	dbName = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 2. tableName (type: String) */
	arg = nil;
	if([args count] > 1) { 
		arg = [args objectAtIndex:1];
	}

	NSString *tableName = nil;
	tableName = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 3. binaryColumnName (type: String) */
	arg = nil;
	if([args count] > 2) { 
		arg = [args objectAtIndex:2];
	}

	NSString *binaryColumnName = nil;
	binaryColumnName = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 4. primaryKeyTable (type: Object) */
	arg = nil;
	if([args count] > 3) { 
		arg = [args objectAtIndex:3];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *primaryKeyTable = nil;
	primaryKeyTable = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];

	/* 5. options (type: Object) */
	arg = nil;
	if([args count] > 4) { 
		arg = [args objectAtIndex:4];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *options = nil;
	options = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];

	/* 6. successCallback (type: Function) */
	arg = nil;
	if([args count] > 5) { 
		arg = [args objectAtIndex:5];
	}

	CallBack *successCallback = nil;
	successCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 7. errorCallback (type: Function) */
	arg = nil;
	if([args count] > 6) { 
		arg = [args objectAtIndex:6];
	}

	CallBack *errorCallback = nil;
	errorCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];


	/* + (void)[BinaryDataManagerFFI deleteBinaryObject:tableName:columnName:forPrimaryKeys:options:withSuccessCallback:withErrorCallback:]; */
	[BinaryDataManagerFFI deleteBinaryObject:dbName tableName:tableName columnName:binaryColumnName forPrimaryKeys:primaryKeyTable options:options withSuccessCallback:successCallback withErrorCallback:errorCallback];

	[dbName release];
	[tableName release];
	[binaryColumnName release];
	[primaryKeyTable release];
	[options release];
	[successCallback release];
	[errorCallback release];

	return nil;
}

+ (NSArray *)startDownload:(NSArray *)args {

	id arg = nil;


	/* 1. downloadID (type: String) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	NSString *downloadID = nil;
	downloadID = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 2. successCallback (type: Function) */
	arg = nil;
	if([args count] > 1) { 
		arg = [args objectAtIndex:1];
	}

	CallBack *successCallback = nil;
	successCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 3. errorCallback (type: Function) */
	arg = nil;
	if([args count] > 2) { 
		arg = [args objectAtIndex:2];
	}

	CallBack *errorCallback = nil;
	errorCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];


	/* + (void)[BinaryDataManagerFFI binaryStartDownloadTaskForBlobID:withSuccessCallback:andErrorCallback:]; */
	[BinaryDataManagerFFI binaryStartDownloadTaskForBlobID:downloadID withSuccessCallback:successCallback andErrorCallback:errorCallback];

	[downloadID release];
	[successCallback release];
	[errorCallback release];

	return nil;
}

+ (NSArray *)pauseDownload:(NSArray *)args {

	id arg = nil;


	/* 1. downloadID (type: String) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	NSString *downloadID = nil;
	downloadID = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 2. successCallback (type: Function) */
	arg = nil;
	if([args count] > 1) { 
		arg = [args objectAtIndex:1];
	}

	CallBack *successCallback = nil;
	successCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 3. errorCallback (type: Function) */
	arg = nil;
	if([args count] > 2) { 
		arg = [args objectAtIndex:2];
	}

	CallBack *errorCallback = nil;
	errorCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];


	/* + (void)[BinaryDataManagerFFI binaryPauseDownloadTaskForBlobID:withSuccessCallback:withErrorCallback:]; */
	[BinaryDataManagerFFI binaryPauseDownloadTaskForBlobID:downloadID withSuccessCallback:successCallback withErrorCallback:errorCallback];

	[downloadID release];
	[successCallback release];
	[errorCallback release];

	return nil;
}

+ (NSArray *)resumeDownload:(NSArray *)args {

	id arg = nil;


	/* 1. downloadID (type: String) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	NSString *downloadID = nil;
	downloadID = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 2. successCallback (type: Function) */
	arg = nil;
	if([args count] > 1) { 
		arg = [args objectAtIndex:1];
	}

	CallBack *successCallback = nil;
	successCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 3. errorCallback (type: Function) */
	arg = nil;
	if([args count] > 2) { 
		arg = [args objectAtIndex:2];
	}

	CallBack *errorCallback = nil;
	errorCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];


	/* + (void)[BinaryDataManagerFFI binaryResumeDownloadTaskForBlobID:withSuccessCallback:withErrorCallback:]; */
	[BinaryDataManagerFFI binaryResumeDownloadTaskForBlobID:downloadID withSuccessCallback:successCallback withErrorCallback:errorCallback];

	[downloadID release];
	[successCallback release];
	[errorCallback release];

	return nil;
}

+ (NSArray *)createDownloadTask:(NSArray *)args {

	id arg = nil;


	/* 1. databaseName (type: String) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	NSString *databaseName = nil;
	databaseName = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 2. tableName (type: String) */
	arg = nil;
	if([args count] > 1) { 
		arg = [args objectAtIndex:1];
	}

	NSString *tableName = nil;
	tableName = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 3. binaryColumnName (type: String) */
	arg = nil;
	if([args count] > 2) { 
		arg = [args objectAtIndex:2];
	}

	NSString *binaryColumnName = nil;
	binaryColumnName = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 4. pkTableObject (type: Object) */
	arg = nil;
	if([args count] > 3) { 
		arg = [args objectAtIndex:3];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *pkTableObject = nil;
	pkTableObject = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];

	/* 5. downloadConfigObject (type: Object) */
	arg = nil;
	if([args count] > 4) { 
		arg = [args objectAtIndex:4];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *downloadConfigObject = nil;
	downloadConfigObject = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];

	/* 6. successCallback (type: Function) */
	arg = nil;
	if([args count] > 5) { 
		arg = [args objectAtIndex:5];
	}

	CallBack *successCallback = nil;
	successCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 7. errorCallback (type: Function) */
	arg = nil;
	if([args count] > 6) { 
		arg = [args objectAtIndex:6];
	}

	CallBack *errorCallback = nil;
	errorCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];


	/* + (void)[BinaryDataManagerFFI binaryDownloadTaskCreationForDb:tableName:columnName:primaryKeyTable:downloadConfig:withSuccessCallback:andErrorCallback:]; */
	[BinaryDataManagerFFI binaryDownloadTaskCreationForDb:databaseName tableName:tableName columnName:binaryColumnName primaryKeyTable:pkTableObject downloadConfig:downloadConfigObject withSuccessCallback:successCallback andErrorCallback:errorCallback];

	[databaseName release];
	[tableName release];
	[binaryColumnName release];
	[pkTableObject release];
	[downloadConfigObject release];
	[successCallback release];
	[errorCallback release];

	return nil;
}

+ (NSArray *)clearBinaryDataManagerState:(NSArray *)args {



	/* + (void)[BinaryDataManagerFFI binaryClearBinaryDataManagerState]; */
	[BinaryDataManagerFFI binaryClearBinaryDataManagerState];


	return nil;
}

+ (NSArray *)getBinaryDataFilePath:(NSArray *)args {

	id arg = nil;


	/* 1. databaseName (type: String) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	NSString *databaseName = nil;
	databaseName = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 2. tableName (type: String) */
	arg = nil;
	if([args count] > 1) { 
		arg = [args objectAtIndex:1];
	}

	NSString *tableName = nil;
	tableName = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 3. binaryColumnName (type: String) */
	arg = nil;
	if([args count] > 2) { 
		arg = [args objectAtIndex:2];
	}

	NSString *binaryColumnName = nil;
	binaryColumnName = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 4. primaryKeyTable (type: Object) */
	arg = nil;
	if([args count] > 3) { 
		arg = [args objectAtIndex:3];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *primaryKeyTable = nil;
	primaryKeyTable = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];

	/* 5. successCallback (type: Function) */
	arg = nil;
	if([args count] > 4) { 
		arg = [args objectAtIndex:4];
	}

	CallBack *successCallback = nil;
	successCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 6. errorCallback (type: Function) */
	arg = nil;
	if([args count] > 5) { 
		arg = [args objectAtIndex:5];
	}

	CallBack *errorCallback = nil;
	errorCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];


	/* + (void)[BinaryDataManagerFFI getBinaryDataFilePath:tableName:columnName:forPrimaryKeys:withSuccesscallback:withErrorCallback:]; */
	[BinaryDataManagerFFI getBinaryDataFilePath:databaseName tableName:tableName columnName:binaryColumnName forPrimaryKeys:primaryKeyTable withSuccesscallback:successCallback withErrorCallback:errorCallback];

	[databaseName release];
	[tableName release];
	[binaryColumnName release];
	[primaryKeyTable release];
	[successCallback release];
	[errorCallback release];

	return nil;
}

+ (NSArray *)getOnlineBinaryData:(NSArray *)args {

	id arg = nil;


	/* 1. fileParams (type: Object) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *fileParams = nil;
	fileParams = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];

	/* 2. streaming (type: Boolean) */
	arg = nil;
	if([args count] > 1) { 
		arg = [args objectAtIndex:1];
	}

	BOOL streaming;
	arg = [[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeBool error:nil];
	streaming = [arg boolValue]?YES:NO;

	/* 3. downloadConfig (type: Object) */
	arg = nil;
	if([args count] > 2) { 
		arg = [args objectAtIndex:2];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *downloadConfig = nil;
	downloadConfig = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];

	/* 4. fileDownloadStartedCallback (type: Function) */
	arg = nil;
	if([args count] > 3) { 
		arg = [args objectAtIndex:3];
	}

	CallBack *fileDownloadStartedCallback = nil;
	fileDownloadStartedCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 5. chunkDownloadCompletedCallback (type: Function) */
	arg = nil;
	if([args count] > 4) { 
		arg = [args objectAtIndex:4];
	}

	CallBack *chunkDownloadCompletedCallback = nil;
	chunkDownloadCompletedCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 6. fileDownloadCompletedCallback (type: Function) */
	arg = nil;
	if([args count] > 5) { 
		arg = [args objectAtIndex:5];
	}

	CallBack *fileDownloadCompletedCallback = nil;
	fileDownloadCompletedCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 7. downloadFailureCallback (type: Function) */
	arg = nil;
	if([args count] > 6) { 
		arg = [args objectAtIndex:6];
	}

	CallBack *downloadFailureCallback = nil;
	downloadFailureCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 8. options (type: Object) */
	arg = nil;
	if([args count] > 7) { 
		arg = [args objectAtIndex:7];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *options = nil;
	options = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];


	/* + (void)[BinaryDataManagerFFI createAndStartOnlineDownload:withStreaming:downloadConfig:withOnFileDownloadStartedCompletionBlock:andOnChunkDownloadCompletedCompletionBlock:andOnFileDownloadCompletedCompletionBlock:andOnDownloadFailureCompletionBlock:andOptions:]; */
	[BinaryDataManagerFFI createAndStartOnlineDownload:fileParams withStreaming:streaming downloadConfig:downloadConfig withOnFileDownloadStartedCompletionBlock:fileDownloadStartedCallback andOnChunkDownloadCompletedCompletionBlock:chunkDownloadCompletedCallback andOnFileDownloadCompletedCompletionBlock:fileDownloadCompletedCallback andOnDownloadFailureCompletionBlock:downloadFailureCallback andOptions:options];

	[fileParams release];
	[downloadConfig release];
	[fileDownloadStartedCallback release];
	[chunkDownloadCompletedCallback release];
	[fileDownloadCompletedCallback release];
	[downloadFailureCallback release];
	[options release];

	return nil;
}

+ (NSArray *)uploadBinaryData:(NSArray *)args {

	id arg = nil;


	/* 1. uploadParams (type: Object) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *uploadParams = nil;
	uploadParams = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];

	/* 2. uploadStartedCallback (type: Function) */
	arg = nil;
	if([args count] > 1) { 
		arg = [args objectAtIndex:1];
	}

	CallBack *uploadStartedCallback = nil;
	uploadStartedCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 3. uploadChunkCompletedCallback (type: Function) */
	arg = nil;
	if([args count] > 2) { 
		arg = [args objectAtIndex:2];
	}

	CallBack *uploadChunkCompletedCallback = nil;
	uploadChunkCompletedCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 4. uploadCompletedCallback (type: Function) */
	arg = nil;
	if([args count] > 3) { 
		arg = [args objectAtIndex:3];
	}

	CallBack *uploadCompletedCallback = nil;
	uploadCompletedCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 5. uploadErrorCallback (type: Function) */
	arg = nil;
	if([args count] > 4) { 
		arg = [args objectAtIndex:4];
	}

	CallBack *uploadErrorCallback = nil;
	uploadErrorCallback = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];

	/* 6. options (type: Object) */
	arg = nil;
	if([args count] > 5) { 
		arg = [args objectAtIndex:5];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *options = nil;
	options = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];


	/* + (void)[BinaryDataManagerFFI uploadBinaryData:withOnBinaryDownloadStartedCompletionBlock:andOnChunkUploadCompletedCompletionBlock:andOnBinaryUploadCompletedCompletionBlock:andOnUploadFailureCompletionBlock:andOptions:]; */
	[BinaryDataManagerFFI uploadBinaryData:uploadParams withOnBinaryDownloadStartedCompletionBlock:uploadStartedCallback andOnChunkUploadCompletedCompletionBlock:uploadChunkCompletedCallback andOnBinaryUploadCompletedCompletionBlock:uploadCompletedCallback andOnUploadFailureCompletionBlock:uploadErrorCallback andOptions:options];

	[uploadParams release];
	[uploadStartedCallback release];
	[uploadChunkCompletedCallback release];
	[uploadCompletedCallback release];
	[uploadErrorCallback release];
	[options release];

	return nil;
}

/** @brief JS API namespace
 **/
+ (NSString *) jsStaticAPINamespace
{
	return @"binarydata";
}

#pragma mark -
#pragma mark JSRuntime static API registration supporting methods 

/** @brief Load the js bindings into JS Runtime
 **/
+ (NSDictionary *) staticAPIMethodMapping
{

	NSDictionary *konyApplicationAPIs = [NSDictionary dictionaryWithObjectsAndKeys: \
					@"createDownloadTask:", @"createDownloadTask", \
					@"startDownload:", @"startDownload", \
					@"clearBinaryDataManagerState:", @"clearBinaryDataManagerState", \
					@"resumeDownload:", @"resumeDownload", \
					@"deleteBinaryObject:", @"deleteBinaryObject", \
					@"uploadBinaryData:", @"uploadBinaryData", \
					@"pauseDownload:", @"pauseDownload", \
					@"getBinaryDataFilePath:", @"getBinaryDataFilePath", \
					@"getOnlineBinaryData:", @"getOnlineBinaryData", \
					nil];

	return konyApplicationAPIs;

}

@end
