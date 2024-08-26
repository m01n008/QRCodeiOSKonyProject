//
//  SignInWithAppleModel.h
//  SignInWithApple
//
//  Created by Manikanta Hanumansetti on 16/05/20.
//  Copyright © 2020 Kony. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>
#import "SignInWithAppleWidget.h"

@interface SignInWithAppleModel : WidgetModel

@property(nonatomic) KonySignInWithAppleButtonType authorizationButtonType;
@property(nonatomic) KonySignInWithAppleButtonStyle authorizationButtonStyle;
@property(nonatomic) CGFloat authorizationButtonCornerRadius;
@property (nonatomic) CallBack *onSuccessCallback;
@property (nonatomic) CallBack *onFailureCallback;

@end



