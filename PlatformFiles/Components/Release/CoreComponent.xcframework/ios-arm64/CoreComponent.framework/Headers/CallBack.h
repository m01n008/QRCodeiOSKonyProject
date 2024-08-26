//
//  CallBack.h
//  VM
//
//  Created by KH206 on 16/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CallBack : NSObject <NSCopying>
{
    id callbackObject;
    uint threadIDToExecute;
}

@property (nonatomic, readonly) id callBack;
@property (nonatomic) uint threadIDToExecute;
@property (nonatomic) BOOL skipLayout;

+ (CallBack*) callBackWithObject: (id) aCallBackObject;

- (id) initWithCallBackObject: (id) aCallBackObject;

- (NSArray*) executeWithArguments:(NSArray*)arguments; // spawn NO
- (NSArray*) executeWithArguments:(NSArray*)arguments spawn:(BOOL)spawn;


@end
