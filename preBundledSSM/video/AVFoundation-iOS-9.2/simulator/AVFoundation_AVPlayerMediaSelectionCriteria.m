#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVPlayerMediaSelectionCriteria (Exports)
-(id) jsinitWithPreferredLanguages: (NSArray *) preferredLanguages preferredMediaCharacteristics: (NSArray *) preferredMediaCharacteristics 
{
	id resultVal__;
	resultVal__ = [[self initWithPreferredLanguages: preferredLanguages preferredMediaCharacteristics: preferredMediaCharacteristics ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVPlayerMediaSelectionCriteria class], @protocol(AVPlayerMediaSelectionCriteriaInstanceExports));
	class_addProtocol([AVPlayerMediaSelectionCriteria class], @protocol(AVPlayerMediaSelectionCriteriaClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVPlayerMediaSelectionCriteria_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
