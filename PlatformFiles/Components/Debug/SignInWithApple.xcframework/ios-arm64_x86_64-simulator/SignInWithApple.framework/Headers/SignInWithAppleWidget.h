//
//  SignInWithAppleWidget.h
//  SignInWithApple
//
//  Created by Manikanta Hanumansetti on 16/05/20.
//  Copyright © 2020 Kony. All rights reserved.
//

#import <CoreComponent/Widget.h>
#import <AuthenticationServices/AuthenticationServices.h>

@interface SignInWithAppleWidget : Widget <ASAuthorizationControllerDelegate,ASAuthorizationControllerPresentationContextProviding>

@end


