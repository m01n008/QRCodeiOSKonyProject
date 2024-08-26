//
//  KonyBoolean.h
//  VM
//
//  Created by KH206 on 12/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KonyBoolean : NSObject<NSSecureCoding>
{
    BOOL value;
}

@property (nonatomic) BOOL value;

- (id) initWithInt: (NSInteger) aInt;
- (id) initWithBOOL: (BOOL) aBOOL;
- (id) initWithNumber: (NSNumber*) aNumber;
+ (id) boolWithBool: (BOOL) aBool;
+ (id) boolWithInt: (NSInteger) aInt;
+ (id) boolWithNumber: (NSNumber*) aNumber;
-(BOOL) boolValue;

@end
