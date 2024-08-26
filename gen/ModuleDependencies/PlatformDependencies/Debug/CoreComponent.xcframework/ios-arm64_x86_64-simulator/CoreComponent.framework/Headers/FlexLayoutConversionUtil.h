//
//  FlexLayoutConversionUtil.h
//  VM
//
//  Created by Sunil Phani Manne on 27/06/14.
//
//

#import <Foundation/Foundation.h>

#import "KonyTypes.h"
#import "FlexLayoutInfoProtocol.h"

@interface FlexLayoutConversionUtil : NSObject

//TODO: Write appledoc comments

+ (float)convertValue:(float)value
            fromUnits:(FlexLayoutDisplayUnit)fromUnits
              toUnits:(FlexLayoutDisplayUnit)toUnits
       referenceValue:(float)referenceValue
                error:(NSError **)error;

+ (void)convertPropertyValuesIntoPlatformUnitForWidget:(id <FlexLayoutInfoProtocol>)widget
                                     withReferenceSize:(CGSize)referenceSize
                                       withDefaultUnit:(FlexLayoutDisplayUnit)defaultUnit;

+ (void)convertGutterIntoPlatformUnitForWidget:(id <FlexLayoutInfoProtocol>)widget
                                     withReferenceSize:(CGSize)referenceSize
                                       withDefaultUnit:(FlexLayoutDisplayUnit)defaultUnit;

@end
