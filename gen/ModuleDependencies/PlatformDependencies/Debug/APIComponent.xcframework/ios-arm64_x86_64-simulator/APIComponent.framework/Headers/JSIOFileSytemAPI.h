//
//  JSIOFileSytemAPI.h
//  VM
//
//  Created by Amba on 02/07/13.
//
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSStaticAPI.h>

@interface JSIOFileSytemAPI : NSObject<JSStaticAPI>

+(NSArray *) getFile: (NSArray *) args;
+(NSArray *) getCacheDirectoryPath: (NSArray *) args;
+(NSArray *) getDataDirectoryPath: (NSArray *) args;
+(NSArray *) getApplicationDirectoryPath: (NSArray *) args;
+(NSArray *) getExternalStorageDirectoryPath: (NSArray *) args;
+(NSArray *) getRawDirectoryPath: (NSArray *) args;
+(NSArray *) getSupportDirectoryPath: (NSArray *) args;
+(NSArray *) getAppGroupDirectoryPath: (NSArray *) args;
+(NSArray *) isExternalStorageAvailable: (NSArray *) args;
+ (NSArray *)getDatabaseDirectoryPath:(NSArray *)args;
+ (NSArray *)copyBundledRawFileTo:(NSArray *)args;

@end
