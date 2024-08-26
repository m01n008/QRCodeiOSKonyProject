//
//  KNYCommonUtility.h
//  SDKCommons
//
//  Created by Archana Narahari on 27/12/17.
//  Copyright © 2017 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KNYCommonUtility : NSObject

+ (BOOL)isObjectNilOrNull:(id)object;

+ (BOOL)isValidString:(id)object;

+ (BOOL)isValidBool:(id)object;

+ (BOOL)isArrayValidAndNotEmpty:(NSArray *)array;

+ (BOOL)isDictionaryValidAndNotEmpty:(NSDictionary *)dictionary;

+ (NSArray <NSDictionary *> *)convertToOrderedKeyValuePairs:(NSDictionary *)dictionaryToBeConverted;

/**
 Converts and return NSDictionary from JSONString
 
 @param JSONString JsonString to be converted
 @param error      Error if any
 @return           JSONObject
 */
+ (NSDictionary *)getDictionaryFromJSONString:(NSString *)JSONString
                                        error:(NSError **)error;

/**
 Generates JSON string from NSdictionary
 
 @param data  Dictionary to be converted
 @param error Error occurred during conversion
 @return      JSONString
 */
+ (NSString *)getJSONStringFromNSDictionary:(NSDictionary *)data
                                      error:(NSError **)error;

//Utility method to return value for allowbundledonly key in info.plist.
+ (BOOL)shouldAllowBundledOnly;

//Utility method to return value for allowbundledandsystemdefault key in info.plist.
+ (BOOL)shouldAllowBundledWithSystemDefault;

//Utility method to return value for allowselfsignedcertificate key in info.plist.
+ (BOOL)shouldAllowSelfSignedCertificate;

//Utility method to return array of bundled certificates
+ (NSArray *)getServerTrustCertsData;

//Utility method to return true of certificates are bundled else false.
+ (BOOL)areServerTrustCertsBundled;

+ (NSString *)convertToNativeString:(id)value;

+ (NSString *)getPathForAppArtifacts;

@end
