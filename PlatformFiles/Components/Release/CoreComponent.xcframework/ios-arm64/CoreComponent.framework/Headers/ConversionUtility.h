//
//  ConversionUtility.h
//  VM
//
//  Created by KH206 on 13/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"

@interface ConversionUtility : NSObject{

    @private
        NSDictionary *optionsDict;
}

@property(nonatomic,retain)NSDictionary *optionsDict;

-(id)initWithOptionsDict:(NSDictionary*)conditionalOptionsDict;

-(id) defaultObjectTypeForInternalBOOL;

- (id) convertValue: (id) value toInternalType: (KonyValueType) valueType;
- (id) convertValue: (id) value toExternalType: (KonyValueType) valueType;
- (id) convertValueToDefaultInternalType: (id)value;
- (id) convertValueToDefaultExternalType: (id)value;

@end
