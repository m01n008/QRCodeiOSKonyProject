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
	context[@"errSecSuccess"] = @0L;
	context[@"errSecUnimplemented"] = @-4L;
	context[@"errSecDiskFull"] = @-34L;
	context[@"errSecDskFull"] = @-34L;
	context[@"errSecIO"] = @-36L;
	context[@"errSecOpWr"] = @-49L;
	context[@"errSecParam"] = @-50L;
	context[@"errSecWrPerm"] = @-61L;
	context[@"errSecAllocate"] = @-108L;
	context[@"errSecUserCanceled"] = @-128L;
	context[@"errSecBadReq"] = @-909L;
	context[@"errSecInternalComponent"] = @-2070L;
	context[@"errSecCoreFoundationUnknown"] = @-4960L;
	context[@"errSecMissingEntitlement"] = @-34018L;
	context[@"errSecRestrictedAPI"] = @-34020L;
	context[@"errSecNotAvailable"] = @-25291L;
	context[@"errSecReadOnly"] = @-25292L;
	context[@"errSecAuthFailed"] = @-25293L;
	context[@"errSecNoSuchKeychain"] = @-25294L;
	context[@"errSecInvalidKeychain"] = @-25295L;
	context[@"errSecDuplicateKeychain"] = @-25296L;
	context[@"errSecDuplicateCallback"] = @-25297L;
	context[@"errSecInvalidCallback"] = @-25298L;
	context[@"errSecDuplicateItem"] = @-25299L;
	context[@"errSecItemNotFound"] = @-25300L;
	context[@"errSecBufferTooSmall"] = @-25301L;
	context[@"errSecDataTooLarge"] = @-25302L;
	context[@"errSecNoSuchAttr"] = @-25303L;
	context[@"errSecInvalidItemRef"] = @-25304L;
	context[@"errSecInvalidSearchRef"] = @-25305L;
	context[@"errSecNoSuchClass"] = @-25306L;
	context[@"errSecNoDefaultKeychain"] = @-25307L;
	context[@"errSecInteractionNotAllowed"] = @-25308L;
	context[@"errSecReadOnlyAttr"] = @-25309L;
	context[@"errSecWrongSecVersion"] = @-25310L;
	context[@"errSecKeySizeNotAllowed"] = @-25311L;
	context[@"errSecNoStorageModule"] = @-25312L;
	context[@"errSecNoCertificateModule"] = @-25313L;
	context[@"errSecNoPolicyModule"] = @-25314L;
	context[@"errSecInteractionRequired"] = @-25315L;
	context[@"errSecDataNotAvailable"] = @-25316L;
	context[@"errSecDataNotModifiable"] = @-25317L;
	context[@"errSecCreateChainFailed"] = @-25318L;
	context[@"errSecInvalidPrefsDomain"] = @-25319L;
	context[@"errSecInDarkWake"] = @-25320L;
	context[@"errSecACLNotSimple"] = @-25240L;
	context[@"errSecPolicyNotFound"] = @-25241L;
	context[@"errSecInvalidTrustSetting"] = @-25242L;
	context[@"errSecNoAccessForItem"] = @-25243L;
	context[@"errSecInvalidOwnerEdit"] = @-25244L;
	context[@"errSecTrustNotAvailable"] = @-25245L;
	context[@"errSecUnsupportedFormat"] = @-25256L;
	context[@"errSecUnknownFormat"] = @-25257L;
	context[@"errSecKeyIsSensitive"] = @-25258L;
	context[@"errSecMultiplePrivKeys"] = @-25259L;
	context[@"errSecPassphraseRequired"] = @-25260L;
	context[@"errSecInvalidPasswordRef"] = @-25261L;
	context[@"errSecInvalidTrustSettings"] = @-25262L;
	context[@"errSecNoTrustSettings"] = @-25263L;
	context[@"errSecPkcs12VerifyFailure"] = @-25264L;
	context[@"errSecNotSigner"] = @-26267L;
	context[@"errSecDecode"] = @-26275L;
	context[@"errSecServiceNotAvailable"] = @-67585L;
	context[@"errSecInsufficientClientID"] = @-67586L;
	context[@"errSecDeviceReset"] = @-67587L;
	context[@"errSecDeviceFailed"] = @-67588L;
	context[@"errSecAppleAddAppACLSubject"] = @-67589L;
	context[@"errSecApplePublicKeyIncomplete"] = @-67590L;
	context[@"errSecAppleSignatureMismatch"] = @-67591L;
	context[@"errSecAppleInvalidKeyStartDate"] = @-67592L;
	context[@"errSecAppleInvalidKeyEndDate"] = @-67593L;
	context[@"errSecConversionError"] = @-67594L;
	context[@"errSecAppleSSLv2Rollback"] = @-67595L;
	context[@"errSecQuotaExceeded"] = @-67596L;
	context[@"errSecFileTooBig"] = @-67597L;
	context[@"errSecInvalidDatabaseBlob"] = @-67598L;
	context[@"errSecInvalidKeyBlob"] = @-67599L;
	context[@"errSecIncompatibleDatabaseBlob"] = @-67600L;
	context[@"errSecIncompatibleKeyBlob"] = @-67601L;
	context[@"errSecHostNameMismatch"] = @-67602L;
	context[@"errSecUnknownCriticalExtensionFlag"] = @-67603L;
	context[@"errSecNoBasicConstraints"] = @-67604L;
	context[@"errSecNoBasicConstraintsCA"] = @-67605L;
	context[@"errSecInvalidAuthorityKeyID"] = @-67606L;
	context[@"errSecInvalidSubjectKeyID"] = @-67607L;
	context[@"errSecInvalidKeyUsageForPolicy"] = @-67608L;
	context[@"errSecInvalidExtendedKeyUsage"] = @-67609L;
	context[@"errSecInvalidIDLinkage"] = @-67610L;
	context[@"errSecPathLengthConstraintExceeded"] = @-67611L;
	context[@"errSecInvalidRoot"] = @-67612L;
	context[@"errSecCRLExpired"] = @-67613L;
	context[@"errSecCRLNotValidYet"] = @-67614L;
	context[@"errSecCRLNotFound"] = @-67615L;
	context[@"errSecCRLServerDown"] = @-67616L;
	context[@"errSecCRLBadURI"] = @-67617L;
	context[@"errSecUnknownCertExtension"] = @-67618L;
	context[@"errSecUnknownCRLExtension"] = @-67619L;
	context[@"errSecCRLNotTrusted"] = @-67620L;
	context[@"errSecCRLPolicyFailed"] = @-67621L;
	context[@"errSecIDPFailure"] = @-67622L;
	context[@"errSecSMIMEEmailAddressesNotFound"] = @-67623L;
	context[@"errSecSMIMEBadExtendedKeyUsage"] = @-67624L;
	context[@"errSecSMIMEBadKeyUsage"] = @-67625L;
	context[@"errSecSMIMEKeyUsageNotCritical"] = @-67626L;
	context[@"errSecSMIMENoEmailAddress"] = @-67627L;
	context[@"errSecSMIMESubjAltNameNotCritical"] = @-67628L;
	context[@"errSecSSLBadExtendedKeyUsage"] = @-67629L;
	context[@"errSecOCSPBadResponse"] = @-67630L;
	context[@"errSecOCSPBadRequest"] = @-67631L;
	context[@"errSecOCSPUnavailable"] = @-67632L;
	context[@"errSecOCSPStatusUnrecognized"] = @-67633L;
	context[@"errSecEndOfData"] = @-67634L;
	context[@"errSecIncompleteCertRevocationCheck"] = @-67635L;
	context[@"errSecNetworkFailure"] = @-67636L;
	context[@"errSecOCSPNotTrustedToAnchor"] = @-67637L;
	context[@"errSecRecordModified"] = @-67638L;
	context[@"errSecOCSPSignatureError"] = @-67639L;
	context[@"errSecOCSPNoSigner"] = @-67640L;
	context[@"errSecOCSPResponderMalformedReq"] = @-67641L;
	context[@"errSecOCSPResponderInternalError"] = @-67642L;
	context[@"errSecOCSPResponderTryLater"] = @-67643L;
	context[@"errSecOCSPResponderSignatureRequired"] = @-67644L;
	context[@"errSecOCSPResponderUnauthorized"] = @-67645L;
	context[@"errSecOCSPResponseNonceMismatch"] = @-67646L;
	context[@"errSecCodeSigningBadCertChainLength"] = @-67647L;
	context[@"errSecCodeSigningNoBasicConstraints"] = @-67648L;
	context[@"errSecCodeSigningBadPathLengthConstraint"] = @-67649L;
	context[@"errSecCodeSigningNoExtendedKeyUsage"] = @-67650L;
	context[@"errSecCodeSigningDevelopment"] = @-67651L;
	context[@"errSecResourceSignBadCertChainLength"] = @-67652L;
	context[@"errSecResourceSignBadExtKeyUsage"] = @-67653L;
	context[@"errSecTrustSettingDeny"] = @-67654L;
	context[@"errSecInvalidSubjectName"] = @-67655L;
	context[@"errSecUnknownQualifiedCertStatement"] = @-67656L;
	context[@"errSecMobileMeRequestQueued"] = @-67657L;
	context[@"errSecMobileMeRequestRedirected"] = @-67658L;
	context[@"errSecMobileMeServerError"] = @-67659L;
	context[@"errSecMobileMeServerNotAvailable"] = @-67660L;
	context[@"errSecMobileMeServerAlreadyExists"] = @-67661L;
	context[@"errSecMobileMeServerServiceErr"] = @-67662L;
	context[@"errSecMobileMeRequestAlreadyPending"] = @-67663L;
	context[@"errSecMobileMeNoRequestPending"] = @-67664L;
	context[@"errSecMobileMeCSRVerifyFailure"] = @-67665L;
	context[@"errSecMobileMeFailedConsistencyCheck"] = @-67666L;
	context[@"errSecNotInitialized"] = @-67667L;
	context[@"errSecInvalidHandleUsage"] = @-67668L;
	context[@"errSecPVCReferentNotFound"] = @-67669L;
	context[@"errSecFunctionIntegrityFail"] = @-67670L;
	context[@"errSecInternalError"] = @-67671L;
	context[@"errSecMemoryError"] = @-67672L;
	context[@"errSecInvalidData"] = @-67673L;
	context[@"errSecMDSError"] = @-67674L;
	context[@"errSecInvalidPointer"] = @-67675L;
	context[@"errSecSelfCheckFailed"] = @-67676L;
	context[@"errSecFunctionFailed"] = @-67677L;
	context[@"errSecModuleManifestVerifyFailed"] = @-67678L;
	context[@"errSecInvalidGUID"] = @-67679L;
	context[@"errSecInvalidHandle"] = @-67680L;
	context[@"errSecInvalidDBList"] = @-67681L;
	context[@"errSecInvalidPassthroughID"] = @-67682L;
	context[@"errSecInvalidNetworkAddress"] = @-67683L;
	context[@"errSecCRLAlreadySigned"] = @-67684L;
	context[@"errSecInvalidNumberOfFields"] = @-67685L;
	context[@"errSecVerificationFailure"] = @-67686L;
	context[@"errSecUnknownTag"] = @-67687L;
	context[@"errSecInvalidSignature"] = @-67688L;
	context[@"errSecInvalidName"] = @-67689L;
	context[@"errSecInvalidCertificateRef"] = @-67690L;
	context[@"errSecInvalidCertificateGroup"] = @-67691L;
	context[@"errSecTagNotFound"] = @-67692L;
	context[@"errSecInvalidQuery"] = @-67693L;
	context[@"errSecInvalidValue"] = @-67694L;
	context[@"errSecCallbackFailed"] = @-67695L;
	context[@"errSecACLDeleteFailed"] = @-67696L;
	context[@"errSecACLReplaceFailed"] = @-67697L;
	context[@"errSecACLAddFailed"] = @-67698L;
	context[@"errSecACLChangeFailed"] = @-67699L;
	context[@"errSecInvalidAccessCredentials"] = @-67700L;
	context[@"errSecInvalidRecord"] = @-67701L;
	context[@"errSecInvalidACL"] = @-67702L;
	context[@"errSecInvalidSampleValue"] = @-67703L;
	context[@"errSecIncompatibleVersion"] = @-67704L;
	context[@"errSecPrivilegeNotGranted"] = @-67705L;
	context[@"errSecInvalidScope"] = @-67706L;
	context[@"errSecPVCAlreadyConfigured"] = @-67707L;
	context[@"errSecInvalidPVC"] = @-67708L;
	context[@"errSecEMMLoadFailed"] = @-67709L;
	context[@"errSecEMMUnloadFailed"] = @-67710L;
	context[@"errSecAddinLoadFailed"] = @-67711L;
	context[@"errSecInvalidKeyRef"] = @-67712L;
	context[@"errSecInvalidKeyHierarchy"] = @-67713L;
	context[@"errSecAddinUnloadFailed"] = @-67714L;
	context[@"errSecLibraryReferenceNotFound"] = @-67715L;
	context[@"errSecInvalidAddinFunctionTable"] = @-67716L;
	context[@"errSecInvalidServiceMask"] = @-67717L;
	context[@"errSecModuleNotLoaded"] = @-67718L;
	context[@"errSecInvalidSubServiceID"] = @-67719L;
	context[@"errSecAttributeNotInContext"] = @-67720L;
	context[@"errSecModuleManagerInitializeFailed"] = @-67721L;
	context[@"errSecModuleManagerNotFound"] = @-67722L;
	context[@"errSecEventNotificationCallbackNotFound"] = @-67723L;
	context[@"errSecInputLengthError"] = @-67724L;
	context[@"errSecOutputLengthError"] = @-67725L;
	context[@"errSecPrivilegeNotSupported"] = @-67726L;
	context[@"errSecDeviceError"] = @-67727L;
	context[@"errSecAttachHandleBusy"] = @-67728L;
	context[@"errSecNotLoggedIn"] = @-67729L;
	context[@"errSecAlgorithmMismatch"] = @-67730L;
	context[@"errSecKeyUsageIncorrect"] = @-67731L;
	context[@"errSecKeyBlobTypeIncorrect"] = @-67732L;
	context[@"errSecKeyHeaderInconsistent"] = @-67733L;
	context[@"errSecUnsupportedKeyFormat"] = @-67734L;
	context[@"errSecUnsupportedKeySize"] = @-67735L;
	context[@"errSecInvalidKeyUsageMask"] = @-67736L;
	context[@"errSecUnsupportedKeyUsageMask"] = @-67737L;
	context[@"errSecInvalidKeyAttributeMask"] = @-67738L;
	context[@"errSecUnsupportedKeyAttributeMask"] = @-67739L;
	context[@"errSecInvalidKeyLabel"] = @-67740L;
	context[@"errSecUnsupportedKeyLabel"] = @-67741L;
	context[@"errSecInvalidKeyFormat"] = @-67742L;
	context[@"errSecUnsupportedVectorOfBuffers"] = @-67743L;
	context[@"errSecInvalidInputVector"] = @-67744L;
	context[@"errSecInvalidOutputVector"] = @-67745L;
	context[@"errSecInvalidContext"] = @-67746L;
	context[@"errSecInvalidAlgorithm"] = @-67747L;
	context[@"errSecInvalidAttributeKey"] = @-67748L;
	context[@"errSecMissingAttributeKey"] = @-67749L;
	context[@"errSecInvalidAttributeInitVector"] = @-67750L;
	context[@"errSecMissingAttributeInitVector"] = @-67751L;
	context[@"errSecInvalidAttributeSalt"] = @-67752L;
	context[@"errSecMissingAttributeSalt"] = @-67753L;
	context[@"errSecInvalidAttributePadding"] = @-67754L;
	context[@"errSecMissingAttributePadding"] = @-67755L;
	context[@"errSecInvalidAttributeRandom"] = @-67756L;
	context[@"errSecMissingAttributeRandom"] = @-67757L;
	context[@"errSecInvalidAttributeSeed"] = @-67758L;
	context[@"errSecMissingAttributeSeed"] = @-67759L;
	context[@"errSecInvalidAttributePassphrase"] = @-67760L;
	context[@"errSecMissingAttributePassphrase"] = @-67761L;
	context[@"errSecInvalidAttributeKeyLength"] = @-67762L;
	context[@"errSecMissingAttributeKeyLength"] = @-67763L;
	context[@"errSecInvalidAttributeBlockSize"] = @-67764L;
	context[@"errSecMissingAttributeBlockSize"] = @-67765L;
	context[@"errSecInvalidAttributeOutputSize"] = @-67766L;
	context[@"errSecMissingAttributeOutputSize"] = @-67767L;
	context[@"errSecInvalidAttributeRounds"] = @-67768L;
	context[@"errSecMissingAttributeRounds"] = @-67769L;
	context[@"errSecInvalidAlgorithmParms"] = @-67770L;
	context[@"errSecMissingAlgorithmParms"] = @-67771L;
	context[@"errSecInvalidAttributeLabel"] = @-67772L;
	context[@"errSecMissingAttributeLabel"] = @-67773L;
	context[@"errSecInvalidAttributeKeyType"] = @-67774L;
	context[@"errSecMissingAttributeKeyType"] = @-67775L;
	context[@"errSecInvalidAttributeMode"] = @-67776L;
	context[@"errSecMissingAttributeMode"] = @-67777L;
	context[@"errSecInvalidAttributeEffectiveBits"] = @-67778L;
	context[@"errSecMissingAttributeEffectiveBits"] = @-67779L;
	context[@"errSecInvalidAttributeStartDate"] = @-67780L;
	context[@"errSecMissingAttributeStartDate"] = @-67781L;
	context[@"errSecInvalidAttributeEndDate"] = @-67782L;
	context[@"errSecMissingAttributeEndDate"] = @-67783L;
	context[@"errSecInvalidAttributeVersion"] = @-67784L;
	context[@"errSecMissingAttributeVersion"] = @-67785L;
	context[@"errSecInvalidAttributePrime"] = @-67786L;
	context[@"errSecMissingAttributePrime"] = @-67787L;
	context[@"errSecInvalidAttributeBase"] = @-67788L;
	context[@"errSecMissingAttributeBase"] = @-67789L;
	context[@"errSecInvalidAttributeSubprime"] = @-67790L;
	context[@"errSecMissingAttributeSubprime"] = @-67791L;
	context[@"errSecInvalidAttributeIterationCount"] = @-67792L;
	context[@"errSecMissingAttributeIterationCount"] = @-67793L;
	context[@"errSecInvalidAttributeDLDBHandle"] = @-67794L;
	context[@"errSecMissingAttributeDLDBHandle"] = @-67795L;
	context[@"errSecInvalidAttributeAccessCredentials"] = @-67796L;
	context[@"errSecMissingAttributeAccessCredentials"] = @-67797L;
	context[@"errSecInvalidAttributePublicKeyFormat"] = @-67798L;
	context[@"errSecMissingAttributePublicKeyFormat"] = @-67799L;
	context[@"errSecInvalidAttributePrivateKeyFormat"] = @-67800L;
	context[@"errSecMissingAttributePrivateKeyFormat"] = @-67801L;
	context[@"errSecInvalidAttributeSymmetricKeyFormat"] = @-67802L;
	context[@"errSecMissingAttributeSymmetricKeyFormat"] = @-67803L;
	context[@"errSecInvalidAttributeWrappedKeyFormat"] = @-67804L;
	context[@"errSecMissingAttributeWrappedKeyFormat"] = @-67805L;
	context[@"errSecStagedOperationInProgress"] = @-67806L;
	context[@"errSecStagedOperationNotStarted"] = @-67807L;
	context[@"errSecVerifyFailed"] = @-67808L;
	context[@"errSecQuerySizeUnknown"] = @-67809L;
	context[@"errSecBlockSizeMismatch"] = @-67810L;
	context[@"errSecPublicKeyInconsistent"] = @-67811L;
	context[@"errSecDeviceVerifyFailed"] = @-67812L;
	context[@"errSecInvalidLoginName"] = @-67813L;
	context[@"errSecAlreadyLoggedIn"] = @-67814L;
	context[@"errSecInvalidDigestAlgorithm"] = @-67815L;
	context[@"errSecInvalidCRLGroup"] = @-67816L;
	context[@"errSecCertificateCannotOperate"] = @-67817L;
	context[@"errSecCertificateExpired"] = @-67818L;
	context[@"errSecCertificateNotValidYet"] = @-67819L;
	context[@"errSecCertificateRevoked"] = @-67820L;
	context[@"errSecCertificateSuspended"] = @-67821L;
	context[@"errSecInsufficientCredentials"] = @-67822L;
	context[@"errSecInvalidAction"] = @-67823L;
	context[@"errSecInvalidAuthority"] = @-67824L;
	context[@"errSecVerifyActionFailed"] = @-67825L;
	context[@"errSecInvalidCertAuthority"] = @-67826L;
	context[@"errSecInvaldCRLAuthority"] = @-67827L;
	context[@"errSecInvalidCRLEncoding"] = @-67828L;
	context[@"errSecInvalidCRLType"] = @-67829L;
	context[@"errSecInvalidCRL"] = @-67830L;
	context[@"errSecInvalidFormType"] = @-67831L;
	context[@"errSecInvalidID"] = @-67832L;
	context[@"errSecInvalidIdentifier"] = @-67833L;
	context[@"errSecInvalidIndex"] = @-67834L;
	context[@"errSecInvalidPolicyIdentifiers"] = @-67835L;
	context[@"errSecInvalidTimeString"] = @-67836L;
	context[@"errSecInvalidReason"] = @-67837L;
	context[@"errSecInvalidRequestInputs"] = @-67838L;
	context[@"errSecInvalidResponseVector"] = @-67839L;
	context[@"errSecInvalidStopOnPolicy"] = @-67840L;
	context[@"errSecInvalidTuple"] = @-67841L;
	context[@"errSecMultipleValuesUnsupported"] = @-67842L;
	context[@"errSecNotTrusted"] = @-67843L;
	context[@"errSecNoDefaultAuthority"] = @-67844L;
	context[@"errSecRejectedForm"] = @-67845L;
	context[@"errSecRequestLost"] = @-67846L;
	context[@"errSecRequestRejected"] = @-67847L;
	context[@"errSecUnsupportedAddressType"] = @-67848L;
	context[@"errSecUnsupportedService"] = @-67849L;
	context[@"errSecInvalidTupleGroup"] = @-67850L;
	context[@"errSecInvalidBaseACLs"] = @-67851L;
	context[@"errSecInvalidTupleCredendtials"] = @-67852L;
	context[@"errSecInvalidEncoding"] = @-67853L;
	context[@"errSecInvalidValidityPeriod"] = @-67854L;
	context[@"errSecInvalidRequestor"] = @-67855L;
	context[@"errSecRequestDescriptor"] = @-67856L;
	context[@"errSecInvalidBundleInfo"] = @-67857L;
	context[@"errSecInvalidCRLIndex"] = @-67858L;
	context[@"errSecNoFieldValues"] = @-67859L;
	context[@"errSecUnsupportedFieldFormat"] = @-67860L;
	context[@"errSecUnsupportedIndexInfo"] = @-67861L;
	context[@"errSecUnsupportedLocality"] = @-67862L;
	context[@"errSecUnsupportedNumAttributes"] = @-67863L;
	context[@"errSecUnsupportedNumIndexes"] = @-67864L;
	context[@"errSecUnsupportedNumRecordTypes"] = @-67865L;
	context[@"errSecFieldSpecifiedMultiple"] = @-67866L;
	context[@"errSecIncompatibleFieldFormat"] = @-67867L;
	context[@"errSecInvalidParsingModule"] = @-67868L;
	context[@"errSecDatabaseLocked"] = @-67869L;
	context[@"errSecDatastoreIsOpen"] = @-67870L;
	context[@"errSecMissingValue"] = @-67871L;
	context[@"errSecUnsupportedQueryLimits"] = @-67872L;
	context[@"errSecUnsupportedNumSelectionPreds"] = @-67873L;
	context[@"errSecUnsupportedOperator"] = @-67874L;
	context[@"errSecInvalidDBLocation"] = @-67875L;
	context[@"errSecInvalidAccessRequest"] = @-67876L;
	context[@"errSecInvalidIndexInfo"] = @-67877L;
	context[@"errSecInvalidNewOwner"] = @-67878L;
	context[@"errSecInvalidModifyMode"] = @-67879L;
	context[@"errSecMissingRequiredExtension"] = @-67880L;
	context[@"errSecExtendedKeyUsageNotCritical"] = @-67881L;
	context[@"errSecTimestampMissing"] = @-67882L;
	context[@"errSecTimestampInvalid"] = @-67883L;
	context[@"errSecTimestampNotTrusted"] = @-67884L;
	context[@"errSecTimestampServiceNotAvailable"] = @-67885L;
	context[@"errSecTimestampBadAlg"] = @-67886L;
	context[@"errSecTimestampBadRequest"] = @-67887L;
	context[@"errSecTimestampBadDataFormat"] = @-67888L;
	context[@"errSecTimestampTimeNotAvailable"] = @-67889L;
	context[@"errSecTimestampUnacceptedPolicy"] = @-67890L;
	context[@"errSecTimestampUnacceptedExtension"] = @-67891L;
	context[@"errSecTimestampAddInfoNotAvailable"] = @-67892L;
	context[@"errSecTimestampSystemFailure"] = @-67893L;
	context[@"errSecSigningTimeMissing"] = @-67894L;
	context[@"errSecTimestampRejection"] = @-67895L;
	context[@"errSecTimestampWaiting"] = @-67896L;
	context[@"errSecTimestampRevocationWarning"] = @-67897L;
	context[@"errSecTimestampRevocationNotification"] = @-67898L;
	context[@"errSecCertificatePolicyNotAllowed"] = @-67899L;
	context[@"errSecCertificateNameNotAllowed"] = @-67900L;
	context[@"errSecCertificateValidityPeriodTooLong"] = @-67901L;
	context[@"errSecCertificateIsCA"] = @-67902L;

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
	context[@"errSSLTransportReset"] = @-9852L;
	context[@"errSSLNetworkTimeout"] = @-9853L;
	context[@"errSSLConfigurationFailed"] = @-9854L;
	context[@"errSSLUnsupportedExtension"] = @-9855L;
	context[@"errSSLUnexpectedMessage"] = @-9856L;
	context[@"errSSLDecompressFail"] = @-9857L;
	context[@"errSSLHandshakeFail"] = @-9858L;
	context[@"errSSLDecodeError"] = @-9859L;
	context[@"errSSLInappropriateFallback"] = @-9860L;
	context[@"errSSLMissingExtension"] = @-9861L;
	context[@"errSSLBadCertificateStatusResponse"] = @-9862L;
	context[@"errSSLCertificateRequired"] = @-9863L;
	context[@"errSSLUnknownPSKIdentity"] = @-9864L;
	context[@"errSSLUnrecognizedName"] = @-9865L;
	context[@"errSSLATSViolation"] = @-9880L;
	context[@"errSSLATSMinimumVersionViolation"] = @-9881L;
	context[@"errSSLATSCiphersuiteViolation"] = @-9882L;
	context[@"errSSLATSMinimumKeySizeViolation"] = @-9883L;
	context[@"errSSLATSLeafCertificateHashAlgorithmViolation"] = @-9884L;
	context[@"errSSLATSCertificateHashAlgorithmViolation"] = @-9885L;
	context[@"errSSLATSCertificateTrustViolation"] = @-9886L;
	context[@"errSSLEarlyDataRejected"] = @-9890L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Security_SecBase_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
