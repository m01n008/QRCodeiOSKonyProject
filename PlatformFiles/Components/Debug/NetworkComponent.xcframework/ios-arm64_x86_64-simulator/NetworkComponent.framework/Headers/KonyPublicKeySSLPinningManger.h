//
//  KonyPublicKeySSLPinningManger.h
//  NetworkComponent
//
//  Created by Soumesh Banerjee on 22/11/18.
//  Copyright © 2018 Kony Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AssertMacros.h>
#import <CommonCrypto/CommonDigest.h>
#import "KonyPinnedSubjectPublicKeyInfoStore.h"
#define KONY_HPKP_KEY @"KonyHTTPPublicKeyPinning"
NS_ASSUME_NONNULL_BEGIN

@interface KonyPublicKeySSLPinningManger : NSObject

+ (id)sharedManager;
+ (BOOL)isEnable;
- (BOOL)isServerTrust:(SecTrustRef) serverTrust validForHostname:(NSString*) hostname;
- (BOOL)isHostKeyPresent:(SecTrustRef)serverTrust validForHostname:(NSString*) hostname;
@end

NS_ASSUME_NONNULL_END
