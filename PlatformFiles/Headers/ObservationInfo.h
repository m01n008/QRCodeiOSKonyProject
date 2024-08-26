//
//  ObservationInfo.h
//  VM
//
//  Created by KH206 on 05/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//



#import <Foundation/Foundation.h>

@interface ObservationInfo : NSObject
{
    NSString     *property;
    NSDictionary *changeDict;
    SEL          propertySelector;
    id           object;
}

@property (nonatomic, retain) NSString  *property;
@property (nonatomic, retain) NSDictionary  *changeDict;
@property (nonatomic, assign) SEL  propertySelector;
@property (nonatomic, retain) id   object;

#if DEBUG_ENABLE_OBJECT_PROFILING
+ (long int) getObjectCount;
#endif

@end
