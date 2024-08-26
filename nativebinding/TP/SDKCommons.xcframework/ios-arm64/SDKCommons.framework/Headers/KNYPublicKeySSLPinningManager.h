//
//  KNYPublicKeySSLPinningManager.h
//  SDKCommons
//
//  Created by Archana Narahari on 05/08/19.
//  Copyright © 2019 kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

NS_ASSUME_NONNULL_BEGIN

@interface KNYPublicKeySSLPinningManager : NSObject

+ (id)sharedManager;
+ (BOOL)isEnabled;
- (BOOL) isServerTrust:(SecTrustRef)serverTrust
      validForHostname:(NSString *)hostname;

@end

NS_ASSUME_NONNULL_END
