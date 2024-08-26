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
	context[@"AVErrorUnknown"] = @-11800L;
	context[@"AVErrorOutOfMemory"] = @-11801L;
	context[@"AVErrorSessionNotRunning"] = @-11803L;
	context[@"AVErrorDeviceAlreadyUsedByAnotherSession"] = @-11804L;
	context[@"AVErrorNoDataCaptured"] = @-11805L;
	context[@"AVErrorSessionConfigurationChanged"] = @-11806L;
	context[@"AVErrorDiskFull"] = @-11807L;
	context[@"AVErrorDeviceWasDisconnected"] = @-11808L;
	context[@"AVErrorMediaChanged"] = @-11809L;
	context[@"AVErrorMaximumDurationReached"] = @-11810L;
	context[@"AVErrorMaximumFileSizeReached"] = @-11811L;
	context[@"AVErrorMediaDiscontinuity"] = @-11812L;
	context[@"AVErrorMaximumNumberOfSamplesForFileFormatReached"] = @-11813L;
	context[@"AVErrorDeviceNotConnected"] = @-11814L;
	context[@"AVErrorDeviceInUseByAnotherApplication"] = @-11815L;
	context[@"AVErrorDeviceLockedForConfigurationByAnotherProcess"] = @-11817L;
	context[@"AVErrorSessionWasInterrupted"] = @-11818L;
	context[@"AVErrorMediaServicesWereReset"] = @-11819L;
	context[@"AVErrorExportFailed"] = @-11820L;
	context[@"AVErrorDecodeFailed"] = @-11821L;
	context[@"AVErrorInvalidSourceMedia"] = @-11822L;
	context[@"AVErrorFileAlreadyExists"] = @-11823L;
	context[@"AVErrorCompositionTrackSegmentsNotContiguous"] = @-11824L;
	context[@"AVErrorInvalidCompositionTrackSegmentDuration"] = @-11825L;
	context[@"AVErrorInvalidCompositionTrackSegmentSourceStartTime"] = @-11826L;
	context[@"AVErrorInvalidCompositionTrackSegmentSourceDuration"] = @-11827L;
	context[@"AVErrorFileFormatNotRecognized"] = @-11828L;
	context[@"AVErrorFileFailedToParse"] = @-11829L;
	context[@"AVErrorMaximumStillImageCaptureRequestsExceeded"] = @-11830L;
	context[@"AVErrorContentIsProtected"] = @-11831L;
	context[@"AVErrorNoImageAtTime"] = @-11832L;
	context[@"AVErrorDecoderNotFound"] = @-11833L;
	context[@"AVErrorEncoderNotFound"] = @-11834L;
	context[@"AVErrorContentIsNotAuthorized"] = @-11835L;
	context[@"AVErrorApplicationIsNotAuthorized"] = @-11836L;
	context[@"AVErrorDeviceIsNotAvailableInBackground"] = @-11837L;
	context[@"AVErrorOperationNotSupportedForAsset"] = @-11838L;
	context[@"AVErrorDecoderTemporarilyUnavailable"] = @-11839L;
	context[@"AVErrorEncoderTemporarilyUnavailable"] = @-11840L;
	context[@"AVErrorInvalidVideoComposition"] = @-11841L;
	context[@"AVErrorReferenceForbiddenByReferencePolicy"] = @-11842L;
	context[@"AVErrorInvalidOutputURLPathExtension"] = @-11843L;
	context[@"AVErrorScreenCaptureFailed"] = @-11844L;
	context[@"AVErrorDisplayWasDisabled"] = @-11845L;
	context[@"AVErrorTorchLevelUnavailable"] = @-11846L;
	context[@"AVErrorOperationInterrupted"] = @-11847L;
	context[@"AVErrorIncompatibleAsset"] = @-11848L;
	context[@"AVErrorFailedToLoadMediaData"] = @-11849L;
	context[@"AVErrorServerIncorrectlyConfigured"] = @-11850L;
	context[@"AVErrorApplicationIsNotAuthorizedToUseDevice"] = @-11852L;
	context[@"AVErrorFailedToParse"] = @-11853L;
	context[@"AVErrorFileTypeDoesNotSupportSampleReferences"] = @-11854L;
	context[@"AVErrorUndecodableMediaData"] = @-11855L;
	context[@"AVErrorAirPlayControllerRequiresInternet"] = @-11856L;
	context[@"AVErrorAirPlayReceiverRequiresInternet"] = @-11857L;
	context[@"AVErrorVideoCompositorFailed"] = @-11858L;
	context[@"AVErrorRecordingAlreadyInProgress"] = @-11859L;
	context[@"AVErrorUnsupportedOutputSettings"] = @-11861L;
	context[@"AVErrorOperationNotAllowed"] = @-11862L;
	context[@"AVErrorContentIsUnavailable"] = @-11863L;
	context[@"AVErrorFormatUnsupported"] = @-11864L;
	context[@"AVErrorMalformedDepth"] = @-11865L;
	context[@"AVErrorContentNotUpdated"] = @-11866L;
	context[@"AVErrorNoLongerPlayable"] = @-11867L;
	context[@"AVErrorNoCompatibleAlternatesForExternalDisplay"] = @-11868L;
	context[@"AVErrorNoSourceTrack"] = @-11869L;
	context[@"AVErrorExternalPlaybackNotSupportedForAsset"] = @-11870L;
	context[@"AVErrorOperationNotSupportedForPreset"] = @-11871L;
	context[@"AVErrorSessionHardwareCostOverage"] = @-11872L;
	context[@"AVErrorUnsupportedDeviceActiveFormat"] = @-11873L;
	context[@"AVErrorIncorrectlyConfigured"] = @-11875L;
	context[@"AVErrorSegmentStartedWithNonSyncSample"] = @-11876L;
	context[@"AVErrorRosettaNotInstalled"] = @-11877L;

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
