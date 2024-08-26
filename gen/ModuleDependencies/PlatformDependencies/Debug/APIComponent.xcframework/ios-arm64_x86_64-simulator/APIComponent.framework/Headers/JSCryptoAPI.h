//
//  JSCryptoAPI.h
//  VM
//
//  Created by Amba on 24/05/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSStaticAPI.h>
#import "CommonCryptoAPI.h"

@interface JSCryptoAPI : CommonCryptoAPI <JSStaticAPI>

// Methods are moved to CommonCryptoAPI.h
+(NSArray *) performEncryption:(NSArray *)args;

@end
