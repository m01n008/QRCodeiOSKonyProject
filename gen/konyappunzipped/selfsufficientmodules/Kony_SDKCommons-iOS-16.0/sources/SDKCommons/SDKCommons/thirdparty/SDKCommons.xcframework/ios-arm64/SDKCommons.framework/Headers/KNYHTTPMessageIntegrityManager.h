//
//  KNYHTTPMessageIntegrityManager.h
//  SDKCommons
//
//  Created by Archana Narahari on 23/01/18.
//  Copyright © 2018 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KNYHTTPMessageIntegrityManager : NSObject

/**
 Method to return the singleton instance.

 @return Returns an instance of the singleton.
 */
+ (instancetype)sharedInstance;


/**
 Setter for enabling the integrity check.

 @param properties Dictionary which takes the properties for Integrity.
 @param error      Parameter to populate error, if any.
 */
+ (BOOL)setIntegrityCheck:(id)properties
                    error:(NSError **)error;

/**
 Method for disabling the integrity check.
 */
+ (void)removeIntegrityCheck;

@end
