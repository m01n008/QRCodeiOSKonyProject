//
//  CommonCryptoAPI.h
//  VM
//
//  Created by Amba on 24/05/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommonCryptoAPI : NSObject

+(NSArray *) readKey: (NSArray *) args;
+(NSArray *) retrievePublicKey: (NSArray *) args;
+(NSArray *) createHash: (NSArray *) args;
+(NSArray *) getNewKey: (NSArray *) args;
+(NSArray *) performDecryption: (NSArray *) args;
+(NSArray *) saveKey: (NSArray *) args;
+(NSArray *) performEncryption: (NSArray *) args;
+(NSArray *) deleteKey: (NSArray *) args;

+(NSArray *) newPerformEncryption: (NSArray *) args;
+ (NSArray *)createPBKDF2Key:(NSArray *)args;
+ (NSArray *)createHMacHash:(NSArray *)args;
+ (NSArray *)generateSecureRandom:(NSArray *)args;

@end
