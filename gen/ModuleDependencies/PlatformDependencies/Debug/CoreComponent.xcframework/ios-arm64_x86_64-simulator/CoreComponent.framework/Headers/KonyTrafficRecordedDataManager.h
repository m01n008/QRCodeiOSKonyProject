//
//  KonyTrafficRecordedDataManager.h
//  CoreComponent
//
//  Created by Soumesh Banerjee on 31/08/18.
//  Copyright © 2018 Kony Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "KonyTrafficRecordedDataModel.h"

#define CONTAINER_NAME @"KonyTrafficRecordedDataModel"
#define HTTP_VERSION @"HTTP/1.1"

@interface KonyTrafficRecordedDataManager : NSObject

@property (readonly, strong) NSPersistentContainer *persistentContainer;
- (void)saveContext;
+ (id)sharedManager;
@end
