//
//  OperationInvoker.h
//  VM
//
//  Created by Sivaprasad Raju on 12/01/13.
//
//

#import <Foundation/Foundation.h>

@interface OperationInvoker : NSObject
{
    id retValue;
    NSInvocation *invocation;
}

@property (nonatomic, readonly) id retValue;

-(id) initWithInvocation:(NSInvocation*) inv;
-(void) invoke;

@end
