#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation CIPDF417CodeDescriptor (Exports)
-(id) jsinitWithPayload: (NSData *) errorCorrectedPayload isCompact: (BOOL) isCompact rowCount: (NSInteger) rowCount columnCount: (NSInteger) columnCount 
{
	id resultVal__;
	resultVal__ = [[self initWithPayload: errorCorrectedPayload isCompact: isCompact rowCount: rowCount columnCount: columnCount ] autorelease];
	return resultVal__;
}
@end
@implementation CIDataMatrixCodeDescriptor (Exports)
-(id) jsinitWithPayload: (NSData *) errorCorrectedPayload rowCount: (NSInteger) rowCount columnCount: (NSInteger) columnCount eccVersion: (CIDataMatrixCodeECCVersion) eccVersion 
{
	id resultVal__;
	resultVal__ = [[self initWithPayload: errorCorrectedPayload rowCount: rowCount columnCount: columnCount eccVersion: eccVersion ] autorelease];
	return resultVal__;
}
@end
@implementation CIAztecCodeDescriptor (Exports)
-(id) jsinitWithPayload: (NSData *) errorCorrectedPayload isCompact: (BOOL) isCompact layerCount: (NSInteger) layerCount dataCodewordCount: (NSInteger) dataCodewordCount 
{
	id resultVal__;
	resultVal__ = [[self initWithPayload: errorCorrectedPayload isCompact: isCompact layerCount: layerCount dataCodewordCount: dataCodewordCount ] autorelease];
	return resultVal__;
}
@end
@implementation CIBarcodeDescriptor (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation CIQRCodeDescriptor (Exports)
-(id) jsinitWithPayload: (NSData *) errorCorrectedPayload symbolVersion: (NSInteger) symbolVersion maskPattern: (uint8_t) maskPattern errorCorrectionLevel: (CIQRCodeErrorCorrectionLevel) errorCorrectionLevel 
{
	id resultVal__;
	resultVal__ = [[self initWithPayload: errorCorrectedPayload symbolVersion: symbolVersion maskPattern: maskPattern errorCorrectionLevel: errorCorrectionLevel ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([CIPDF417CodeDescriptor class], @protocol(CIPDF417CodeDescriptorInstanceExports));
	class_addProtocol([CIPDF417CodeDescriptor class], @protocol(CIPDF417CodeDescriptorClassExports));
	class_addProtocol([CIDataMatrixCodeDescriptor class], @protocol(CIDataMatrixCodeDescriptorInstanceExports));
	class_addProtocol([CIDataMatrixCodeDescriptor class], @protocol(CIDataMatrixCodeDescriptorClassExports));
	class_addProtocol([NSUserActivity class], @protocol(NSUserActivityCIBarcodeDescriptorCategoryInstanceExports));
	class_addProtocol([NSUserActivity class], @protocol(NSUserActivityCIBarcodeDescriptorCategoryClassExports));
	class_addProtocol([CIAztecCodeDescriptor class], @protocol(CIAztecCodeDescriptorInstanceExports));
	class_addProtocol([CIAztecCodeDescriptor class], @protocol(CIAztecCodeDescriptorClassExports));
	class_addProtocol([CIBarcodeDescriptor class], @protocol(CIBarcodeDescriptorInstanceExports));
	class_addProtocol([CIBarcodeDescriptor class], @protocol(CIBarcodeDescriptorClassExports));
	class_addProtocol([CIQRCodeDescriptor class], @protocol(CIQRCodeDescriptorInstanceExports));
	class_addProtocol([CIQRCodeDescriptor class], @protocol(CIQRCodeDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"CIQRCodeErrorCorrectionLevelL"] = @76;
	context[@"CIQRCodeErrorCorrectionLevelM"] = @77;
	context[@"CIQRCodeErrorCorrectionLevelQ"] = @81;
	context[@"CIQRCodeErrorCorrectionLevelH"] = @72;

	context[@"CIDataMatrixCodeECCVersion000"] = @0;
	context[@"CIDataMatrixCodeECCVersion050"] = @50;
	context[@"CIDataMatrixCodeECCVersion080"] = @80;
	context[@"CIDataMatrixCodeECCVersion100"] = @100;
	context[@"CIDataMatrixCodeECCVersion140"] = @140;
	context[@"CIDataMatrixCodeECCVersion200"] = @200;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreImage_CIBarcodeDescriptor_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
