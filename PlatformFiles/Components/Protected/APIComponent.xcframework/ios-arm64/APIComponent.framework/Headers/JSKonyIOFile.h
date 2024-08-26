//
//  JSKonyIOFile.h
//  VM
//
//  Created by Amba on 02/07/13.
//
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSObject.h>

@interface JSKonyIOFile : JSObject

-(id) copyTo:(NSArray*) arguments;
-(id) moveTo:(NSArray*) arguments;
-(void) remove:(NSArray*) arguments;
-(id) rename:(NSArray*) arguments;
-(id) createFile:(NSArray*) arguments;
-(id) createDirectory:(NSArray*) arguments;
-(id) exists:(NSArray*) arguments;
-(id) getFilesList:(NSArray*) arguments;
-(id) isFile:(NSArray*) arguments;
-(id) isDirectory:(NSArray*) arguments;
-(id) read:(NSArray*) arguments;
-(id) write:(NSArray*) arguments;
+(void) unzip:(NSArray*) arguments;

@end
