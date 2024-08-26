//
//  KonyConstants.h
//  VM
//
//  Created by Sunil Phani Manne on 12/2/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

/** Validation Error Domain Constants */
/* Domain Code: 100 */
extern NSString *const ValidationErrorDomain;


typedef enum ValidationErrorCodeType
{
    ValidationErrorCodeGeneric = 100,
    ValidationErrorInvalidWidgetID 
}ValidationErrorCodeType;

extern NSString *const KonyLayoutConstraintTypeRestrictToParentBounds;
extern NSString *const KonyLayoutConstraintTypeFixedDimension;
