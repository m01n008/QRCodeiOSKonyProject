//
//  PointerSupport.m
//  NFIUtility
//
//  Created by KH1128 on 11/10/17.
//  Copyright © 2017 KH1128. All rights reserved.
//

#import "PointerSupport.h"

@interface BoolPointer ()

-(instancetype) initWithPtr: (BOOL*) p;

@end

@implementation BoolPointer

-(instancetype) initWithPtr: (BOOL*) p {
    ptr = p;
    return self;
}

+(instancetype) boolPointerWithPtr: (BOOL*) p {
    return [[(BoolPointer*)[self alloc] initWithPtr: p] autorelease];
} 

-(BOOL) getContents {
    if (ptr) {
        return *ptr;
    }

    return NO;
}

-(void) setContents: (BOOL) b {
    if (ptr) {
        *ptr = b;
    }
}

@end

@interface IdPointer ()

-(instancetype) initWithPtr: (id*) p;

@end

@implementation IdPointer

-(instancetype) initWithPtr: (id*) p {
    ptr = p;
    return self;
}

+(instancetype) idPointerWithPtr: (id*) p {
    return [[(IdPointer*)[self alloc] initWithPtr: p] autorelease];
}

-(id) getContents {
    if (ptr) {
        return *ptr;
    }

    return nil;
}

-(void) setContents: (id) i {
    if (ptr) {
        *ptr = i;
    }
}

@end
