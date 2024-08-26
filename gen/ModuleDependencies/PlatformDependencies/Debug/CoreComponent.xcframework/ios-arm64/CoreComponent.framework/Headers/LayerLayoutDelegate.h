//
//  LayerLayoutDelegate.h
//  CoreComponent
//
//  Created by Praveen Kanike on 24/06/19.
//  Copyright © 2019 Aravind Macharla. All rights reserved.
//

#ifndef LayerLayoutDelegate_h
#define LayerLayoutDelegate_h
#import <Foundation/Foundation.h>
#import "FlexLayoutModelProperty.h"
@protocol LayerLayoutDelegate <NSObject>
@required
/**
 @brief Function is used for calculating the shape layer points,thickness, lineconfig data.
 @param valueInString value in the form of string
 @param layoutProperty used for type of value to conversion
 @return returns the converted float value
 */
-(float)convertLayoutValuesToDpforValue:(id)valueInString layoutProp:(FlexLayoutPropertyType)layoutProperty;
@end
#endif /* LayerLayoutDelegate_h */
