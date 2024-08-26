#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([AVCaptureSystemPressureState class], @protocol(AVCaptureSystemPressureStateInstanceExports));
	class_addProtocol([AVCaptureSystemPressureState class], @protocol(AVCaptureSystemPressureStateClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVCaptureSystemPressureFactorNone"] = @0UL;
	context[@"AVCaptureSystemPressureFactorSystemTemperature"] = @1UL;
	context[@"AVCaptureSystemPressureFactorPeakPower"] = @2UL;
	context[@"AVCaptureSystemPressureFactorDepthModuleTemperature"] = @4UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVCaptureSystemPressureLevelNominal;
	if (p != NULL) context[@"AVCaptureSystemPressureLevelNominal"] = AVCaptureSystemPressureLevelNominal;
	p = (void*) &AVCaptureSystemPressureLevelFair;
	if (p != NULL) context[@"AVCaptureSystemPressureLevelFair"] = AVCaptureSystemPressureLevelFair;
	p = (void*) &AVCaptureSystemPressureLevelCritical;
	if (p != NULL) context[@"AVCaptureSystemPressureLevelCritical"] = AVCaptureSystemPressureLevelCritical;
	p = (void*) &AVCaptureSystemPressureLevelShutdown;
	if (p != NULL) context[@"AVCaptureSystemPressureLevelShutdown"] = AVCaptureSystemPressureLevelShutdown;
	p = (void*) &AVCaptureSystemPressureLevelSerious;
	if (p != NULL) context[@"AVCaptureSystemPressureLevelSerious"] = AVCaptureSystemPressureLevelSerious;
}
void load_AVFoundation_AVCaptureSystemPressure_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
