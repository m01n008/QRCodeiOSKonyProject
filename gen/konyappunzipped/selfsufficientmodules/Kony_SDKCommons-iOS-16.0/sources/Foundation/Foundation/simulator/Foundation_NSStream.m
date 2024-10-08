#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSInputStream (Exports)
-(id) jsinitWithData: (NSData *) data 
{
	id resultVal__;
	resultVal__ = [[self initWithData: data ] autorelease];
	return resultVal__;
}
-(id) jsinitWithURL: (NSURL *) url 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: url ] autorelease];
	return resultVal__;
}
@end
@implementation NSOutputStream (Exports)
-(id) jsinitToMemory
{
	id resultVal__;
	resultVal__ = [[self initToMemory] autorelease];
	return resultVal__;
}
-(id) jsinitWithURL: (NSURL *) url append: (BOOL) shouldAppend 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: url append: shouldAppend ] autorelease];
	return resultVal__;
}
@end
@implementation NSInputStream (NSInputStreamNSInputStreamExtensionsCategoryExports)
-(id) jsinitWithFileAtPath: (NSString *) path 
{
	id resultVal__;
	resultVal__ = [[self initWithFileAtPath: path ] autorelease];
	return resultVal__;
}
@end
@implementation NSOutputStream (NSOutputStreamNSOutputStreamExtensionsCategoryExports)
-(id) jsinitToFileAtPath: (NSString *) path append: (BOOL) shouldAppend 
{
	id resultVal__;
	resultVal__ = [[self initToFileAtPath: path append: shouldAppend ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSStream class], @protocol(NSStreamInstanceExports));
	class_addProtocol([NSStream class], @protocol(NSStreamClassExports));
	class_addProtocol([NSInputStream class], @protocol(NSInputStreamInstanceExports));
	class_addProtocol([NSInputStream class], @protocol(NSInputStreamClassExports));
	class_addProtocol([NSOutputStream class], @protocol(NSOutputStreamInstanceExports));
	class_addProtocol([NSOutputStream class], @protocol(NSOutputStreamClassExports));
	class_addProtocol([NSStream class], @protocol(NSStreamNSSocketStreamCreationExtensionsCategoryInstanceExports));
	class_addProtocol([NSStream class], @protocol(NSStreamNSSocketStreamCreationExtensionsCategoryClassExports));
	class_addProtocol([NSStream class], @protocol(NSStreamNSStreamBoundPairCreationExtensionsCategoryInstanceExports));
	class_addProtocol([NSStream class], @protocol(NSStreamNSStreamBoundPairCreationExtensionsCategoryClassExports));
	class_addProtocol([NSInputStream class], @protocol(NSInputStreamNSInputStreamExtensionsCategoryInstanceExports));
	class_addProtocol([NSInputStream class], @protocol(NSInputStreamNSInputStreamExtensionsCategoryClassExports));
	class_addProtocol([NSOutputStream class], @protocol(NSOutputStreamNSOutputStreamExtensionsCategoryInstanceExports));
	class_addProtocol([NSOutputStream class], @protocol(NSOutputStreamNSOutputStreamExtensionsCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{

	context[@"NSStreamStatusNotOpen"] = @0UL;
	context[@"NSStreamStatusOpening"] = @1UL;
	context[@"NSStreamStatusOpen"] = @2UL;
	context[@"NSStreamStatusReading"] = @3UL;
	context[@"NSStreamStatusWriting"] = @4UL;
	context[@"NSStreamStatusAtEnd"] = @5UL;
	context[@"NSStreamStatusClosed"] = @6UL;
	context[@"NSStreamStatusError"] = @7UL;


	context[@"NSStreamEventNone"] = @0UL;
	context[@"NSStreamEventOpenCompleted"] = @1UL;
	context[@"NSStreamEventHasBytesAvailable"] = @2UL;
	context[@"NSStreamEventHasSpaceAvailable"] = @4UL;
	context[@"NSStreamEventErrorOccurred"] = @8UL;
	context[@"NSStreamEventEndEncountered"] = @16UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSStreamSocketSecurityLevelKey;
	if (p != NULL) context[@"NSStreamSocketSecurityLevelKey"] = NSStreamSocketSecurityLevelKey;
	p = (void*) &NSStreamSocketSecurityLevelNone;
	if (p != NULL) context[@"NSStreamSocketSecurityLevelNone"] = NSStreamSocketSecurityLevelNone;
	p = (void*) &NSStreamSocketSecurityLevelSSLv2;
	if (p != NULL) context[@"NSStreamSocketSecurityLevelSSLv2"] = NSStreamSocketSecurityLevelSSLv2;
	p = (void*) &NSStreamSocketSecurityLevelSSLv3;
	if (p != NULL) context[@"NSStreamSocketSecurityLevelSSLv3"] = NSStreamSocketSecurityLevelSSLv3;
	p = (void*) &NSStreamSocketSecurityLevelTLSv1;
	if (p != NULL) context[@"NSStreamSocketSecurityLevelTLSv1"] = NSStreamSocketSecurityLevelTLSv1;
	p = (void*) &NSStreamSocketSecurityLevelNegotiatedSSL;
	if (p != NULL) context[@"NSStreamSocketSecurityLevelNegotiatedSSL"] = NSStreamSocketSecurityLevelNegotiatedSSL;
	p = (void*) &NSStreamSOCKSProxyConfigurationKey;
	if (p != NULL) context[@"NSStreamSOCKSProxyConfigurationKey"] = NSStreamSOCKSProxyConfigurationKey;
	p = (void*) &NSStreamSOCKSProxyHostKey;
	if (p != NULL) context[@"NSStreamSOCKSProxyHostKey"] = NSStreamSOCKSProxyHostKey;
	p = (void*) &NSStreamSOCKSProxyPortKey;
	if (p != NULL) context[@"NSStreamSOCKSProxyPortKey"] = NSStreamSOCKSProxyPortKey;
	p = (void*) &NSStreamSOCKSProxyVersionKey;
	if (p != NULL) context[@"NSStreamSOCKSProxyVersionKey"] = NSStreamSOCKSProxyVersionKey;
	p = (void*) &NSStreamSOCKSProxyUserKey;
	if (p != NULL) context[@"NSStreamSOCKSProxyUserKey"] = NSStreamSOCKSProxyUserKey;
	p = (void*) &NSStreamSOCKSProxyPasswordKey;
	if (p != NULL) context[@"NSStreamSOCKSProxyPasswordKey"] = NSStreamSOCKSProxyPasswordKey;
	p = (void*) &NSStreamSOCKSProxyVersion4;
	if (p != NULL) context[@"NSStreamSOCKSProxyVersion4"] = NSStreamSOCKSProxyVersion4;
	p = (void*) &NSStreamSOCKSProxyVersion5;
	if (p != NULL) context[@"NSStreamSOCKSProxyVersion5"] = NSStreamSOCKSProxyVersion5;
	p = (void*) &NSStreamDataWrittenToMemoryStreamKey;
	if (p != NULL) context[@"NSStreamDataWrittenToMemoryStreamKey"] = NSStreamDataWrittenToMemoryStreamKey;
	p = (void*) &NSStreamFileCurrentOffsetKey;
	if (p != NULL) context[@"NSStreamFileCurrentOffsetKey"] = NSStreamFileCurrentOffsetKey;
	p = (void*) &NSStreamSocketSSLErrorDomain;
	if (p != NULL) context[@"NSStreamSocketSSLErrorDomain"] = NSStreamSocketSSLErrorDomain;
	p = (void*) &NSStreamSOCKSErrorDomain;
	if (p != NULL) context[@"NSStreamSOCKSErrorDomain"] = NSStreamSOCKSErrorDomain;
	p = (void*) &NSStreamNetworkServiceType;
	if (p != NULL) context[@"NSStreamNetworkServiceType"] = NSStreamNetworkServiceType;
	p = (void*) &NSStreamNetworkServiceTypeVoIP;
	if (p != NULL) context[@"NSStreamNetworkServiceTypeVoIP"] = NSStreamNetworkServiceTypeVoIP;
	p = (void*) &NSStreamNetworkServiceTypeVideo;
	if (p != NULL) context[@"NSStreamNetworkServiceTypeVideo"] = NSStreamNetworkServiceTypeVideo;
	p = (void*) &NSStreamNetworkServiceTypeBackground;
	if (p != NULL) context[@"NSStreamNetworkServiceTypeBackground"] = NSStreamNetworkServiceTypeBackground;
	p = (void*) &NSStreamNetworkServiceTypeVoice;
	if (p != NULL) context[@"NSStreamNetworkServiceTypeVoice"] = NSStreamNetworkServiceTypeVoice;
	p = (void*) &NSStreamNetworkServiceTypeCallSignaling;
	if (p != NULL) context[@"NSStreamNetworkServiceTypeCallSignaling"] = NSStreamNetworkServiceTypeCallSignaling;
}
void Foundation_NSStreamProtocols()
{
	(void)objc_getProtocol('NSStreamDelegate');
}
void load_Foundation_NSStream_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
