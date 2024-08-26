//
//  NSDictionary+BVJSONString.h
//  VMAppWithKonylib
//
//  Created by Chandan Makam on 06/11/15.
//
//

#import <Foundation/Foundation.h>

@interface NSDictionary (BVJSONString)
-(NSString*) bv_jsonStringWithPrettyPrint:(BOOL) prettyPrint;
@end
