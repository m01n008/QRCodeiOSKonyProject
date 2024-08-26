#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSEnergyFormatter_symbols(JSContext*);
@protocol NSEnergyFormatterInstanceExports<JSExport>
@property (copy) NSNumberFormatter * numberFormatter;
@property () NSFormattingUnitStyle unitStyle;
@property (getter=isForFoodEnergyUse) BOOL forFoodEnergyUse;
-(NSString *) stringFromValue: (double) value unit: (NSEnergyFormatterUnit) unit ;
-(NSString *) stringFromJoules: (double) numberInJoules ;
-(NSString *) unitStringFromValue: (double) value unit: (NSEnergyFormatterUnit) unit ;
@end
@protocol NSEnergyFormatterClassExports<JSExport>
@end
#pragma clang diagnostic pop