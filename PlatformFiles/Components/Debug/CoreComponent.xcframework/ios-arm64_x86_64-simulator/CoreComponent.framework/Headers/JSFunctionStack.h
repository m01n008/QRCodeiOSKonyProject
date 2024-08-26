//
//  JSFunctionStack.h
//  VM
//
//  Created by KH206 on 16/01/14.
//
//

#import <Foundation/Foundation.h>

@interface JSFunctionStack : NSObject

-(id) initWithID:(NSString*) stackID;
-(void) pushFunction:(NSString*) functionName;
-(NSString*) popfunction;
-(NSArray*) functionStack;
    
-(void) displayStack;
@end
