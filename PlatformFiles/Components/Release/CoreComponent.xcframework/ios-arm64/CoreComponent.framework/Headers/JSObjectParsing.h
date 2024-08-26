//
//  CommonNotificationFunctionality.h
//  VM
//
//  Created by Praveen.kothapeta on 12/04/15.
//
//

#import <Foundation/Foundation.h>
//#import "LuaAPI.h"
#import "KonyTypes.h"

@interface JSObjectParsing : NSObject

+(id) getConversionValueForFirstArgumentIn:(NSArray*) arguments KonyType:(KonyValueType) type;
+(id) getValueForKey:(NSString*) key  fromDict:(NSDictionary*) dictionary mandatory:(BOOL) isMandatory expectedValueClass:(Class) class;

@end
