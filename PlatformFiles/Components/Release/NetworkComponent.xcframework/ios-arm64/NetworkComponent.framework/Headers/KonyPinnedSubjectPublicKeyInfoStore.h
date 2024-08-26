//
//  KonyPinnedSubjectPublicKeyInfoStore.h
//  NetworkComponent
//
//  Created by Soumesh Banerjee on 22/11/18.
//  Copyright © 2018 Aravind Macharla. All rights reserved.
//

#import <Foundation/Foundation.h>
#define INITIAL_CAPACITY 3
#define KONY_HPKP_KEYS_FILE_DIR_NAME @"certs"
#define KONY_HPKP_KEYS_FILE_NAME @"public_keys"
#define KONY_HPKP_KEYS_FILE_TYPE @"json"
NS_ASSUME_NONNULL_BEGIN

@interface KonyPinnedSubjectPublicKeyInfoStore : NSObject {
    NSDictionary<NSString*, NSArray<NSString*>*>* _pinnedBase64PublicKeys;
}
+ (id) sharedStore;
- (NSSet<NSString*>*) eligiblePinnedKeyForDomain:(NSString*)domain;
@end

NS_ASSUME_NONNULL_END
