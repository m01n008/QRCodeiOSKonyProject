//
//  BlobStoreUtil.h
//  BlobStoreUtil
//
//  Created by KH124 on 22/09/15.
//  Copyright (c) 2015 KH124. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlobStoreUtil : NSObject
+(NSString*) saveBase64File:(NSString*)filename withbase64:(NSString*) base64;
+(NSString*) getBase64FromFile:(NSString*) filepath;
+(BOOL) deleteBlobFile:(NSString*) filepath;
+(NSArray*) getBase64FromFiles:(NSArray*)filepaths;
+(NSString*) decodeBase64File:(NSString*)filepath;
+(NSArray*) decodeBase64Files:(NSArray*)filepaths;
+(BOOL) deleteAllBinaryFiles;
+(void) createBlobsDir;
+(NSString*) getBlobsDir;
+(BOOL) renameFile:(NSString*)oldFilePath :(NSString*)newFilePath;
@end
