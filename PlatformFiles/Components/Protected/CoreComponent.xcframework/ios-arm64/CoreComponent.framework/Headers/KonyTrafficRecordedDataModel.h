//
//  KonyTrafficRecordedDataModel.h
//  CoreComponent
//
//  Created by Soumesh Banerjee on 31/08/18.
//  Copyright © 2018 Kony Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "KonyTrafficInspectorRulesManager.h"

#define ENTITY_NAME @"KonyTrafficRecordedDataModel"

@interface KonyTrafficRecordedDataModel : NSManagedObject
@property (nonatomic, retain) NSData* requestBody;
@property (nonatomic, retain) NSDictionary<NSString *, NSString *>* requestHeader;
@property (nonatomic, retain) NSString* requestID;
@property (nonatomic, retain) NSDate* requestTimestamp;
@property (nonatomic, retain) NSString* requestURL;

@property (nonatomic, retain) NSData* responseBody;
@property (nonatomic, retain) NSString* responseEncoding;
@property (nonatomic) NSInteger responseExpectedContentSize;
@property (nonatomic, retain) NSDictionary<NSString *, NSString *>* responseHeader;
@property (nonatomic, retain) NSString* responseMIMEType;
@property (nonatomic, retain) NSDate* responseTimestamp;
@property (nonatomic) NSInteger responseStatusCode;

+(NSString*) generateRequestIDForURL:(NSString*)requestURL withRequestHeaders:(NSDictionary<NSString*, NSString*>*)requestHeader andRequestBody:(NSData*)requestBody;

@end
