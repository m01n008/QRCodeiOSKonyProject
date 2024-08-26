//
//  JSAnimationAPI.h
//  VM
//
//  Created by Prabhakar K on 15/07/14.
//
//

#import "JSWidget.h"
#import "JSStaticAPI.h"
#import "KeyFrameAnimationModel.h"
#import "KonyValueConversionUtility.h"
@interface JSAnimationAPI : JSWidget <JSStaticAPI>
+ (NSArray *) createAnimation: (NSArray *) arguments;
@end
