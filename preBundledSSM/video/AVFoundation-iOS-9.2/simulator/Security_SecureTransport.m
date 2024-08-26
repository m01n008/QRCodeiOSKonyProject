#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kSSLProtocolUnknown"] = @0;
	context[@"kSSLProtocol3"] = @2;
	context[@"kTLSProtocol1"] = @4;
	context[@"kTLSProtocol11"] = @7;
	context[@"kTLSProtocol12"] = @8;
	context[@"kDTLSProtocol1"] = @9;
	context[@"kSSLProtocol2"] = @1;
	context[@"kSSLProtocol3Only"] = @3;
	context[@"kTLSProtocol1Only"] = @5;
	context[@"kSSLProtocolAll"] = @6;

	context[@"kSSLSessionOptionBreakOnServerAuth"] = @0;
	context[@"kSSLSessionOptionBreakOnCertRequested"] = @1;
	context[@"kSSLSessionOptionBreakOnClientAuth"] = @2;
	context[@"kSSLSessionOptionFalseStart"] = @3;
	context[@"kSSLSessionOptionSendOneByteRecord"] = @4;
	context[@"kSSLSessionOptionAllowServerIdentityChange"] = @5;
	context[@"kSSLSessionOptionFallback"] = @6;
	context[@"kSSLSessionOptionBreakOnClientHello"] = @7;

	context[@"kSSLIdle"] = @0;
	context[@"kSSLHandshake"] = @1;
	context[@"kSSLConnected"] = @2;
	context[@"kSSLClosed"] = @3;
	context[@"kSSLAborted"] = @4;

	context[@"kSSLClientCertNone"] = @0;
	context[@"kSSLClientCertRequested"] = @1;
	context[@"kSSLClientCertSent"] = @2;
	context[@"kSSLClientCertRejected"] = @3;

	context[@"errSSLProtocol"] = @-9800L;
	context[@"errSSLNegotiation"] = @-9801L;
	context[@"errSSLFatalAlert"] = @-9802L;
	context[@"errSSLWouldBlock"] = @-9803L;
	context[@"errSSLSessionNotFound"] = @-9804L;
	context[@"errSSLClosedGraceful"] = @-9805L;
	context[@"errSSLClosedAbort"] = @-9806L;
	context[@"errSSLXCertChainInvalid"] = @-9807L;
	context[@"errSSLBadCert"] = @-9808L;
	context[@"errSSLCrypto"] = @-9809L;
	context[@"errSSLInternal"] = @-9810L;
	context[@"errSSLModuleAttach"] = @-9811L;
	context[@"errSSLUnknownRootCert"] = @-9812L;
	context[@"errSSLNoRootCert"] = @-9813L;
	context[@"errSSLCertExpired"] = @-9814L;
	context[@"errSSLCertNotYetValid"] = @-9815L;
	context[@"errSSLClosedNoNotify"] = @-9816L;
	context[@"errSSLBufferOverflow"] = @-9817L;
	context[@"errSSLBadCipherSuite"] = @-9818L;
	context[@"errSSLPeerUnexpectedMsg"] = @-9819L;
	context[@"errSSLPeerBadRecordMac"] = @-9820L;
	context[@"errSSLPeerDecryptionFail"] = @-9821L;
	context[@"errSSLPeerRecordOverflow"] = @-9822L;
	context[@"errSSLPeerDecompressFail"] = @-9823L;
	context[@"errSSLPeerHandshakeFail"] = @-9824L;
	context[@"errSSLPeerBadCert"] = @-9825L;
	context[@"errSSLPeerUnsupportedCert"] = @-9826L;
	context[@"errSSLPeerCertRevoked"] = @-9827L;
	context[@"errSSLPeerCertExpired"] = @-9828L;
	context[@"errSSLPeerCertUnknown"] = @-9829L;
	context[@"errSSLIllegalParam"] = @-9830L;
	context[@"errSSLPeerUnknownCA"] = @-9831L;
	context[@"errSSLPeerAccessDenied"] = @-9832L;
	context[@"errSSLPeerDecodeError"] = @-9833L;
	context[@"errSSLPeerDecryptError"] = @-9834L;
	context[@"errSSLPeerExportRestriction"] = @-9835L;
	context[@"errSSLPeerProtocolVersion"] = @-9836L;
	context[@"errSSLPeerInsufficientSecurity"] = @-9837L;
	context[@"errSSLPeerInternalError"] = @-9838L;
	context[@"errSSLPeerUserCancelled"] = @-9839L;
	context[@"errSSLPeerNoRenegotiation"] = @-9840L;
	context[@"errSSLPeerAuthCompleted"] = @-9841L;
	context[@"errSSLClientCertRequested"] = @-9842L;
	context[@"errSSLHostNameMismatch"] = @-9843L;
	context[@"errSSLConnectionRefused"] = @-9844L;
	context[@"errSSLDecryptionFail"] = @-9845L;
	context[@"errSSLBadRecordMac"] = @-9846L;
	context[@"errSSLRecordOverflow"] = @-9847L;
	context[@"errSSLBadConfiguration"] = @-9848L;
	context[@"errSSLUnexpectedRecord"] = @-9849L;
	context[@"errSSLWeakPeerEphemeralDHKey"] = @-9850L;
	context[@"errSSLClientHelloReceived"] = @-9851L;

	context[@"kSSLServerSide"] = @0;
	context[@"kSSLClientSide"] = @1;

	context[@"kSSLStreamType"] = @0;
	context[@"kSSLDatagramType"] = @1;

	context[@"kSSLSessionStrengthPolicyDefault"] = @0;
	context[@"kSSLSessionStrengthPolicyATSv1"] = @1;
	context[@"kSSLSessionStrengthPolicyATSv1_noPFS"] = @2;

	context[@"kNeverAuthenticate"] = @0;
	context[@"kAlwaysAuthenticate"] = @1;
	context[@"kTryAuthenticate"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Security_SecureTransport_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
