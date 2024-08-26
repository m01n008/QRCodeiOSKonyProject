//
//  KNYMetricsConstants.h
//  KMBaasClient
//
//  Created by KH200 on 31/03/15.
//  Copyright (c) 2015 Kony. All rights reserved.
//
#import <Foundation/Foundation.h>

#ifndef KMBaasClient_KNYMetricsConstants_h
#define KMBaasClient_KNYMetricsConstants_h

typedef NS_ENUM(NSUInteger, KNYEventType) {
    KNYEventTypeFormEntry = 0,
    KNYEventTypeFormExit = 1,
    KNYEventTypeTouch = 2,
    KNYEventTypeServiceRequest = 3,
    KNYEventTypeServiceResponse = 4,
    KNYEventTypeGesture = 5,
    KNYEventTypeOrientation = 6,
    KNYEventTypeError = 7,
    KNYEventTypeHandledException = 8,
    KNYEventTypeCrash = 9,
    KNYEventTypeCustom = 10,
    KNYEventTypeServiceCall = 11,
    KNYEventTypeAppTransition = 12,
    KNYEventTypeAppLoad = 13,
    KNYEventTypeComponent = 14
};

typedef NS_ENUM(NSUInteger, KNYEventConfigType)
{
    KNYEventConfigTypeBuffer,
    KNYEventConfigTypeInstant
};
#endif

@interface KNYMetricsServiceConstants : NSObject
@end

