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
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kSecAttrProtocolLDAPS;
	if (p != NULL) context[@"kSecAttrProtocolLDAPS"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolLDAPS inContext: context];
	p = (void*) &kSecMatchLimitAll;
	if (p != NULL) context[@"kSecMatchLimitAll"] = [JSValue valueWithObject: (__bridge id) kSecMatchLimitAll inContext: context];
	p = (void*) &kSecAttrProtocolIMAPS;
	if (p != NULL) context[@"kSecAttrProtocolIMAPS"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolIMAPS inContext: context];
	p = (void*) &kSecMatchItemList;
	if (p != NULL) context[@"kSecMatchItemList"] = [JSValue valueWithObject: (__bridge id) kSecMatchItemList inContext: context];
	p = (void*) &kSecAttrKeyClass;
	if (p != NULL) context[@"kSecAttrKeyClass"] = [JSValue valueWithObject: (__bridge id) kSecAttrKeyClass inContext: context];
	p = (void*) &kSecAttrLabel;
	if (p != NULL) context[@"kSecAttrLabel"] = [JSValue valueWithObject: (__bridge id) kSecAttrLabel inContext: context];
	p = (void*) &kSecClassKey;
	if (p != NULL) context[@"kSecClassKey"] = [JSValue valueWithObject: (__bridge id) kSecClassKey inContext: context];
	p = (void*) &kSecAttrProtocolSMB;
	if (p != NULL) context[@"kSecAttrProtocolSMB"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolSMB inContext: context];
	p = (void*) &kSecAttrCertificateEncoding;
	if (p != NULL) context[@"kSecAttrCertificateEncoding"] = [JSValue valueWithObject: (__bridge id) kSecAttrCertificateEncoding inContext: context];
	p = (void*) &kSecMatchSearchList;
	if (p != NULL) context[@"kSecMatchSearchList"] = [JSValue valueWithObject: (__bridge id) kSecMatchSearchList inContext: context];
	p = (void*) &kSecAttrProtocolEPPC;
	if (p != NULL) context[@"kSecAttrProtocolEPPC"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolEPPC inContext: context];
	p = (void*) &kSecAttrProtocolSSH;
	if (p != NULL) context[@"kSecAttrProtocolSSH"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolSSH inContext: context];
	p = (void*) &kSecAttrProtocolTelnetS;
	if (p != NULL) context[@"kSecAttrProtocolTelnetS"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolTelnetS inContext: context];
	p = (void*) &kSecReturnAttributes;
	if (p != NULL) context[@"kSecReturnAttributes"] = [JSValue valueWithObject: (__bridge id) kSecReturnAttributes inContext: context];
	p = (void*) &kSecAttrAuthenticationTypeHTTPBasic;
	if (p != NULL) context[@"kSecAttrAuthenticationTypeHTTPBasic"] = [JSValue valueWithObject: (__bridge id) kSecAttrAuthenticationTypeHTTPBasic inContext: context];
	p = (void*) &kSecAttrProtocolIMAP;
	if (p != NULL) context[@"kSecAttrProtocolIMAP"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolIMAP inContext: context];
	p = (void*) &kSecValueRef;
	if (p != NULL) context[@"kSecValueRef"] = [JSValue valueWithObject: (__bridge id) kSecValueRef inContext: context];
	p = (void*) &kSecAttrAuthenticationTypeDPA;
	if (p != NULL) context[@"kSecAttrAuthenticationTypeDPA"] = [JSValue valueWithObject: (__bridge id) kSecAttrAuthenticationTypeDPA inContext: context];
	p = (void*) &kSecAttrAuthenticationTypeHTTPDigest;
	if (p != NULL) context[@"kSecAttrAuthenticationTypeHTTPDigest"] = [JSValue valueWithObject: (__bridge id) kSecAttrAuthenticationTypeHTTPDigest inContext: context];
	p = (void*) &kSecAttrCanUnwrap;
	if (p != NULL) context[@"kSecAttrCanUnwrap"] = [JSValue valueWithObject: (__bridge id) kSecAttrCanUnwrap inContext: context];
	p = (void*) &kSecReturnPersistentRef;
	if (p != NULL) context[@"kSecReturnPersistentRef"] = [JSValue valueWithObject: (__bridge id) kSecReturnPersistentRef inContext: context];
	p = (void*) &kSecAttrCanDecrypt;
	if (p != NULL) context[@"kSecAttrCanDecrypt"] = [JSValue valueWithObject: (__bridge id) kSecAttrCanDecrypt inContext: context];
	p = (void*) &kSecAttrProtocolTelnet;
	if (p != NULL) context[@"kSecAttrProtocolTelnet"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolTelnet inContext: context];
	p = (void*) &kSecAttrTokenIDSecureEnclave;
	if (p != NULL) context[@"kSecAttrTokenIDSecureEnclave"] = [JSValue valueWithObject: (__bridge id) kSecAttrTokenIDSecureEnclave inContext: context];
	p = (void*) &kSecAttrIsPermanent;
	if (p != NULL) context[@"kSecAttrIsPermanent"] = [JSValue valueWithObject: (__bridge id) kSecAttrIsPermanent inContext: context];
	p = (void*) &kSecClassCertificate;
	if (p != NULL) context[@"kSecClassCertificate"] = [JSValue valueWithObject: (__bridge id) kSecClassCertificate inContext: context];
	p = (void*) &kSecAttrSerialNumber;
	if (p != NULL) context[@"kSecAttrSerialNumber"] = [JSValue valueWithObject: (__bridge id) kSecAttrSerialNumber inContext: context];
	p = (void*) &kSecAttrProtocolAppleTalk;
	if (p != NULL) context[@"kSecAttrProtocolAppleTalk"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolAppleTalk inContext: context];
	p = (void*) &kSecAttrCanDerive;
	if (p != NULL) context[@"kSecAttrCanDerive"] = [JSValue valueWithObject: (__bridge id) kSecAttrCanDerive inContext: context];
	p = (void*) &kSecAttrType;
	if (p != NULL) context[@"kSecAttrType"] = [JSValue valueWithObject: (__bridge id) kSecAttrType inContext: context];
	p = (void*) &kSecAttrProtocolFTP;
	if (p != NULL) context[@"kSecAttrProtocolFTP"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolFTP inContext: context];
	p = (void*) &kSecAttrProtocolFTPProxy;
	if (p != NULL) context[@"kSecAttrProtocolFTPProxy"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolFTPProxy inContext: context];
	p = (void*) &kSecAttrSyncViewHint;
	if (p != NULL) context[@"kSecAttrSyncViewHint"] = [JSValue valueWithObject: (__bridge id) kSecAttrSyncViewHint inContext: context];
	p = (void*) &kSecAttrPort;
	if (p != NULL) context[@"kSecAttrPort"] = [JSValue valueWithObject: (__bridge id) kSecAttrPort inContext: context];
	p = (void*) &kSecAttrCanVerify;
	if (p != NULL) context[@"kSecAttrCanVerify"] = [JSValue valueWithObject: (__bridge id) kSecAttrCanVerify inContext: context];
	p = (void*) &kSecAttrKeyClassPublic;
	if (p != NULL) context[@"kSecAttrKeyClassPublic"] = [JSValue valueWithObject: (__bridge id) kSecAttrKeyClassPublic inContext: context];
	p = (void*) &kSecAttrKeyType;
	if (p != NULL) context[@"kSecAttrKeyType"] = [JSValue valueWithObject: (__bridge id) kSecAttrKeyType inContext: context];
	p = (void*) &kSecAttrTokenID;
	if (p != NULL) context[@"kSecAttrTokenID"] = [JSValue valueWithObject: (__bridge id) kSecAttrTokenID inContext: context];
	p = (void*) &kSecAttrProtocolFTPAccount;
	if (p != NULL) context[@"kSecAttrProtocolFTPAccount"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolFTPAccount inContext: context];
	p = (void*) &kSecAttrSynchronizableAny;
	if (p != NULL) context[@"kSecAttrSynchronizableAny"] = [JSValue valueWithObject: (__bridge id) kSecAttrSynchronizableAny inContext: context];
	p = (void*) &kSecAttrProtocolHTTPSProxy;
	if (p != NULL) context[@"kSecAttrProtocolHTTPSProxy"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolHTTPSProxy inContext: context];
	p = (void*) &kSecAttrSubject;
	if (p != NULL) context[@"kSecAttrSubject"] = [JSValue valueWithObject: (__bridge id) kSecAttrSubject inContext: context];
	p = (void*) &kSecMatchLimit;
	if (p != NULL) context[@"kSecMatchLimit"] = [JSValue valueWithObject: (__bridge id) kSecMatchLimit inContext: context];
	p = (void*) &kSecAttrComment;
	if (p != NULL) context[@"kSecAttrComment"] = [JSValue valueWithObject: (__bridge id) kSecAttrComment inContext: context];
	p = (void*) &kSecAttrAccount;
	if (p != NULL) context[@"kSecAttrAccount"] = [JSValue valueWithObject: (__bridge id) kSecAttrAccount inContext: context];
	p = (void*) &kSecAttrCanSign;
	if (p != NULL) context[@"kSecAttrCanSign"] = [JSValue valueWithObject: (__bridge id) kSecAttrCanSign inContext: context];
	p = (void*) &kSecReturnData;
	if (p != NULL) context[@"kSecReturnData"] = [JSValue valueWithObject: (__bridge id) kSecReturnData inContext: context];
	p = (void*) &kSecAttrCanWrap;
	if (p != NULL) context[@"kSecAttrCanWrap"] = [JSValue valueWithObject: (__bridge id) kSecAttrCanWrap inContext: context];
	p = (void*) &kSecAttrCanEncrypt;
	if (p != NULL) context[@"kSecAttrCanEncrypt"] = [JSValue valueWithObject: (__bridge id) kSecAttrCanEncrypt inContext: context];
	p = (void*) &kSecAttrAccessibleAlwaysThisDeviceOnly;
	if (p != NULL) context[@"kSecAttrAccessibleAlwaysThisDeviceOnly"] = [JSValue valueWithObject: (__bridge id) kSecAttrAccessibleAlwaysThisDeviceOnly inContext: context];
	p = (void*) &kSecAttrGeneric;
	if (p != NULL) context[@"kSecAttrGeneric"] = [JSValue valueWithObject: (__bridge id) kSecAttrGeneric inContext: context];
	p = (void*) &kSecAttrProtocolAFP;
	if (p != NULL) context[@"kSecAttrProtocolAFP"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolAFP inContext: context];
	p = (void*) &kSecAttrSynchronizable;
	if (p != NULL) context[@"kSecAttrSynchronizable"] = [JSValue valueWithObject: (__bridge id) kSecAttrSynchronizable inContext: context];
	p = (void*) &kSecUseAuthenticationUIFail;
	if (p != NULL) context[@"kSecUseAuthenticationUIFail"] = [JSValue valueWithObject: (__bridge id) kSecUseAuthenticationUIFail inContext: context];
	p = (void*) &kSecAttrAccessibleAlways;
	if (p != NULL) context[@"kSecAttrAccessibleAlways"] = [JSValue valueWithObject: (__bridge id) kSecAttrAccessibleAlways inContext: context];
	p = (void*) &kSecMatchTrustedOnly;
	if (p != NULL) context[@"kSecMatchTrustedOnly"] = [JSValue valueWithObject: (__bridge id) kSecMatchTrustedOnly inContext: context];
	p = (void*) &kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly;
	if (p != NULL) context[@"kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly"] = [JSValue valueWithObject: (__bridge id) kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly inContext: context];
	p = (void*) &kSecAttrKeySizeInBits;
	if (p != NULL) context[@"kSecAttrKeySizeInBits"] = [JSValue valueWithObject: (__bridge id) kSecAttrKeySizeInBits inContext: context];
	p = (void*) &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
	if (p != NULL) context[@"kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly"] = [JSValue valueWithObject: (__bridge id) kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly inContext: context];
	p = (void*) &kSecAttrProtocolPOP3S;
	if (p != NULL) context[@"kSecAttrProtocolPOP3S"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolPOP3S inContext: context];
	p = (void*) &kSecClassGenericPassword;
	if (p != NULL) context[@"kSecClassGenericPassword"] = [JSValue valueWithObject: (__bridge id) kSecClassGenericPassword inContext: context];
	p = (void*) &kSecAttrProtocolRTSP;
	if (p != NULL) context[@"kSecAttrProtocolRTSP"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolRTSP inContext: context];
	p = (void*) &kSecAttrAuthenticationTypeDefault;
	if (p != NULL) context[@"kSecAttrAuthenticationTypeDefault"] = [JSValue valueWithObject: (__bridge id) kSecAttrAuthenticationTypeDefault inContext: context];
	p = (void*) &kSecAttrKeyTypeEC;
	if (p != NULL) context[@"kSecAttrKeyTypeEC"] = [JSValue valueWithObject: (__bridge id) kSecAttrKeyTypeEC inContext: context];
	p = (void*) &kSecMatchLimitOne;
	if (p != NULL) context[@"kSecMatchLimitOne"] = [JSValue valueWithObject: (__bridge id) kSecMatchLimitOne inContext: context];
	p = (void*) &kSecAttrIsInvisible;
	if (p != NULL) context[@"kSecAttrIsInvisible"] = [JSValue valueWithObject: (__bridge id) kSecAttrIsInvisible inContext: context];
	p = (void*) &kSecAttrProtocolDAAP;
	if (p != NULL) context[@"kSecAttrProtocolDAAP"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolDAAP inContext: context];
	p = (void*) &kSecUseAuthenticationUISkip;
	if (p != NULL) context[@"kSecUseAuthenticationUISkip"] = [JSValue valueWithObject: (__bridge id) kSecUseAuthenticationUISkip inContext: context];
	p = (void*) &kSecAttrApplicationLabel;
	if (p != NULL) context[@"kSecAttrApplicationLabel"] = [JSValue valueWithObject: (__bridge id) kSecAttrApplicationLabel inContext: context];
	p = (void*) &kSecAttrIssuer;
	if (p != NULL) context[@"kSecAttrIssuer"] = [JSValue valueWithObject: (__bridge id) kSecAttrIssuer inContext: context];
	p = (void*) &kSecAttrProtocolPOP3;
	if (p != NULL) context[@"kSecAttrProtocolPOP3"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolPOP3 inContext: context];
	p = (void*) &kSecAttrProtocolIPP;
	if (p != NULL) context[@"kSecAttrProtocolIPP"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolIPP inContext: context];
	p = (void*) &kSecAttrProtocolNNTPS;
	if (p != NULL) context[@"kSecAttrProtocolNNTPS"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolNNTPS inContext: context];
	p = (void*) &kSecUseAuthenticationUIAllow;
	if (p != NULL) context[@"kSecUseAuthenticationUIAllow"] = [JSValue valueWithObject: (__bridge id) kSecUseAuthenticationUIAllow inContext: context];
	p = (void*) &kSecMatchPolicy;
	if (p != NULL) context[@"kSecMatchPolicy"] = [JSValue valueWithObject: (__bridge id) kSecMatchPolicy inContext: context];
	p = (void*) &kSecAttrAccessControl;
	if (p != NULL) context[@"kSecAttrAccessControl"] = [JSValue valueWithObject: (__bridge id) kSecAttrAccessControl inContext: context];
	p = (void*) &kSecMatchCaseInsensitive;
	if (p != NULL) context[@"kSecMatchCaseInsensitive"] = [JSValue valueWithObject: (__bridge id) kSecMatchCaseInsensitive inContext: context];
	p = (void*) &kSecClass;
	if (p != NULL) context[@"kSecClass"] = [JSValue valueWithObject: (__bridge id) kSecClass inContext: context];
	p = (void*) &kSecAttrAuthenticationTypeNTLM;
	if (p != NULL) context[@"kSecAttrAuthenticationTypeNTLM"] = [JSValue valueWithObject: (__bridge id) kSecAttrAuthenticationTypeNTLM inContext: context];
	p = (void*) &kSecAttrAuthenticationTypeHTMLForm;
	if (p != NULL) context[@"kSecAttrAuthenticationTypeHTMLForm"] = [JSValue valueWithObject: (__bridge id) kSecAttrAuthenticationTypeHTMLForm inContext: context];
	p = (void*) &kSecAttrPath;
	if (p != NULL) context[@"kSecAttrPath"] = [JSValue valueWithObject: (__bridge id) kSecAttrPath inContext: context];
	p = (void*) &kSecAttrKeyClassPrivate;
	if (p != NULL) context[@"kSecAttrKeyClassPrivate"] = [JSValue valueWithObject: (__bridge id) kSecAttrKeyClassPrivate inContext: context];
	p = (void*) &kSecAttrSubjectKeyID;
	if (p != NULL) context[@"kSecAttrSubjectKeyID"] = [JSValue valueWithObject: (__bridge id) kSecAttrSubjectKeyID inContext: context];
	p = (void*) &kSecAttrEffectiveKeySize;
	if (p != NULL) context[@"kSecAttrEffectiveKeySize"] = [JSValue valueWithObject: (__bridge id) kSecAttrEffectiveKeySize inContext: context];
	p = (void*) &kSecUseAuthenticationContext;
	if (p != NULL) context[@"kSecUseAuthenticationContext"] = [JSValue valueWithObject: (__bridge id) kSecUseAuthenticationContext inContext: context];
	p = (void*) &kSecAttrCreationDate;
	if (p != NULL) context[@"kSecAttrCreationDate"] = [JSValue valueWithObject: (__bridge id) kSecAttrCreationDate inContext: context];
	p = (void*) &kSecAttrProtocolFTPS;
	if (p != NULL) context[@"kSecAttrProtocolFTPS"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolFTPS inContext: context];
	p = (void*) &kSecClassIdentity;
	if (p != NULL) context[@"kSecClassIdentity"] = [JSValue valueWithObject: (__bridge id) kSecClassIdentity inContext: context];
	p = (void*) &kSecAttrAccessibleWhenUnlocked;
	if (p != NULL) context[@"kSecAttrAccessibleWhenUnlocked"] = [JSValue valueWithObject: (__bridge id) kSecAttrAccessibleWhenUnlocked inContext: context];
	p = (void*) &kSecAttrProtocolNNTP;
	if (p != NULL) context[@"kSecAttrProtocolNNTP"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolNNTP inContext: context];
	p = (void*) &kSecAttrProtocolIRC;
	if (p != NULL) context[@"kSecAttrProtocolIRC"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolIRC inContext: context];
	p = (void*) &kSecValueData;
	if (p != NULL) context[@"kSecValueData"] = [JSValue valueWithObject: (__bridge id) kSecValueData inContext: context];
	p = (void*) &kSecAttrProtocolHTTPS;
	if (p != NULL) context[@"kSecAttrProtocolHTTPS"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolHTTPS inContext: context];
	p = (void*) &kSecAttrAccessGroup;
	if (p != NULL) context[@"kSecAttrAccessGroup"] = [JSValue valueWithObject: (__bridge id) kSecAttrAccessGroup inContext: context];
	p = (void*) &kSecAttrAccessible;
	if (p != NULL) context[@"kSecAttrAccessible"] = [JSValue valueWithObject: (__bridge id) kSecAttrAccessible inContext: context];
	p = (void*) &kSecAttrApplicationTag;
	if (p != NULL) context[@"kSecAttrApplicationTag"] = [JSValue valueWithObject: (__bridge id) kSecAttrApplicationTag inContext: context];
	p = (void*) &kSecUseOperationPrompt;
	if (p != NULL) context[@"kSecUseOperationPrompt"] = [JSValue valueWithObject: (__bridge id) kSecUseOperationPrompt inContext: context];
	p = (void*) &kSecAttrProtocolLDAP;
	if (p != NULL) context[@"kSecAttrProtocolLDAP"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolLDAP inContext: context];
	p = (void*) &kSecAttrDescription;
	if (p != NULL) context[@"kSecAttrDescription"] = [JSValue valueWithObject: (__bridge id) kSecAttrDescription inContext: context];
	p = (void*) &kSecUseAuthenticationUI;
	if (p != NULL) context[@"kSecUseAuthenticationUI"] = [JSValue valueWithObject: (__bridge id) kSecUseAuthenticationUI inContext: context];
	p = (void*) &kSecMatchEmailAddressIfPresent;
	if (p != NULL) context[@"kSecMatchEmailAddressIfPresent"] = [JSValue valueWithObject: (__bridge id) kSecMatchEmailAddressIfPresent inContext: context];
	p = (void*) &kSecMatchSubjectContains;
	if (p != NULL) context[@"kSecMatchSubjectContains"] = [JSValue valueWithObject: (__bridge id) kSecMatchSubjectContains inContext: context];
	p = (void*) &kSecAttrAccessibleAfterFirstUnlock;
	if (p != NULL) context[@"kSecAttrAccessibleAfterFirstUnlock"] = [JSValue valueWithObject: (__bridge id) kSecAttrAccessibleAfterFirstUnlock inContext: context];
	p = (void*) &kSecAttrKeyTypeRSA;
	if (p != NULL) context[@"kSecAttrKeyTypeRSA"] = [JSValue valueWithObject: (__bridge id) kSecAttrKeyTypeRSA inContext: context];
	p = (void*) &kSecMatchIssuers;
	if (p != NULL) context[@"kSecMatchIssuers"] = [JSValue valueWithObject: (__bridge id) kSecMatchIssuers inContext: context];
	p = (void*) &kSecAttrCreator;
	if (p != NULL) context[@"kSecAttrCreator"] = [JSValue valueWithObject: (__bridge id) kSecAttrCreator inContext: context];
	p = (void*) &kSecAttrPublicKeyHash;
	if (p != NULL) context[@"kSecAttrPublicKeyHash"] = [JSValue valueWithObject: (__bridge id) kSecAttrPublicKeyHash inContext: context];
	p = (void*) &kSecAttrAuthenticationType;
	if (p != NULL) context[@"kSecAttrAuthenticationType"] = [JSValue valueWithObject: (__bridge id) kSecAttrAuthenticationType inContext: context];
	p = (void*) &kSecAttrProtocolSMTP;
	if (p != NULL) context[@"kSecAttrProtocolSMTP"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolSMTP inContext: context];
	p = (void*) &kSecAttrProtocolHTTPProxy;
	if (p != NULL) context[@"kSecAttrProtocolHTTPProxy"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolHTTPProxy inContext: context];
	p = (void*) &kSecAttrSecurityDomain;
	if (p != NULL) context[@"kSecAttrSecurityDomain"] = [JSValue valueWithObject: (__bridge id) kSecAttrSecurityDomain inContext: context];
	p = (void*) &kSecClassInternetPassword;
	if (p != NULL) context[@"kSecClassInternetPassword"] = [JSValue valueWithObject: (__bridge id) kSecClassInternetPassword inContext: context];
	p = (void*) &kSecAttrProtocolSOCKS;
	if (p != NULL) context[@"kSecAttrProtocolSOCKS"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolSOCKS inContext: context];
	p = (void*) &kSecAttrProtocol;
	if (p != NULL) context[@"kSecAttrProtocol"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocol inContext: context];
	p = (void*) &kSecAttrAuthenticationTypeRPA;
	if (p != NULL) context[@"kSecAttrAuthenticationTypeRPA"] = [JSValue valueWithObject: (__bridge id) kSecAttrAuthenticationTypeRPA inContext: context];
	p = (void*) &kSecAttrModificationDate;
	if (p != NULL) context[@"kSecAttrModificationDate"] = [JSValue valueWithObject: (__bridge id) kSecAttrModificationDate inContext: context];
	p = (void*) &kSecAttrServer;
	if (p != NULL) context[@"kSecAttrServer"] = [JSValue valueWithObject: (__bridge id) kSecAttrServer inContext: context];
	p = (void*) &kSecAttrKeyClassSymmetric;
	if (p != NULL) context[@"kSecAttrKeyClassSymmetric"] = [JSValue valueWithObject: (__bridge id) kSecAttrKeyClassSymmetric inContext: context];
	p = (void*) &kSecUseNoAuthenticationUI;
	if (p != NULL) context[@"kSecUseNoAuthenticationUI"] = [JSValue valueWithObject: (__bridge id) kSecUseNoAuthenticationUI inContext: context];
	p = (void*) &kSecValuePersistentRef;
	if (p != NULL) context[@"kSecValuePersistentRef"] = [JSValue valueWithObject: (__bridge id) kSecValuePersistentRef inContext: context];
