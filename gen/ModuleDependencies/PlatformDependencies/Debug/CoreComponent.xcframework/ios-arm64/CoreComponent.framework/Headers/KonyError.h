//
//  KonyError.h
//  VM
//
//  Created by KH707 on 22/08/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RuntimeObject.h"

@interface KonyError : RuntimeObject{
    
    NSString *message;
    NSNumber *errorCode;
    NSString *name;
    NSString *sourceURL;
    NSNumber *line;
}
-(NSString *) jsTypeName ;
@property(nonatomic,retain) NSString *message;
@property(nonatomic,retain) NSNumber *errorCode;
@property(nonatomic,retain) NSString *name;
@property(nonatomic,retain) NSString *sourceURL;
@property(nonatomic,retain) NSNumber *line;

@end
