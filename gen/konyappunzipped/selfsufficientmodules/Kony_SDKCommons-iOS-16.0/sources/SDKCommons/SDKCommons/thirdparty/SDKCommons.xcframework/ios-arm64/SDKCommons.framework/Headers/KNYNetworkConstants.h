//
//  KNYNetworkConstants.h
//  SDKCommons
//
//  Created by Archana Narahari on 02/01/18.
//  Copyright © 2018 kony. All rights reserved.
//

#import "NetworkError.h"

#ifndef KNYNetworkConstants_h
#define KNYNetworkConstants_h

/**
 Constants related to multipart content formatter
 */
#define KNYNETWORKCONSTANT_PARTS @"parts"
#define KNYNETWORKCONSTANT_PARTCONTENT @"partContent"
#define KNYNETWORKCONSTANT_CONTENTTYPE @"Content-Type"
#define KNYNETWORKCONSTANT_HTTPRESPONSE_OBJECT @"httpResponse"
#define KNYNETWORKCONSTANT_BOUNDARYCONDITION @"boundaryCondition"

/**
 Constants related to Content-Type
 */
#define KNYNETWORKCONSTANT_CONTENTTYPE_MULTIPART @"multipart/form-data"
#define KNYNETWORKCONSTANT_CONTENTTYPE_APPLICATIONJSON @"application/json"
#define KNYNETWORKCONSTANT_CONTENTTYPE_OCTETSTREAM @"application/octet-stream"
#define KNYNETWORKCONSTANT_CONTENTTYPE_FORMURLENCODE @"form/x-www-form-urlencoded"
#define KNYNETWORKCONSTANT_CONTENTTYPE_APPLICATIONURLENCODE @"application/x-www-form-urlencoded"

/**
 Constants related to HTTP message integrity
 */
#define KNYNETWORKCONSTANTS_SALT @"salt"
#define KNYNETWORKCONSTANTS_ALGO @"algo"
#define KNYNETWORKCONSTANTS_HEADERNAME  @"headerName"
#define KNYNETWORKCONSTANTS_HOSTNAMESLIST @"hostNamesList"
#define KNYNETWORKCONSTANTS_VALIDATE_RESPONSE @"validateResp"
#define KNYNETWORKCONSTANT_INTEGRITY_STATUS @"IntegrityStatus"
#define KNYNETWORKCONSTANTS_PASSTHROUGHHEADER @"passthroughHeaderName"
#define KNYNETWORKCONSTANT_SKIP_MESSAGE_INTEGRITY @"skipMessageIntegrity"
#define KNYNETWORKCONSTANTS_DEFAULT_PASSTHROUGH_HEADER @"X-Kony-Passthrough"

/**
 Constants related to support App-Extensions
 */
//This will be exposed to end user and will be set in info.plist
#define KNYSharedContainerIdentifier @"KNYSharedContainerIdentifier"
/**
 Options for different type of body type.
 
 */
typedef NS_ENUM(NSUInteger, KNYRequestContentType) {
    
    KNYRequestContentTypePlain = 0,
    KNYRequestContentTypeJSON,
    KNYRequestContentTypeFormURLEncoded,
    KNYRequestContentTypeMultipart,
    KNYRequestContentTypeNone,
    KNYRequestContentTypeDefault = KNYRequestContentTypePlain
    
};

/**
 Enum denoting the status for integrity check.
 
 */
typedef NS_ENUM(NSUInteger, KNYResponseIntegrityCheckStatus) {
    
    KNYResponseIntegrityCheckStatusNotDone = 0,
    KNYResponseIntegrityCheckStatusSuccessful,
    KNYResponseIntegrityCheckStatusFailed,
    KNYResponseIntegrityCheckStatusDefault = KNYResponseIntegrityCheckStatusNotDone
};

/**
 Network completion handler.

 @param data Data recieved from the server as a part of the response.
 @param responseDictionary Dictionary containing the response object and the integrity status.
 @param error Network error, if any.
 */
typedef void (^KNYNetworkCompletionHandler)(NSData *data, NSDictionary *responseDictionary, NetworkError *error);
#endif /* KNYNetworkConstants_h */
