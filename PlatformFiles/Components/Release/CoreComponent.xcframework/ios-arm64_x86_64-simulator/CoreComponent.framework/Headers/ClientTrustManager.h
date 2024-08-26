//
//  ClientTrustManager.h
//  VM
//
//  Created by KH1095 on 26/09/15.
//
//

#import "KonyManager.h"

@interface ClientTrustManager : KonyManager

- (BOOL)loadClientCertificate:(id)cert withPass:(NSString*)pass;
- (void)removeClientCertificate;
- (BOOL)bundledClientTrustCerts;
- (NSURLCredential *)getbundledClientCredential;
@end