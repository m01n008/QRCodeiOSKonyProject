//
//  KonyAuthChallengesHandler.h
//  NetworkComponent
//
//  Created by Praveen Kanike on 21/04/20.
//  Copyright © 2020 Temenos. All rights reserved.
//

#ifndef KonyAuthChallengesHandler_h
#define KonyAuthChallengesHandler_h
#import <Foundation/Foundation.h>
#import <Foundation/NSURLSession.h>
#import <Foundation/NSURLCredential.h>
#import <CoreComponent/ClientTrustManager.h>
#import <CoreComponent/KonyUtil.h>
#import "KonyPublicKeySSLPinningManger.h"
#import <objc/runtime.h>
#import <objc/message.h>
#import "KonySSLCertPinningManager.h"
/*!
@class KonyAuthChallengesHandler

@brief The KonyAuthChallengesHandler class

@discussion    Main class for handling authentication challenges across the FW.
@superclass NSObject
*/
@interface KonyAuthChallengesHandler : NSObject
/*! @brief This property is used to for handling server auth challenges as below:
 These only works when allowbundledonly/KonyHTTPPublicKeyPinning is enabled
 SSLValidationBehaviourNone = No validation of certs takes place
 SSLValidationBehaviourDefault = Certs validation takes place others url's will be cancelled
 SSLValidationBehaviourCheckDeclaredAllowOthers = Only for the certs added are validated and others will be allowed
 */
@property (nonatomic,assign) SSLValidationBehaviour sslValidationBehaviour;
/*! @brief This property is used to Manage the list of certificates bundled in the app*/
@property (nonatomic,assign) KonySSLCertPinningManager *sslCertManager;
/**
@brief Exposed object on which authentication challenge needs to be called

@discussion Before calling this function, need to set the following things for different challenges
 Client Authentication : set userCredentials bool value along with userName and password properties
 Server Authentication : For different kind of validation set sslValidationBehaviour
@param  challenge The challenge to handle
@param  completionHandler Completion handler needs to call after successfull challenge processing
*/
- (void)handleAuthChallenge:(NSURLAuthenticationChallenge *)challenge withCompletionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *credential))completionHandler;
//No need to expose outside world once all the httprequest, Bgtransfer, urlsession auth challenges handled in in this implementation class
- (void)handlePublicKeyPinAuthenticationMethodServerTrustForChallenge:(NSURLAuthenticationChallenge *)challenge withCompletionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *credential))completionHandler;
@end
#endif /* KonyAuthChallengesHandler_h */
