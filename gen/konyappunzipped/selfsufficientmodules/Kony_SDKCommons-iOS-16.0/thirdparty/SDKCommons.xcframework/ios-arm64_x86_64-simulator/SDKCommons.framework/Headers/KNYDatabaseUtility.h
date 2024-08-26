//
//  KNYDatabaseUtility.h
//  SDKCommons
//
//  Created by Satya Eedara on 27/12/17.
//  Copyright © 2017 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KNYDatabaseUtility : NSObject

/**
 * Validates the connection options to setup the database connection
 * @param options hold the device db encryption key
 */
+ (BOOL)areDbConnectionOptionsValid:(NSDictionary <NSString*, id>*)options
                              error:(DatabaseError **)error;
@end

