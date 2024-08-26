//
//  JSConversionUtility.h
//  VM
//
//  Created by KH206 on 13/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ConversionUtility.h"

@interface JSConversionUtility : ConversionUtility

- (void) registerExternalClass:(Class)externalClass forInternalClass:(Class)internalClass;

@end
