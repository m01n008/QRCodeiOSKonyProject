//
//  KonySSLCertPinningManager.h
//  NetworkComponent
//
//  Created by Praveen Kanike on 24/04/20.
//  Copyright © 2020 Aravind Macharla. All rights reserved.
//

#ifndef KonySSLCertPinningManager_h
#define KonySSLCertPinningManager_h
#import <Foundation/Foundation.h>
#define INITIAL_CAPACITY 3
/*!
@class KonySSLCertPinningManager
@brief The KonySSLCertPinningManager class, used to manage the certs bundled in the app
@discussion    This class was designed to manage the certs bundled in the application.
@superclass NSObject
*/
@interface KonySSLCertPinningManager : NSObject
{
    NSMutableDictionary<NSString*, NSMutableArray<NSData*>*>* sslCertPinned;
}

+(KonySSLCertPinningManager*)sharedInstance;
/**
@brief Used for checking is there any certs bundled with host name(common name of der file)
@discussion This class maintains the certs with hostname and its base 64 data in dict, using the dict will check weather host is present or not
@param  hostName HostName of the website
@return returns true if valid certs are bundled otherwise false
*/
-(BOOL)isSSLCertPresentWithHostName:(NSString*)hostName;
- (NSSet<NSData*>*) eligibleSSLCertPinnedKeyForDomain:(NSString*)domain;
@end
#endif /* KonySSLCertPinningManager_h */
