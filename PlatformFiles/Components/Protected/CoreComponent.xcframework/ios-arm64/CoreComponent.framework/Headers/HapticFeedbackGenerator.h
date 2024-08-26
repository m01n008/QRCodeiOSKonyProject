//
//  HapticFeedbackGenerator.h
//  CoreComponent
//
//  Created by Ravi on 27/06/18.
//  Copyright © 2018 Aravind Macharla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreComponent/KonyTypes.h>



@interface HapticFeedbackGenerator : NSObject

+ (void)generateFeedback:(FeedbackType)type;

@end

