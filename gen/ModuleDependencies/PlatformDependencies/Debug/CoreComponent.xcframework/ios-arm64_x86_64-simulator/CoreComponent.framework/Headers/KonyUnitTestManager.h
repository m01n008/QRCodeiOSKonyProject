//
//  KonyUnitTestManager.h
//  VM
//
//  Created by Saurabh Mendhe on 11/06/17.
//
//

#import <Foundation/Foundation.h>

@interface KonyUnitTestManager : NSObject
+ (instancetype)sharedInstance;
-(void)writeTestData:(NSString *)data;
-(void)testDataCompleted;
@end
