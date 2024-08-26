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
	context[@"AVErrorUnknown"] = @-11800;
	context[@"AVErrorOutOfMemory"] = @-11801;
	context[@"AVErrorSessionNotRunning"] = @-11803;
	context[@"AVErrorDeviceAlreadyUsedByAnotherSession"] = @-11804;
	context[@"AVErrorNoDataCaptured"] = @-11805;
	context[@"AVErrorSessionConfigurationChanged"] = @-11806;
	context[@"AVErrorDiskFull"] = @-11807;
	context[@"AVErrorDeviceWasDisconnected"] = @-11808;
	context[@"AVErrorMediaChanged"] = @-11809;
	context[@"AVErrorMaximumDurationReached"] = @-11810;
	context[@"AVErrorMaximumFileSizeReached"] = @-11811;
	context[@"AVErrorMediaDiscontinuity"] = @-11812;
	context[@"AVErrorMaximumNumberOfSamplesForFileFormatReached"] = @-11813;
	context[@"AVErrorDeviceNotConnected"] = @-11814;
	context[@"AVErrorDeviceInUseByAnotherApplication"] = @-11815;
	context[@"AVErrorDeviceLockedForConfigurationByAnotherProcess"] = @-11817;
	context[@"AVErrorSessionWasInterrupted"] = @-11818;
	context[@"AVErrorMediaServicesWereReset"] = @-11819;
	context[@"AVErrorExportFailed"] = @-11820;
	context[@"AVErrorDecodeFailed"] = @-11821;
	context[@"AVErrorInvalidSourceMedia"] = @-11822;
	context[@"AVErrorFileAlreadyExists"] = @-11823;
	context[@"AVErrorCompositionTrackSegmentsNotContiguous"] = @-11824;
	context[@"AVErrorInvalidCompositionTrackSegmentDuration"] = @-11825;
	context[@"AVErrorInvalidCompositionTrackSegmentSourceStartTime"] = @-11826;
	context[@"AVErrorInvalidCompositionTrackSegmentSourceDuration"] = @-11827;
	context[@"AVErrorFileFormatNotRecognized"] = @-11828;
	context[@"AVErrorFileFailedToParse"] = @-11829;
	context[@"AVErrorMaximumStillImageCaptureRequestsExceeded"] = @-11830;
	context[@"AVErrorContentIsProtected"] = @-11831;
	context[@"AVErrorNoImageAtTime"] = @-11832;
	context[@"AVErrorDecoderNotFound"] = @-11833;
	context[@"AVErrorEncoderNotFound"] = @-11834;
	context[@"AVErrorContentIsNotAuthorized"] = @-11835;
	context[@"AVErrorApplicationIsNotAuthorized"] = @-11836;
	context[@"AVErrorDeviceIsNotAvailableInBackground"] = @-11837;
	context[@"AVErrorOperationNotSupportedForAsset"] = @-11838;
	context[@"AVErrorDecoderTemporarilyUnavailable"] = @-11839;
	context[@"AVErrorEncoderTemporarilyUnavailable"] = @-11840;
	context[@"AVErrorInvalidVideoComposition"] = @-11841;
	context[@"AVErrorReferenceForbiddenByReferencePolicy"] = @-11842;
	context[@"AVErrorInvalidOutputURLPathExtension"] = @-11843;
	context[@"AVErrorScreenCaptureFailed"] = @-11844;
	context[@"AVErrorDisplayWasDisabled"] = @-11845;
	context[@"AVErrorTorchLevelUnavailable"] = @-11846;
	context[@"AVErrorOperationInterrupted"] = @-11847;
	context[@"AVErrorIncompatibleAsset"] = @-11848;
	context[@"AVErrorFailedToLoadMediaData"] = @-11849;
	context[@"AVErrorServerIncorrectlyConfigured"] = @-11850;
	context[@"AVErrorApplicationIsNotAuthorizedToUseDevice"] = @-11852;
	context[@"AVErrorFailedToParse"] = @-11853;
	context[@"AVErrorFileTypeDoesNotSupportSampleReferences"] = @-11854;
	context[@"AVErrorUndecodableMediaData"] = @-11855;
	context[@"AVErrorAirPlayControllerRequiresInternet"] = @-11856;
	context[@"AVErrorAirPlayReceiverRequiresInternet"] = @-11857;
	context[@"AVErrorVideoCompositorFailed"] = @-11858;
	context[@"AVErrorRecordingAlreadyInProgress"] = @-11859;
	context[@"AVErrorUnsupportedOutputSettings"] = @-11861;
	context[@"AVErrorOperationNotAllowed"] = @-11862;
	context[@"AVErrorContentIsUnavailable"] = @-11863;
	context[@"AVErrorFormatUnsupported"] = @-11864;
	context[@"AVErrorMalformedDepth"] = @-11865;
	context[@"AVErrorContentNotUpdated"] = @-11866;
	context[@"AVErrorNoLongerPlayable"] = @-11867;
	context[@"AVErrorNoCompatibleAlternatesForExternalDisplay"] = @-11868;
	context[@"AVErrorNoSourceTrack"] = @-11869;
	context[@"AVErrorExternalPlaybackNotSupportedForAsset"] = @-11870;
	context[@"AVErrorOperationNotSupportedForPreset"] = @-11871;
	context[@"AVErrorSessionHardwareCostOverage"] = @-11872;
	context[@"AVErrorUnsupportedDeviceActiveFormat"] = @-11873;
	context[@"AVErrorIncorrectlyConfigured"] = @-11875;
	context[@"AVErrorSegmentStartedWithNonSyncSample"] = @-11876;
	context[@"AVErrorRosettaNotInstalled"] = @-11877;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVErrorTimeKey;
	if (p != NULL) context[@"AVErrorTimeKey"] = AVErrorTimeKey;
	p = (void*) &AVErrorDeviceKey;
	if (p != NULL) context[@"AVErrorDeviceKey"] = AVErrorDeviceKey;
	p = (void*) &AVErrorPersistentTrackIDKey;
	if (p != NULL) context[@"AVErrorPersistentTrackIDKey"] = AVErrorPersistentTrackIDKey;
	p = (void*) &AVErrorMediaTypeKey;
	if (p != NULL) context[@"AVErrorMediaTypeKey"] = AVErrorMediaTypeKey;
	p = (void*) &AVErrorPresentationTimeStampKey;
	if (p != NULL) context[@"AVErrorPresentationTimeStampKey"] = AVErrorPresentationTimeStampKey;
	p = (void*) &AVErrorFileTypeKey;
	if (p != NULL) context[@"AVErrorFileTypeKey"] = AVErrorFileTypeKey;
	p = (void*) &AVFoundationErrorDomain;
	if (p != NULL) context[@"AVFoundationErrorDomain"] = AVFoundationErrorDomain;
	p = (void*) &AVErrorFileSizeKey;
	if (p != NULL) context[@"AVErrorFileSizeKey"] = AVErrorFileSizeKey;
	p = (void*) &AVErrorPIDKey;
	if (p != NULL) context[@"AVErrorPIDKey"] = AVErrorPIDKey;
	p = (void*) &AVErrorRecordingSuccessfullyFinishedKey;
	if (p != NULL) context[@"AVErrorRecordingSuccessfullyFinishedKey"] = AVErrorRecordingSuccessfullyFinishedKey;
	p = (void*) &AVErrorMediaSubTypeKey;
	if (p != NULL) context[@"AVErrorMediaSubTypeKey"] = AVErrorMediaSubTypeKey;
}
void load_AVFoundation_AVError_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
