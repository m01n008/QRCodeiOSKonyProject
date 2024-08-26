//
//  CommonNetAPI.h
//  VM
//
//  Created by Amba on 30/04/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommonNetAPI : NSObject

// Deprecated

/** @method invokeService
 *  @brief Invokes network call
 *  @param Array of arguments from JSRuntime
 *		=> url
 *		=> inputParamTable
 *		=> isBlocking 
 *  @returns connectionHandle
 **/
+(NSArray *) netInvokeService: (NSArray *) args;

// New in 5.0

//


/** @method invokeServiceAsync
 *  @brief Invokes network call in async mode
 *  @param Array of arguments from JSRuntime
 *		=> url
 *		=> inputParamTable
 *		=> callback 
 *  @returns connectionHandle
 **/
+ (NSArray *) invokeServiceAsync: (NSArray *) args;

/** @method cancelAsync
 *  @brief Cancels network call
 *  @param Array of arguments from JSRuntime
 *		=> connHandle - connection handle
 *  @returns nil.
 **/
+ (NSArray *) cancelAsync: (NSArray *) args;


/** @method getCookie
 *  @brief to retrieve cookies for the url
 *  @param Array of arguments from JSRuntime
 *		=> url - url for which cookies needs to be retrieved.
 *  @returns array containing cookies.
 **/
+(NSArray*) getCookie:(NSArray *)args;

/** @method setCookie
 *  @brief to set cookies for the url
 *  @param Array of arguments from JSRuntime
 *        => url - url for which cookies needs to be added. is arg1 & in arg2 : list of cookies in dict format :[{"cookiename":"myCookie","cookievalue":"value"} ,{},{},.......]
 *
 *  @returns array containing cookies.
 **/
+(void) setCookies:(NSArray *)args;

/** @method clearCookies
 *  @brief clears cookies depending on the arguments passed
 *  @param Array of arguments from JSRuntime, all the arguments are optional
 *		=> url - url for which cookies needs to be cleared.
 *      => cookie - cookie of a particular url to be cleared.
 *  @returns nil.
 **/
+ (NSArray *)clearCookies:(NSArray *)args;


/** @method loadClientCertificate
 *  @brief Sets a client certificate to be used for HTTPS client authentication to be used by kony net API’s
 *  @param Array of arguments from JSRuntime, 
 *  cert [rawbytes or base64String] -Mandatory
 *      Certificate being loaded should be of type PKCS12 format and can be of following data types.
 *
 *      ➢rawbytes [Userdata]
 *      ➢base64String [String]
 *
 *
 *  pass [String] -Optional
 *      Password protecting the PKCS12 certificate file.
 *      If password field is missing. Empty string will be used as password.
 *  @returns true or false .
 **/
+ (NSArray *)loadClientCertificate:(NSArray *)args;

/** @method removeClientCertificate
 *  @brief removes a client certificate to be used for HTTPS client authentication to be used by kony net API’s
 *  @returns void .
 **/
+(NSArray *) removeClientCertificate;

/** @method setIntegrityCheck
 *  @brief sets the details for http requests integirty check.
 *  @param a dictionary within an array. The dict will have the below keys.
 *		=> algo[string] - hashing algorithm to be used for checksum.
 *      => salt[string] - random salt string from developer.
 *      => headerName[string] - custom header name to be added.
 *      => validateResp[boolean] - option to specify if the checksum needs to be performed on response form server.
 *      => hostNamesList[Array of URL/host-names strings] - hosts to which the checksum header needs to be added to. If hosts are not specified, checksum needs to be applied to all out going HTTP/ HTTPs calls.
 *  @returns nil.
 **/
+ (NSArray *)setIntegrityCheck:(NSArray *)args;

/** @method removeIntegrityCheck
 *  @brief removes any Integrity check behavior previously set by developer.
 *  @param nil
 *  @returns nil.
 **/
+ (NSArray *)removeIntegrityCheck;

/** @method removeAllCachedResponses
 *  @brief Clears the receiver cache removing all responses from urls.
 *  FTR2113 - Caching of Sensitive Data
 **/
+ (void)removeAllCachedResponses:(NSArray *)args;

@end
