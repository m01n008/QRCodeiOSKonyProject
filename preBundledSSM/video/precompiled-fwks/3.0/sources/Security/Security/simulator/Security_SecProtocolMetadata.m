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
}
static void registerCFunctions(JSContext* context)
{
	context[@"sec_protocol_metadata_get_negotiated_tls_protocol_version"] = ^tls_protocol_version_t(sec_protocol_metadata_t arg0) {
		return sec_protocol_metadata_get_negotiated_tls_protocol_version(arg0);
	};
	context[@"sec_protocol_metadata_get_negotiated_ciphersuite"] = ^SSLCipherSuite(sec_protocol_metadata_t arg0) {
		return sec_protocol_metadata_get_negotiated_ciphersuite(arg0);
	};
	context[@"sec_protocol_metadata_get_early_data_accepted"] = ^_Bool(sec_protocol_metadata_t arg0) {
		return sec_protocol_metadata_get_early_data_accepted(arg0);
	};
	context[@"sec_protocol_metadata_get_negotiated_protocol_version"] = ^SSLProtocol(sec_protocol_metadata_t arg0) {
		return sec_protocol_metadata_get_negotiated_protocol_version(arg0);
	};
	context[@"sec_protocol_metadata_challenge_parameters_are_equal"] = ^_Bool(sec_protocol_metadata_t arg0, sec_protocol_metadata_t arg1) {
		return sec_protocol_metadata_challenge_parameters_are_equal(arg0, arg1);
	};
	context[@"sec_protocol_metadata_get_negotiated_tls_ciphersuite"] = ^tls_ciphersuite_t(sec_protocol_metadata_t arg0) {
		return sec_protocol_metadata_get_negotiated_tls_ciphersuite(arg0);
	};
	context[@"sec_protocol_metadata_peers_are_equal"] = ^_Bool(sec_protocol_metadata_t arg0, sec_protocol_metadata_t arg1) {
		return sec_protocol_metadata_peers_are_equal(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Security_SecProtocolMetadataProtocols()
{
	(void)@protocol(OS_sec_protocol_metadata);
}
void load_Security_SecProtocolMetadata_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
