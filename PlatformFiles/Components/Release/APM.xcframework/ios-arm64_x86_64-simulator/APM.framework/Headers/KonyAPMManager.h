//
//  KonyAPMManager.h
//  VM
//
//  Created by KH287 on 27/03/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreComponent/KonyNotificationCenter.h>
#import "KonyEventNotificationDelegateProtocol.h"

#define CUSTOM_EVENT  @"enableMetricsCustomEvent"

@interface KonyAPMManager : NSObject
{
    NSArray *registeredEvents;
    BOOL customEventEnabled;
}
+ (id)sharedKonyAPMManager;
- (void)setEventTracking: (NSArray *)args;
- (NSArray*)getEventTracking;
-(void) handleNotification:(NSNotification*) notification;

@property (nonatomic,readwrite) id <KonyEventNotificationDelegateProtocol> delegate; //MADPIOS-2124: Object is deallocating. Object set as Strong
@property (nonatomic, retain) NSString* sessionId;

@end