#ifndef __IPHONE_12_0
    p = (void*) &kSecUseItemList;
    if (p != NULL) context[@"kSecUseItemList"] = [JSValue valueWithObject: (__bridge id) kSecUseItemList inContext: context];
#endif
	p = (void*) &kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
	if (p != NULL) context[@"kSecAttrAccessibleWhenUnlockedThisDeviceOnly"] = [JSValue valueWithObject: (__bridge id) kSecAttrAccessibleWhenUnlockedThisDeviceOnly inContext: context];
	p = (void*) &kSecAttrIsNegative;
	if (p != NULL) context[@"kSecAttrIsNegative"] = [JSValue valueWithObject: (__bridge id) kSecAttrIsNegative inContext: context];
	p = (void*) &kSecAttrProtocolHTTP;
	if (p != NULL) context[@"kSecAttrProtocolHTTP"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolHTTP inContext: context];
	p = (void*) &kSecAttrAuthenticationTypeMSN;
	if (p != NULL) context[@"kSecAttrAuthenticationTypeMSN"] = [JSValue valueWithObject: (__bridge id) kSecAttrAuthenticationTypeMSN inContext: context];
	p = (void*) &kSecAttrCertificateType;
	if (p != NULL) context[@"kSecAttrCertificateType"] = [JSValue valueWithObject: (__bridge id) kSecAttrCertificateType inContext: context];
	p = (void*) &kSecAttrProtocolRTSPProxy;
	if (p != NULL) context[@"kSecAttrProtocolRTSPProxy"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolRTSPProxy inContext: context];
	p = (void*) &kSecAttrProtocolIRCS;
	if (p != NULL) context[@"kSecAttrProtocolIRCS"] = [JSValue valueWithObject: (__bridge id) kSecAttrProtocolIRCS inContext: context];
	p = (void*) &kSecReturnRef;
	if (p != NULL) context[@"kSecReturnRef"] = [JSValue valueWithObject: (__bridge id) kSecReturnRef inContext: context];
	p = (void*) &kSecMatchValidOnDate;
	if (p != NULL) context[@"kSecMatchValidOnDate"] = [JSValue valueWithObject: (__bridge id) kSecMatchValidOnDate inContext: context];
	p = (void*) &kSecAttrService;
	if (p != NULL) context[@"kSecAttrService"] = [JSValue valueWithObject: (__bridge id) kSecAttrService inContext: context];
}
void load_Security_SecItem_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
