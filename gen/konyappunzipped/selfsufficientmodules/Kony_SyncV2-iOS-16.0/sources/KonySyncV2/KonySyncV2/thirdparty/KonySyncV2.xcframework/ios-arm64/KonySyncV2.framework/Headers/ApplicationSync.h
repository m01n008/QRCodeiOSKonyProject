//
//  ApplicationSync.h
//  KonySyncV2
//
//  Created by Chirag Mantri on 15/02/17.
//  Copyright © 2017 Kony. All rights reserved.
//
#import <Foundation/Foundation.h>

#import "KSConstants.h"

@interface ApplicationSync : NSObject

/**
 Preventing object creation for ApplicationSync using init.
 */
- (instancetype)init __attribute__((unavailable("Use static methods.")));

/**
 Method to set the claims token by MFSDK (KSAuthUtil)
 
 @param token Claims Token
 */
+ (void)setToken:(NSString *)token;

/**
 Method to set reportingParams
 
 @param reportingParams which are to be set.
 */
+ (void)setReportingParams:(NSString *)reportingParams;

/**
 Static Function to call Application Sync Setup.
 
 @param objectServiceList Objects with metadata URLs in a Dictionary
 @param options are required to setup the database connection
 @param onSuccess onSuccess will be invoked on the Success of SyncSetup.
 @param onFailure onFailure will be invoked at the time of any error.
 */
+ (void)setupSync:(NSDictionary <NSString *, NSDictionary <NSString * , NSString *> *> *)objectServiceList
      withOptions:(NSDictionary <NSString *, id>*)options
        onSuccess:(KNYSuccessCompletionHandler)onSuccess
        onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 Static function to remove all tables for a Application
 
 @param options are required to setup the database connection
 @param onSuccess onSuccess will be invoked on the Successfull removal of all tables of an Application.
 @param onFailure onFailure will be invoked if all tables are not removed.
 */
+ (void)drop:(NSDictionary <NSString *, id>*)options
   onSuccess:(KNYSuccessCompletionHandler)onSuccess
   onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 Resets application's sync database. This is done by dropping all tables followed by setup at at application level.
 
 @param objectServiceList Objects with metadata URLs in a Dictionary
 @param options are required to setup the database connection
 @param onSuccess onSuccess will be invoked on the Success of SyncReset.
 @param onFailure onFailure will be invoked at the time of any error.
 */
+ (void)reset:(NSDictionary <NSString *, NSDictionary <NSString * , NSString *> *> *)objectServiceList
  withOptions:(NSDictionary <NSString *, id>*)options
    onSuccess:(KNYSuccessCompletionHandler)onSuccess
    onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 Static function for rollback Application to its previous sync state
 
 @param onSuccess onSuccess will be invoked on the Successfull rollback at Application level.
 @param onFailure onFailure will be invoked if rollback failed at Application level
 */
+ (void)rollback:(KNYSuccessCompletionHandler)onSuccess
       onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 Static function for executing select query on device database
 
 @param onSuccess onSuccess will be invoked on the Successfull execution of select query.
 @param onFailure onFailure will be invoked if query failed on validation or device db.
 */
+ (void)executeSelectQuery:(NSString *)query
                 onSuccess:(KNYSuccessCompletionHandler)onSuccess
                 onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 Static function to invoke Application level sync, i.e on all object services.

 @param options contains application level options,
    sample: {
        syncMode: "parallel" / "sequential",
        objectServiceOptions: {
            objectServiceName1: {-- object service sync options},
            ...
        }
    }
 @param onSuccess callback to be invoked on the success of application level sync.
 @param onFailure callback to be invoked on the failure of application level sync.
 @param onProgress callback to be invoked during sync to notify sync progress.
 */
+ (void)startSync:(NSDictionary <NSString *, id>*)options
        onSuccess:(KNYSuccessCompletionHandler)onSuccess
        onFailure:(KNYFailureCompletionHandler)onFailure
       onProgress:(KNYProgressCompletionHandler)onProgress;

@end
