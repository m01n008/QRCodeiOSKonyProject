//
//  KonyIOFile.h
//  VM
//
//  Created by Amba on 03/07/13.
//
//

#import <Foundation/Foundation.h>
#import <CoreComponent/KonyBoolean.h>
#import <CoreComponent/RawBytes.h>

@interface KonyIOFile : NSObject {
    NSString    *name;
    NSString    *fullPath;
    KonyIOFile  *parent;
    KonyBoolean *readable;
    KonyBoolean *writable;
    NSNumber    *modificationTime;
    NSNumber    *size;
    
    NSString    *relativePath; // From application home directory
}

@property(nonatomic,readonly) NSString    *name;
@property(nonatomic,readonly) NSString    *fullPath;
@property(nonatomic,readonly,getter = getParent) KonyIOFile  *parent;
@property(nonatomic,readonly) KonyBoolean *readable;
@property(nonatomic,readonly) KonyBoolean *writable;
@property(nonatomic,readonly) NSNumber    *modificationTime;
@property(nonatomic,readonly) NSNumber    *size;

@property(nonatomic,retain) NSString    *relativePath;

-(id) initWithPath:(NSString *) path;
-(void)resetProperties;
  
-(KonyIOFile *) copyTo:(NSString *)destinationPath withNewName:(NSString *)newName;
-(KonyIOFile *) moveTo:(NSString *)destinationPath withNewName:(NSString *)newName;
-(void) remove:(BOOL)deleteRecursive;
-(KonyBoolean *) rename:(NSString *)newName;
-(KonyBoolean *) createFile;
-(KonyBoolean *) createDirectory;
-(KonyBoolean *) exists;
-(NSArray *) getFilesList;
-(KonyBoolean *) isFile;
-(KonyBoolean *) isDirectory;
-(RawBytes *) read;
-(KonyBoolean *) write:(NSData *)data append:(BOOL)append;

-(NSString *) stringRepresentation;

-(NSData *) bytes;

@end
