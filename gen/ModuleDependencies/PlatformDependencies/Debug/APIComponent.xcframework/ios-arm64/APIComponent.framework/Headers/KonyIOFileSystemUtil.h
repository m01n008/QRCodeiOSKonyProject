//
//  KonyIOFileSystemUtil.h
//  VM
//
//  Created by Amba on 03/07/13.
//
//

#import <Foundation/Foundation.h>

@class KonyIOFile;
@class KonyBoolean;

#define FILE_PATH_SEPERATOR @"/"
#define CACHE_DIRECTORY_PATH @"Library/Caches/"
#define APPLICATION_DIRECTORY_PATH @"Library/Application Support"
#define APPLICATION_SUPPORT_DIRECTORY_PATH @"Library/Application Support"

@interface KonyIOFileSystemUtil : NSObject

+(KonyIOFile *) getFile: (NSString *) path;
+(NSString *) getCacheDirectoryPath;
+(NSString *) getDataDirectoryPath;
+(NSString *) getApplicationDirectoryPath;
+(NSString *) getExternalStorageDirectoryPath;
+(NSString *) getRawDirectoryPath;
+(NSString *) getSupportDirectoryPath;
+(NSString *) getAppGroupDirectoryPath:(NSString*) appGroupId;
+(KonyBoolean*) isExternalStorageAvailable;
+ (NSString *)getDatabaseDirectoryPath;
+ (KonyIOFile *)copyFileNamed:(NSString *)fileName toFile:(NSString *)path;
@end
