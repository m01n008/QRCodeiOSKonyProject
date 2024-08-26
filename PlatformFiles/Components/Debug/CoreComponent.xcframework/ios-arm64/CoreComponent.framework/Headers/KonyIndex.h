//
//  KonyIndex.h
//  VM
//
//  Created by KH206 on 12/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KonyIndex : NSObject
{
    NSNumber *value;
}

@property(nonatomic, readonly) NSNumber *value;
- (id) initWithNumber: (NSNumber*) number;
@end
