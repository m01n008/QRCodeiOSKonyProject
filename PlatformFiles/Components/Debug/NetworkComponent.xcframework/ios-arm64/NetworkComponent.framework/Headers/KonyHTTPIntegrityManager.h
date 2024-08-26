//
//  KonyHTTPIntegrityManager.h
//  VM
//
//  Created by Dhananjay Raj on 06/05/16.
//
//

#import <CoreComponent/KonyManager.h>
#import <CommonCrypto/CommonDigest.h>
#import <CoreComponent/KonyTypes.h>

#define PASSTHROUGH_HEADER_NAME @"passthroughHeaderName"

@interface KonyHTTPIntegrityManager : KonyManager
{
    BOOL requiresHTTPIntegrityCheck;
    NSString *httpMethod;
    NSString *uniqueRandomString;
    
    NSString *hashingAlgo;
    NSString *salt;
    NSString *headerName;
    BOOL validateResponse;
    NSArray *hostNamesList;
}

@property (assign, nonatomic, readwrite) BOOL requiresHTTPIntegrityCheck;
@property (retain, nonatomic, readwrite) NSString *httpMethod;
@property (retain, nonatomic, readwrite) NSString *uniqueRandomString;

@property (retain, nonatomic, readwrite) NSString *hashingAlgo;
@property (retain, nonatomic, readwrite) NSString * salt;
@property (retain, nonatomic, readwrite) NSString * headerName;
@property (assign, nonatomic, readwrite) BOOL validateResponse;
@property (retain, nonatomic, readwrite) NSArray *hostNamesList;
@property (retain, nonatomic, readwrite) NSString *passthroughHeaderName;

- (void)resetIntegrityCheckParams:(NSDictionary *)paramsDict;
- (void)removeIntegrityCheckParams;

- (BOOL)isIntegrityCheckRequiredForURL:(NSURL *)url;

- (NSArray *)generateCheckSumForHTTPRequest:(NSURLRequest *)httpRequest
                          withMultiPartFlag:(BOOL)multiPartFlag;
- (NSString *)generateCheckSumForHTTPResponseData:(NSData *)responseData
              usingRequestTimeIntegrityParamsDict:(NSDictionary *)integrityParamsDict
                                 withResponseType:(HttpResponseType)responseType
                                   andPassThrough:(NSString*)isPassThrough;;

@end
