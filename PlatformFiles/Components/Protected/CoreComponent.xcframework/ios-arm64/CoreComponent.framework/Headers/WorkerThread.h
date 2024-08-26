//
//  Worker.h
//  VM
//
//  Created by KH707 on 22/08/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RuntimeObject.h"
#import "CallBack.h"
#import "RunTimeManager.h"


@interface KonyWorkerThread : RuntimeObject{
    //NSString *scriptName;
    uint workerID;
    
    
@private
    NSMutableArray *postMessageHandlersInParentScope;
    NSMutableArray *onErrorHandlersInParentScope;
    
    NSMutableArray *postMessageHandlersInChildScope;
    NSMutableArray *onErrorHandlersInChildScope;
}
//@property(nonatomic,retain) CallBack *message;
@property(nonatomic)uint workerID;

-(void) postMessage:(NSArray*) data;
-(void) postMessageWrapperInChild:(NSArray*) args;

-(void) addEventListener:(NSArray*) args;
-(void) addEventListenerForChild:(NSArray*) args;

-(void) removeEventListener:(NSArray*) args;
-(void) removeEventListenerForChild:(NSArray*) args;

-(void) executeErrorHandlerInParentScope:(id) args;
-(void) executeErrorHandlerInChildScope:(id) args;

-(void) importScripts:(NSArray*) args;

-(void) terminate;
-(void) close;





@end


