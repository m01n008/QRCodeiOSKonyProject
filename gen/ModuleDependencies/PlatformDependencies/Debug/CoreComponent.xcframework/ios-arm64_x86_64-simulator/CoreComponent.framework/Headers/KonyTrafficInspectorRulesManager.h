//
//  KonyTrafficInspectorRulesManager.h
//  CoreComponent
//
//  Created by Soumesh Banerjee on 18/09/18.
//  Copyright © 2018 Kony Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTrafficInspector.h"

#define KonyTrafficInspectorRulesIgnoreRequestURLParams @"KonyTrafficInspectorRulesIgnoreRequestURLParams"
#define KonyTrafficInspectorRulesIgnoreRequestHeaders @"KonyTrafficInspectorRulesIgnoreRequestHeaders"
#define KonyTrafficInspectorRulesIgnoreRequestBody @"KonyTrafficInspectorRulesIgnoreRequestBody"

@interface KonyTrafficInspectorRulesManager : NSObject
@property (nonatomic, retain) NSDictionary<NSString *, NSNumber *> *rules;
+ (KonyTrafficInspectorRulesManager*)sharedManager;
@end
