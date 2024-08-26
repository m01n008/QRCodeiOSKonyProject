//
//  ApplicationContextManager.h
//  VM
//
//  Created by Amba on 19/08/13.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class ApplicationContext;
@class CallBack;
@interface FailureException : NSException
-(void)raiseIssueAlert;
@end
@interface ApplicationContextManager : NSObject  {

    @private
    ApplicationContext *mainApplicationContext;
    ApplicationContext *currentApplicationContext;
    NSMutableDictionary *applicationContexts;
    
}

+(ApplicationContextManager *) sharedApplicationContextManager;

-(ApplicationContext *) applicationContextWithLocation:(NSString *)location id:(NSString *)appID launchCallback:(CallBack *)callback;

-(ApplicationContext *) getMainApplicationContext;
-(ApplicationContext *) getCurrentApplicationContext;
-(void) setCurrentApplicationContext:(ApplicationContext *) applicationContext;
- (BOOL)isCurrentApplicationContextTheMainContext;
@end
