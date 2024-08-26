//
//  KonyGlobalContext.h
//  CoreComponent
//
//  Created by Aravind Macharla on 24/07/18.
//  Copyright © 2018 Aravind Macharla. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ProfilerWriterBasic.h"

@interface KonyGlobalContext : NSObject

@property (class, nonatomic, strong) ProfilerWriterBasic *profiler;
@property (class, nonatomic, strong) NSDate *appLoadStartTimeStamp;
@property (class, nonatomic, strong) NSMutableDictionary *PMFrameworksValidationDict;
@property (class, nonatomic, strong) NSMutableDictionary *DIDCallBacks;

@end


