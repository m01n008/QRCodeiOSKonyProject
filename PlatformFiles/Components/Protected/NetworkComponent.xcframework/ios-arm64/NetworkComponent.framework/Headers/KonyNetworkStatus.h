#import <Foundation/Foundation.h>
#import <CoreComponent/KonyTypes.h>
#import <CoreComponent/CallBack.h>
#import <CoreComponent/Reachability.h>

/* 
 * singleton class, usage should be by sharedInstance class method only
 */
@interface KonyNetworkStatus : NSObject {

    NetworkStatusType networkStatus;
}

@property (nonatomic, retain) CallBack *statusChange;
@property (nonatomic, retain) Reachability *reachability;

+ (KonyNetworkStatus *)sharedInstance;

- (int)getActiveNetworkType;
- (void)updateNetWorkStatus;
- (BOOL)isNetworkAvailable:(int)networkType;
- (void)setNetworkCallbacks:(NSDictionary*)callbackConfig;

@end
