#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AudioUnit_AUParameters_symbols(JSContext*);
@interface JSValue (AudioUnit_AUParameters)
+(JSValue*) valueWithAURecordedParameterEvent: (AURecordedParameterEvent) s inContext: (JSContext*) context;
-(AURecordedParameterEvent) toAURecordedParameterEvent;
@end
@protocol AUParameterGroupInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic) NSArray * allParameters;
@property (readonly,nonatomic) NSArray * children;
@end
@protocol AUParameterGroupClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol AUParameterNodeInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSString * identifier;
@property (readonly,copy,nonatomic) NSString * displayName;
@property (readonly,copy,nonatomic) NSString * keyPath;
-(NSString *) displayNameWithLength: (NSInteger) maximumLength ;
@end
@protocol AUParameterNodeClassExports<JSExport>
@end
@protocol AUParameterInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,copy,nonatomic) NSArray * valueStrings;
@property (readonly,copy,nonatomic) NSString * unitName;
@property (readonly,copy,nonatomic) NSArray * dependentParameters;
@property (readonly,nonatomic) AUValue maxValue;
@property (nonatomic) AUValue value;
@property (readonly,nonatomic) AUValue minValue;
@property (readonly,nonatomic) AudioUnitParameterOptions flags;
@property (readonly,nonatomic) AUParameterAddress address;
@property (readonly,nonatomic) AudioUnitParameterUnit unit;
-(AUValue) valueFromString: (NSString *) string ;
@end
@protocol AUParameterClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol AUParameterTreeInstanceExports<JSExport, NSSecureCodingInstanceExports_>
-(AUParameter *) parameterWithAddress: (AUParameterAddress) address ;
-(AUParameter *) parameterWithID: (AudioUnitParameterID) paramID scope: (AudioUnitScope) scope element: (AudioUnitElement) element ;
@end
@protocol AUParameterTreeClassExports<JSExport, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop