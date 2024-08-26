//
//  JSRawBytes.h
//  VM
//
//  Created by KH250 on 09/07/13.
//
//

#import <Foundation/Foundation.h>
#import "JSObject.h"
#import "RawBytes.h"
#import "KonyBoolean.h"

@interface JSRawBytes : JSObject

-(id) initWithRawBytes:(RawBytes*) aRawBytes;

-(NSString*) readAsText:(NSArray*) args;

-(KonyBoolean*) appendRawBytes:(NSArray*) args;

-(KonyBoolean*) appendToRawBytes:(NSArray*) args;

+(NSArray*) getTempPath:(NSArray*) args;

@end
