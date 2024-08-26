//
//  BlockExecuter.h
//  VM
//
//  Created by Dhananjay Raj on 30/09/15.
//
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JSExport.h>

@protocol BlockExecuterProtocol <JSExport>

//@optional
- (void)execute:(NSArray *)params;

@end

@interface BlockExecuter : NSObject <BlockExecuterProtocol>


@end
