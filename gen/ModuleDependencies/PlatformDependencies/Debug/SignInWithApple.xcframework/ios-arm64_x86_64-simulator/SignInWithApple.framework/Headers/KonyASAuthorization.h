//
//  KonyASAuthorization.h
//  SignInWithApple
//
//  Created by Manikanta Hanumansetti on 26/05/20.
//  Copyright © 2020 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AuthenticationServices/AuthenticationServices.h>
#import <CoreComponent/CallBack.h>


API_AVAILABLE(ios(13.0))
@interface KonyASAuthorization : NSObject

@property(nonatomic,retain) ASAuthorizationAppleIDProvider *appleIDProvider;

+ (id) sharedManager;
+(void) evaluateCredentialStateforUserID:(NSString *)userID callback:(CallBack *)callback1;

@end


