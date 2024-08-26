//
//  KNYConditionalOperatorsEnum.h
//  SDKCommons
//
//  Created by Archana Narahari on 29/10/18.
//  Copyright © 2018 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    KNYConditionalOperatorsEqualTo,
    KNYConditionalOperatorsGreaterThan,
    KNYConditionalOperatorsGreaterThanAndEqualTo,
    KNYConditionalOperatorsLesserThan,
    KNYConditionalOperatorsLesserThanAndEqualTo,
    KNYConditionalOperatorsIn,
    KNYConditionalOperatorsNotIn
} KNYConditionalOperators;

extern NSString *getKNYConditionalOperatorsAsString(KNYConditionalOperators conditionalOpertor);

@interface KNYConditionalOperatorsEnum : NSObject

@end
