//
//  UnarchiverDelegate.h
//  VM
//
//  Created by Amba on 17/04/13.
//
//

#import <Foundation/Foundation.h>

@protocol UnarchiverDelegate <NSObject>

@required
- (void) unarchivedFile:(NSString *)fileName  data:(NSData *)data inArchive:(NSString *)archiveName;
- (void) unarchivingFinishedFor:(NSString *)archiveName;

@optional
// If unarchiving failed at archive level the fileName will be nil. File name will be populated when an error occurred
// while processing a file.
-(void) unarchivingFailedForArchive:(NSString *)archiveName whileProcessingFile:(NSString *)fileName;

@end

