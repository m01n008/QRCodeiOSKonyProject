#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioPCMBuffer (Exports)
-(id) jsinitWithPCMFormat: (AVAudioFormat *) format frameCapacity: (AVAudioFrameCount) frameCapacity 
{
	id resultVal__;
	resultVal__ = [[self initWithPCMFormat: format frameCapacity: frameCapacity ] autorelease];
	return resultVal__;
}
@end
@implementation AVAudioCompressedBuffer (Exports)
-(id) jsinitWithFormat: (AVAudioFormat *) format packetCapacity: (AVAudioPacketCount) packetCapacity 
{
	id resultVal__;
	resultVal__ = [[self initWithFormat: format packetCapacity: packetCapacity ] autorelease];
	return resultVal__;
}
-(id) jsinitWithFormat: (AVAudioFormat *) format packetCapacity: (AVAudioPacketCount) packetCapacity maximumPacketSize: (NSInteger) maximumPacketSize 
{
	id resultVal__;
	resultVal__ = [[self initWithFormat: format packetCapacity: packetCapacity maximumPacketSize: maximumPacketSize ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioPCMBuffer class], @protocol(AVAudioPCMBufferInstanceExports));
	class_addProtocol([AVAudioPCMBuffer class], @protocol(AVAudioPCMBufferClassExports));
	class_addProtocol([AVAudioBuffer class], @protocol(AVAudioBufferInstanceExports));
	class_addProtocol([AVAudioBuffer class], @protocol(AVAudioBufferClassExports));
	class_addProtocol([AVAudioCompressedBuffer class], @protocol(AVAudioCompressedBufferInstanceExports));
	class_addProtocol([AVAudioCompressedBuffer class], @protocol(AVAudioCompressedBufferClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVAudioBuffer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
