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
	context[@"sec_trust_create"] = ^sec_trust_t(id arg0) {
		return sec_trust_create(arg0);
	};
	context[@"sec_trust_copy_ref"] = ^id(sec_trust_t arg0) {
		return sec_trust_copy_ref(arg0);
	};
	context[@"sec_identity_create"] = ^sec_identity_t(id arg0) {
		return sec_identity_create(arg0);
	};
	context[@"sec_identity_create_with_certificates"] = ^sec_identity_t(id arg0, id arg1) {
		return sec_identity_create_with_certificates(arg0, arg1);
	};
	context[@"sec_identity_copy_ref"] = ^id(sec_identity_t arg0) {
		return sec_identity_copy_ref(arg0);
	};
	context[@"sec_identity_copy_certificates_ref"] = ^id(sec_identity_t arg0) {
		return sec_identity_copy_certificates_ref(arg0);
	};
	context[@"sec_certificate_create"] = ^sec_certificate_t(id arg0) {
		return sec_certificate_create(arg0);
	};
	context[@"sec_certificate_copy_ref"] = ^id(sec_certificate_t arg0) {
		return sec_certificate_copy_ref(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{

	context[@"tls_protocol_version_TLSv10"] = @769;
	context[@"tls_protocol_version_TLSv11"] = @770;
	context[@"tls_protocol_version_TLSv12"] = @771;
	context[@"tls_protocol_version_TLSv13"] = @772;
	context[@"tls_protocol_version_DTLSv10"] = @-257;
	context[@"tls_protocol_version_DTLSv12"] = @-259;


	context[@"tls_ciphersuite_RSA_WITH_3DES_EDE_CBC_SHA"] = @10;
	context[@"tls_ciphersuite_RSA_WITH_AES_128_CBC_SHA"] = @47;
	context[@"tls_ciphersuite_RSA_WITH_AES_256_CBC_SHA"] = @53;
	context[@"tls_ciphersuite_RSA_WITH_AES_128_GCM_SHA256"] = @156;
	context[@"tls_ciphersuite_RSA_WITH_AES_256_GCM_SHA384"] = @157;
	context[@"tls_ciphersuite_RSA_WITH_AES_128_CBC_SHA256"] = @60;
	context[@"tls_ciphersuite_RSA_WITH_AES_256_CBC_SHA256"] = @61;
	context[@"tls_ciphersuite_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"] = @-16376;
	context[@"tls_ciphersuite_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"] = @-16375;
	context[@"tls_ciphersuite_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"] = @-16374;
	context[@"tls_ciphersuite_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"] = @-16366;
	context[@"tls_ciphersuite_ECDHE_RSA_WITH_AES_128_CBC_SHA"] = @-16365;
	context[@"tls_ciphersuite_ECDHE_RSA_WITH_AES_256_CBC_SHA"] = @-16364;
	context[@"tls_ciphersuite_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"] = @-16349;
	context[@"tls_ciphersuite_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"] = @-16348;
	context[@"tls_ciphersuite_ECDHE_RSA_WITH_AES_128_CBC_SHA256"] = @-16345;
	context[@"tls_ciphersuite_ECDHE_RSA_WITH_AES_256_CBC_SHA384"] = @-16344;
	context[@"tls_ciphersuite_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"] = @-16341;
	context[@"tls_ciphersuite_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"] = @-16340;
	context[@"tls_ciphersuite_ECDHE_RSA_WITH_AES_128_GCM_SHA256"] = @-16337;
	context[@"tls_ciphersuite_ECDHE_RSA_WITH_AES_256_GCM_SHA384"] = @-16336;
	context[@"tls_ciphersuite_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"] = @-13144;
	context[@"tls_ciphersuite_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"] = @-13143;
	context[@"tls_ciphersuite_AES_128_GCM_SHA256"] = @4865;
	context[@"tls_ciphersuite_AES_256_GCM_SHA384"] = @4866;
	context[@"tls_ciphersuite_CHACHA20_POLY1305_SHA256"] = @4867;


	context[@"tls_ciphersuite_group_default"] = @0;
	context[@"tls_ciphersuite_group_compatibility"] = @1;
	context[@"tls_ciphersuite_group_legacy"] = @2;
	context[@"tls_ciphersuite_group_ats"] = @3;
	context[@"tls_ciphersuite_group_ats_compatibility"] = @4;


	context[@"kSSLProtocolUnknown"] = @0;
	context[@"kTLSProtocol1"] = @4;
	context[@"kTLSProtocol11"] = @7;
	context[@"kTLSProtocol12"] = @8;
	context[@"kDTLSProtocol1"] = @9;
	context[@"kTLSProtocol13"] = @10;
	context[@"kDTLSProtocol12"] = @11;
	context[@"kTLSProtocolMaxSupported"] = @999;
	context[@"kSSLProtocol2"] = @1;
	context[@"kSSLProtocol3"] = @2;
	context[@"kSSLProtocol3Only"] = @3;
	context[@"kTLSProtocol1Only"] = @5;
	context[@"kSSLProtocolAll"] = @6;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Security_SecProtocolTypesProtocols()
{
	(void)objc_getProtocol('OS_sec_trust');
	(void)objc_getProtocol('OS_sec_identity');
	(void)objc_getProtocol('OS_sec_certificate');
}
void load_Security_SecProtocolTypes_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
