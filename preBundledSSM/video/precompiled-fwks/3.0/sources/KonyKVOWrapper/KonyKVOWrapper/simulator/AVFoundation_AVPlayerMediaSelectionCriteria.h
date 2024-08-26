#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVPlayerMediaSelectionCriteria_symbols(JSContext*);
@protocol AVPlayerMediaSelectionCriteriaInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * principalMediaCharacteristics;
@property (readonly,nonatomic) NSArray * preferredLanguages;
@property (readonly,nonatomic) NSArray * preferredMediaCharacteristics;
JSExportAs(initWithPrincipalMediaCharacteristicsPreferredLanguagesPreferredMediaCharacteristics,
-(id) jsinitWithPrincipalMediaCharacteristics: (NSArray *) principalMediaCharacteristics preferredLanguages: (NSArray *) preferredLanguages preferredMediaCharacteristics: (NSArray *) preferredMediaCharacteristics );
JSExportAs(initWithPreferredLanguagesPreferredMediaCharacteristics,
-(id) jsinitWithPreferredLanguages: (NSArray *) preferredLanguages preferredMediaCharacteristics: (NSArray *) preferredMediaCharacteristics );
@end
@protocol AVPlayerMediaSelectionCriteriaClassExports<JSExport>
@end
#pragma clang diagnostic pop