//
//  KSTaskListener.h
//  TaskFrameworkLibrary
//
//  Created by Sunil Phani Manne on 07/09/16.
//  Copyright © 2016 MADP. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSTask.h"

@protocol KSTaskListener <NSObject>

@required
- (void)task:(KSTask *)task stateChangedFrom:(KSTaskState)fromState
          to:(KSTaskState)toState context:(NSDictionary *)context;

@end

