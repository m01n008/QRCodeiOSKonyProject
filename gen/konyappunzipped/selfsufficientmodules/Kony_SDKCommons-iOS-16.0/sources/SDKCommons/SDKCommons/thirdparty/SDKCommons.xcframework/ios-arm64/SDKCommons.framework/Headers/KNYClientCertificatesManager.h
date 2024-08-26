//
//  KNYClientCertificatesManager.h
//  SDKCommons
//
//  Created by Rakesh Kumar Gyanchandani on 7/3/19.
//  APIs for loading and removing client certificates from SDK Commons Network Layer.
//  Copyright © 2019 kony. All rights reserved.
//

@interface KNYClientCertificatesManager : NSObject

+ (void)removeClientCertificate;

+ (BOOL)loadClientCertificate:(NSDictionary *)args;

@end
