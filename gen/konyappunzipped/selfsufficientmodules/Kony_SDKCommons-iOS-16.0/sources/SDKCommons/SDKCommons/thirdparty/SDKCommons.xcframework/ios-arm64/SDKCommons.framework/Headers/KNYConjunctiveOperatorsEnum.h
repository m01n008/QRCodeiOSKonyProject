//
//  KNYConjunctiveOperatorsEnum.h
//  SDKCommons
//
//  Created by Archana Narahari on 29/10/18.
//  Copyright © 2018 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    KNYConjunctiveOperatorAnd,
    KNYConjunctiveOperatorOr
}KNYConjunctiveOperators;

extern NSString *getKNYConjunctiveOperatorsAsString(KNYConjunctiveOperators conjunctiveOperator);

@interface KNYConjunctiveOperatorsEnum : NSObject

@end
