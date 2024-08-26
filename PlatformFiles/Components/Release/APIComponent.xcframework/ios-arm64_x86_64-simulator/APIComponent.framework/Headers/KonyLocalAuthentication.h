//
//  KonyLocalAuthentication.h
//  VM
//
//  Created by ఉదయ్ కిరణ్ on 09/09/14.
//
//

#import <Foundation/Foundation.h>
#import <CoreComponent/CallBack.h>
#import <CoreComponent/KonyDS.h>
#import <CoreComponent/KonyTypes.h>

@interface KonyLocalAuthentication : NSObject
{
    @private
        CallBack *statusCallback;
        NSDictionary *configDict;
        LOCAL_AUTHENTICATION_MODE authenticationMode;
}

- (id) initWithMode:(LOCAL_AUTHENTICATION_MODE) authMode ConfigDict:(NSDictionary*) cDict statusCallback:(CallBack*) sCallback;
+ (LOCAL_AUTHENTICATION_STATUS) getStatusForAuthenticationMode:(LOCAL_AUTHENTICATION_MODE) authMode;
- (void) authenticate;
+ (KonyBiometryType) getBiometryType;

@end
