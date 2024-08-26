//
//  ValidationUtility.h
//  VM
//
//  Created by Sunil Phani Manne on 12/2/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ValidationUtility : NSObject {
    
}

+ (BOOL) isValidString: (id) value;
+ (BOOL) isValidNumber: (id) value;
+(BOOL)  isValidArray:(id)value;
+(NSError*) createGenericValidationError;

@end
