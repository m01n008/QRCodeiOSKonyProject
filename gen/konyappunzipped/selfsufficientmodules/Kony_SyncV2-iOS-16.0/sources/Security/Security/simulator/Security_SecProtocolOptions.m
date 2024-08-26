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
	context[@"sec_protocol_options_are_equal"] = ^_Bool(sec_protocol_options_t arg0, sec_protocol_options_t arg1) {
		return sec_protocol_options_are_equal(arg0, arg1);
	};
	context[@"sec_protocol_options_set_local_identity"] = ^void(sec_protocol_options_t arg0, sec_identity_t arg1) {
		sec_protocol_options_set_local_identity(arg0, arg1);
	};
	context[@"sec_protocol_options_append_tls_ciphersuite"] = ^void(sec_protocol_options_t arg0, tls_ciphersuite_t arg1) {
		sec_protocol_options_append_tls_ciphersuite(arg0, arg1);
	};
	context[@"sec_protocol_options_add_tls_ciphersuite"] = ^void(sec_protocol_options_t arg0, SSLCipherSuite arg1) {
		sec_protocol_options_add_tls_ciphersuite(arg0, arg1);
	};
	context[@"sec_protocol_options_append_tls_ciphersuite_group"] = ^void(sec_protocol_options_t arg0, tls_ciphersuite_group_t arg1) {
		sec_protocol_options_append_tls_ciphersuite_group(arg0, arg1);
	};
	context[@"sec_protocol_options_add_tls_ciphersuite_group"] = ^void(sec_protocol_options_t arg0, SSLCiphersuiteGroup arg1) {
		sec_protocol_options_add_tls_ciphersuite_group(arg0, arg1);
	};
	context[@"sec_protocol_options_set_tls_min_version"] = ^void(sec_protocol_options_t arg0, SSLProtocol arg1) {
		sec_protocol_options_set_tls_min_version(arg0, arg1);
	};
	context[@"sec_protocol_options_set_min_tls_protocol_version"] = ^void(sec_protocol_options_t arg0, tls_protocol_version_t arg1) {
		sec_protocol_options_set_min_tls_protocol_version(arg0, arg1);
	};
	context[@"sec_protocol_options_get_default_min_tls_protocol_version"] = ^tls_protocol_version_t() {
		return sec_protocol_options_get_default_min_tls_protocol_version();
	};
	context[@"sec_protocol_options_get_default_min_dtls_protocol_version"] = ^tls_protocol_version_t() {
		return sec_protocol_options_get_default_min_dtls_protocol_version();
	};
	context[@"sec_protocol_options_set_tls_max_version"] = ^void(sec_protocol_options_t arg0, SSLProtocol arg1) {
		sec_protocol_options_set_tls_max_version(arg0, arg1);
	};
	context[@"sec_protocol_options_set_max_tls_protocol_version"] = ^void(sec_protocol_options_t arg0, tls_protocol_version_t arg1) {
		sec_protocol_options_set_max_tls_protocol_version(arg0, arg1);
	};
	context[@"sec_protocol_options_get_default_max_tls_protocol_version"] = ^tls_protocol_version_t() {
		return sec_protocol_options_get_default_max_tls_protocol_version();
	};
	context[@"sec_protocol_options_get_default_max_dtls_protocol_version"] = ^tls_protocol_version_t() {
		return sec_protocol_options_get_default_max_dtls_protocol_version();
	};
	context[@"sec_protocol_options_set_tls_tickets_enabled"] = ^void(sec_protocol_options_t arg0, _Bool arg1) {
		sec_protocol_options_set_tls_tickets_enabled(arg0, arg1);
	};
	context[@"sec_protocol_options_set_tls_is_fallback_attempt"] = ^void(sec_protocol_options_t arg0, _Bool arg1) {
		sec_protocol_options_set_tls_is_fallback_attempt(arg0, arg1);
	};
	context[@"sec_protocol_options_set_tls_resumption_enabled"] = ^void(sec_protocol_options_t arg0, _Bool arg1) {
		sec_protocol_options_set_tls_resumption_enabled(arg0, arg1);
	};
	context[@"sec_protocol_options_set_tls_false_start_enabled"] = ^void(sec_protocol_options_t arg0, _Bool arg1) {
		sec_protocol_options_set_tls_false_start_enabled(arg0, arg1);
	};
	context[@"sec_protocol_options_set_tls_ocsp_enabled"] = ^void(sec_protocol_options_t arg0, _Bool arg1) {
		sec_protocol_options_set_tls_ocsp_enabled(arg0, arg1);
	};
	context[@"sec_protocol_options_set_tls_sct_enabled"] = ^void(sec_protocol_options_t arg0, _Bool arg1) {
		sec_protocol_options_set_tls_sct_enabled(arg0, arg1);
	};
	context[@"sec_protocol_options_set_tls_renegotiation_enabled"] = ^void(sec_protocol_options_t arg0, _Bool arg1) {
		sec_protocol_options_set_tls_renegotiation_enabled(arg0, arg1);
	};
	context[@"sec_protocol_options_set_peer_authentication_required"] = ^void(sec_protocol_options_t arg0, _Bool arg1) {
		sec_protocol_options_set_peer_authentication_required(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Security_SecProtocolOptionsProtocols()
{
	(void)objc_getProtocol('OS_sec_protocol_options');
}
void load_Security_SecProtocolOptions_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
