//
//  ExeContext.h
//  VVM
//
//  Created by Srikanth Tamalampudi on 23/04/09.
//  Copyright 2009 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ltypes.h"

@interface ExeContext : NSObject {
@public
	id __weak *regPool;
	int currentSize;
	PFuncContext pCurrent, pPrevious;
}

+(ExeContext *) exeContext;

-(void) growRegPoolTo: (int) n;
-(void) dealloc;

@end
