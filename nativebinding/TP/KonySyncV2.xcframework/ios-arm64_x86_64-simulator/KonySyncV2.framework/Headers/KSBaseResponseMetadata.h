//
//  KSBaseResponseMetadata.h
//  KonySyncV2
//
//  Created by Sunil Phani Manne on 28/11/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KSBaseResponseMetadata : NSObject

//Network related metainfo
@property (nonatomic, readonly, assign) NSInteger opStatus;
@property (nonatomic, readonly, assign) NSInteger HTTPStatusCode;
@property (nonatomic, readonly, assign) NSInteger errorCode;
@property (nonatomic, readonly, copy) NSString *errorMessage;

@end
