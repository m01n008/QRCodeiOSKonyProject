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
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFStreamErrorSOCKSSubDomainNone"] = @0;
	context[@"kCFStreamErrorSOCKSSubDomainVersionCode"] = @1;
	context[@"kCFStreamErrorSOCKS4SubDomainResponse"] = @2;
	context[@"kCFStreamErrorSOCKS5SubDomainUserPass"] = @3;
	context[@"kCFStreamErrorSOCKS5SubDomainMethod"] = @4;
	context[@"kCFStreamErrorSOCKS5SubDomainResponse"] = @5;

	context[@"kCFStreamErrorSOCKS5BadResponseAddr"] = @1;
	context[@"kCFStreamErrorSOCKS5BadState"] = @2;
	context[@"kCFStreamErrorSOCKSUnknownClientVersion"] = @3;

	context[@"kCFStreamErrorSOCKS4RequestFailed"] = @91;
	context[@"kCFStreamErrorSOCKS4IdentdFailed"] = @92;
	context[@"kCFStreamErrorSOCKS4IdConflict"] = @93;

	context[@"kSOCKS5NoAcceptableMethod"] = @255;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFStreamPropertySSLContext;
	if (p != NULL) context[@"kCFStreamPropertySSLContext"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySSLContext inContext: context];
	p = (void*) &kCFStreamPropertySSLPeerTrust;
	if (p != NULL) context[@"kCFStreamPropertySSLPeerTrust"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySSLPeerTrust inContext: context];
	p = (void*) &kCFStreamSSLValidatesCertificateChain;
	if (p != NULL) context[@"kCFStreamSSLValidatesCertificateChain"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLValidatesCertificateChain inContext: context];
	p = (void*) &kCFStreamPropertySSLSettings;
	if (p != NULL) context[@"kCFStreamPropertySSLSettings"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySSLSettings inContext: context];
	p = (void*) &kCFStreamSSLLevel;
	if (p != NULL) context[@"kCFStreamSSLLevel"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLLevel inContext: context];
	p = (void*) &kCFStreamSSLPeerName;
	if (p != NULL) context[@"kCFStreamSSLPeerName"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLPeerName inContext: context];
	p = (void*) &kCFStreamSSLCertificates;
	if (p != NULL) context[@"kCFStreamSSLCertificates"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLCertificates inContext: context];
	p = (void*) &kCFStreamSSLIsServer;
	if (p != NULL) context[@"kCFStreamSSLIsServer"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLIsServer inContext: context];
	p = (void*) &kCFStreamNetworkServiceType;
	if (p != NULL) context[@"kCFStreamNetworkServiceType"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceType inContext: context];
	p = (void*) &kCFStreamNetworkServiceTypeVideo;
	if (p != NULL) context[@"kCFStreamNetworkServiceTypeVideo"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceTypeVideo inContext: context];
	p = (void*) &kCFStreamNetworkServiceTypeVoice;
	if (p != NULL) context[@"kCFStreamNetworkServiceTypeVoice"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceTypeVoice inContext: context];
	p = (void*) &kCFStreamNetworkServiceTypeBackground;
	if (p != NULL) context[@"kCFStreamNetworkServiceTypeBackground"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceTypeBackground inContext: context];
	p = (void*) &kCFStreamNetworkServiceTypeResponsiveData;
	if (p != NULL) context[@"kCFStreamNetworkServiceTypeResponsiveData"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceTypeResponsiveData inContext: context];
	p = (void*) &kCFStreamNetworkServiceTypeCallSignaling;
	if (p != NULL) context[@"kCFStreamNetworkServiceTypeCallSignaling"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceTypeCallSignaling inContext: context];
	p = (void*) &kCFStreamNetworkServiceTypeAVStreaming;
	if (p != NULL) context[@"kCFStreamNetworkServiceTypeAVStreaming"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceTypeAVStreaming inContext: context];
	p = (void*) &kCFStreamNetworkServiceTypeResponsiveAV;
	if (p != NULL) context[@"kCFStreamNetworkServiceTypeResponsiveAV"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceTypeResponsiveAV inContext: context];
	p = (void*) &kCFStreamNetworkServiceTypeVoIP;
	if (p != NULL) context[@"kCFStreamNetworkServiceTypeVoIP"] = [JSValue valueWithObject: (__bridge id) kCFStreamNetworkServiceTypeVoIP inContext: context];
	p = (void*) &kCFStreamPropertyNoCellular;
	if (p != NULL) context[@"kCFStreamPropertyNoCellular"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyNoCellular inContext: context];
	p = (void*) &kCFStreamPropertyConnectionIsCellular;
	if (p != NULL) context[@"kCFStreamPropertyConnectionIsCellular"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyConnectionIsCellular inContext: context];
	p = (void*) &kCFStreamPropertyAllowExpensiveNetworkAccess;
	if (p != NULL) context[@"kCFStreamPropertyAllowExpensiveNetworkAccess"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyAllowExpensiveNetworkAccess inContext: context];
	p = (void*) &kCFStreamPropertyConnectionIsExpensive;
	if (p != NULL) context[@"kCFStreamPropertyConnectionIsExpensive"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyConnectionIsExpensive inContext: context];
	p = (void*) &kCFStreamPropertyAllowConstrainedNetworkAccess;
	if (p != NULL) context[@"kCFStreamPropertyAllowConstrainedNetworkAccess"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyAllowConstrainedNetworkAccess inContext: context];
	p = (void*) &kCFStreamErrorDomainWinSock;
	if (p != NULL) context[@"kCFStreamErrorDomainWinSock"] = @(kCFStreamErrorDomainWinSock);
	p = (void*) &kCFStreamPropertyProxyLocalBypass;
	if (p != NULL) context[@"kCFStreamPropertyProxyLocalBypass"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyProxyLocalBypass inContext: context];
	p = (void*) &kCFStreamPropertySocketRemoteHost;
	if (p != NULL) context[@"kCFStreamPropertySocketRemoteHost"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketRemoteHost inContext: context];
	p = (void*) &kCFStreamPropertySocketRemoteNetService;
	if (p != NULL) context[@"kCFStreamPropertySocketRemoteNetService"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketRemoteNetService inContext: context];
	p = (void*) &kCFStreamPropertySocketExtendedBackgroundIdleMode;
	if (p != NULL) context[@"kCFStreamPropertySocketExtendedBackgroundIdleMode"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketExtendedBackgroundIdleMode inContext: context];
	p = (void*) &kCFStreamPropertySSLPeerCertificates;
	if (p != NULL) context[@"kCFStreamPropertySSLPeerCertificates"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySSLPeerCertificates inContext: context];
	p = (void*) &kCFStreamSSLAllowsExpiredCertificates;
	if (p != NULL) context[@"kCFStreamSSLAllowsExpiredCertificates"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLAllowsExpiredCertificates inContext: context];
	p = (void*) &kCFStreamSSLAllowsExpiredRoots;
	if (p != NULL) context[@"kCFStreamSSLAllowsExpiredRoots"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLAllowsExpiredRoots inContext: context];
	p = (void*) &kCFStreamSSLAllowsAnyRoot;
	if (p != NULL) context[@"kCFStreamSSLAllowsAnyRoot"] = [JSValue valueWithObject: (__bridge id) kCFStreamSSLAllowsAnyRoot inContext: context];
}
void load_CFNetwork_CFSocketStream_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
