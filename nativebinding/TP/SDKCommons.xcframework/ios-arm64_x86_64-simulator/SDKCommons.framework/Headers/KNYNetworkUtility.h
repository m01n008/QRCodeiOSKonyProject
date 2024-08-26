//
//  KNYNetworkUtility.h
//  SDKCommons
//
//  Created by Archana Narahari on 26/12/17.
//  Copyright © 2017 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NetworkError.h"
#import "KNYNetworkConstants.h"

@interface KNYNetworkUtility : NSObject

+ (void)GET:(NSString *)url
queryParams:(NSDictionary *)queryParameters
    headers:(NSDictionary *)headers
    options:(NSDictionary *)options
   callback:(KNYNetworkCompletionHandler)callback;

+ (void)POST:(NSString *)url
 queryParams:(NSDictionary *)queryParameters
     headers:(NSDictionary *)headers
 requestType:(KNYRequestContentType)requestContentType
        body:(id)body
     options:(NSDictionary *)options
    callback:(KNYNetworkCompletionHandler)callback;

+ (void)PUT:(NSString *)url
queryParams:(NSDictionary *)queryParameters
    headers:(NSDictionary *)headers
requestType:(KNYRequestContentType)requestContentType
       body:(id)body
    options:(NSDictionary *)options
   callback:(KNYNetworkCompletionHandler)callback;

+ (void)DELETE:(NSString *)url
   queryParams:(NSDictionary *)queryParameters
       headers:(NSDictionary *)headers
       options:(NSDictionary *)options
      callback:(KNYNetworkCompletionHandler)callback;
@end
