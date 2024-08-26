//
//  BinaryPublicConstants.h
//  Binary
//
//  Created by Chirag Mantri on 09/01/19.
//  Copyright © 2019 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

// Binary Callbacks
typedef void (^BinaryFailureCallback) (NSDictionary<NSString *, id> *error);
typedef void (^BinarySuccessCallback) (NSDictionary<NSString *, id> *result);
typedef void (^BinaryProgressCallback) (NSDictionary<NSString *, id> *progress);
