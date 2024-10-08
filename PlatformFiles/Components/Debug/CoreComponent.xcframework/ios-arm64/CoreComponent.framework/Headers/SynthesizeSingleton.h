//
//  SynthesizeSingleton.h
//  CocoaWithLove
//
//  Created by Matt Gallagher on 20/10/08.
//  Modified by Sunil Phani Manne on 13/11/13.
//
//  Copyright 2009 Matt Gallagher. All rights reserved.
//
//  Permission is given to use this source code file without charge in any
//  project, commercial or otherwise, entirely at your risk, with the condition
//  that any redistribution (in part or whole) of source code must retain
//  this copyright and permission notice. Attribution in compiled projects is
//  appreciated but not required.
//

#define SYNTHESIZE_SINGLETON_FOR_CLASS(classname) \
 \
static classname *shared##classname = nil; \
 \
+ (instancetype)sharedInstance \
{ \
    static dispatch_once_t onceToken;\
    dispatch_once(&onceToken, ^{\
        shared##classname = [[self alloc] init]; \
    });\
	return shared##classname; \
} \
 \
+ (id)allocWithZone:(NSZone *)zone \
{ \
    static dispatch_once_t uniqueToken;\
    dispatch_once(&uniqueToken, ^{\
        shared##classname = [super allocWithZone:zone]; \
    });\
    return shared##classname; \
} \
 \
- (id)copyWithZone:(NSZone *)zone \
{ \
	return self; \
} \
 \
