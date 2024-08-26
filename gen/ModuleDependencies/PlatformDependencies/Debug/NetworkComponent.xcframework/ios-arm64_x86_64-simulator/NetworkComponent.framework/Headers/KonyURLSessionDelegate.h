//
//  KonyURLSessionDelegate.h
//  VM
//
//  Created by Naresh Kodumuri on 04/04/17.
//
//

#import <Foundation/Foundation.h>
#import "KonyPublicKeySSLPinningManger.h"

/*
 KonyURLSessionDelegate - delegate instance For NSURLSession, which receives delegate calls once service request is resumed/started.
 */



@interface KonyURLSessionDelegate : NSObject<NSURLSessionDataDelegate>



@end
