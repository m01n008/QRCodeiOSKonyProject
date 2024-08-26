//
//  KeychainItemWithTouchId.h
//  konylib
//
//  Created by Naresh Kodumuri on 4/3/18.
//

#import <Foundation/Foundation.h>

@interface KeychainItemWithTouchId : NSObject

-(OSStatus) writeToKeychain:(NSDictionary *)dict;

@end
