#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreMedia_CMSampleBuffer)
+(JSValue*) valueWithCMSampleTimingInfo: (CMSampleTimingInfo) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"value": @(s.duration.value),
		@"timescale": @(s.duration.timescale),
		@"flags": @(s.duration.flags),
		@"epoch": @(s.duration.epoch),
		@"value": @(s.presentationTimeStamp.value),
		@"timescale": @(s.presentationTimeStamp.timescale),
		@"flags": @(s.presentationTimeStamp.flags),
		@"epoch": @(s.presentationTimeStamp.epoch),
		@"value": @(s.decodeTimeStamp.value),
		@"timescale": @(s.decodeTimeStamp.timescale),
		@"flags": @(s.decodeTimeStamp.flags),
		@"epoch": @(s.decodeTimeStamp.epoch),
	} inContext: context];
}
-(CMSampleTimingInfo) toCMSampleTimingInfo {
	return (CMSampleTimingInfo) {
		[self[@"duration"] toCMTime],
		[self[@"presentationTimeStamp"] toCMTime],
		[self[@"decodeTimeStamp"] toCMTime],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCMSampleBufferError_AllocationFailed"] = @-12730L;
	context[@"kCMSampleBufferError_RequiredParameterMissing"] = @-12731L;
	context[@"kCMSampleBufferError_AlreadyHasDataBuffer"] = @-12732L;
	context[@"kCMSampleBufferError_BufferNotReady"] = @-12733L;
	context[@"kCMSampleBufferError_SampleIndexOutOfRange"] = @-12734L;
	context[@"kCMSampleBufferError_BufferHasNoSampleSizes"] = @-12735L;
	context[@"kCMSampleBufferError_BufferHasNoSampleTimingInfo"] = @-12736L;
	context[@"kCMSampleBufferError_ArrayTooSmall"] = @-12737L;
	context[@"kCMSampleBufferError_InvalidEntryCount"] = @-12738L;
	context[@"kCMSampleBufferError_CannotSubdivide"] = @-12739L;
	context[@"kCMSampleBufferError_SampleTimingInfoInvalid"] = @-12740L;
	context[@"kCMSampleBufferError_InvalidMediaTypeForOperation"] = @-12741L;
	context[@"kCMSampleBufferError_InvalidSampleData"] = @-12742L;
	context[@"kCMSampleBufferError_InvalidMediaFormat"] = @-12743L;
	context[@"kCMSampleBufferError_Invalidated"] = @-12744L;
	context[@"kCMSampleBufferError_DataFailed"] = @-16750L;
	context[@"kCMSampleBufferError_DataCanceled"] = @-16751L;

	context[@"kCMSampleBufferFlag_AudioBufferList_Assure16ByteAlignment"] = @1U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCMSampleBufferAttachmentKey_TrimDurationAtEnd;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_TrimDurationAtEnd"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_TrimDurationAtEnd inContext: context];
	p = (void*) &kCMSampleBufferLensStabilizationInfo_Off;
	if (p != NULL) context[@"kCMSampleBufferLensStabilizationInfo_Off"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferLensStabilizationInfo_Off inContext: context];
	p = (void*) &kCMSampleBufferDroppedFrameReasonInfo_CameraModeSwitch;
	if (p != NULL) context[@"kCMSampleBufferDroppedFrameReasonInfo_CameraModeSwitch"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferDroppedFrameReasonInfo_CameraModeSwitch inContext: context];
	p = (void*) &kCMSampleAttachmentKey_DisplayImmediately;
	if (p != NULL) context[@"kCMSampleAttachmentKey_DisplayImmediately"] = [JSValue valueWithObject: (__bridge id) kCMSampleAttachmentKey_DisplayImmediately inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_EndsPreviousSampleDuration;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_EndsPreviousSampleDuration"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_EndsPreviousSampleDuration inContext: context];
	p = (void*) &kCMSampleBufferConduitNotification_UpcomingOutputPTSRangeChanged;
	if (p != NULL) context[@"kCMSampleBufferConduitNotification_UpcomingOutputPTSRangeChanged"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferConduitNotification_UpcomingOutputPTSRangeChanged inContext: context];
	p = (void*) &kCMSampleAttachmentKey_EarlierDisplayTimesAllowed;
	if (p != NULL) context[@"kCMSampleAttachmentKey_EarlierDisplayTimesAllowed"] = [JSValue valueWithObject: (__bridge id) kCMSampleAttachmentKey_EarlierDisplayTimesAllowed inContext: context];
	p = (void*) &kCMSampleAttachmentKey_NotSync;
	if (p != NULL) context[@"kCMSampleAttachmentKey_NotSync"] = [JSValue valueWithObject: (__bridge id) kCMSampleAttachmentKey_NotSync inContext: context];
	p = (void*) &kCMSampleBufferNotificationParameter_OSStatus;
	if (p != NULL) context[@"kCMSampleBufferNotificationParameter_OSStatus"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferNotificationParameter_OSStatus inContext: context];
	p = (void*) &kCMSampleBufferDroppedFrameReason_Discontinuity;
	if (p != NULL) context[@"kCMSampleBufferDroppedFrameReason_Discontinuity"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferDroppedFrameReason_Discontinuity inContext: context];
	p = (void*) &kCMSampleBufferConduitNotificationParameter_ResumeTag;
	if (p != NULL) context[@"kCMSampleBufferConduitNotificationParameter_ResumeTag"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferConduitNotificationParameter_ResumeTag inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_SampleReferenceURL;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_SampleReferenceURL"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_SampleReferenceURL inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_ResumeOutput;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_ResumeOutput"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_ResumeOutput inContext: context];
	p = (void*) &kCMSampleBufferNotification_DataFailed;
	if (p != NULL) context[@"kCMSampleBufferNotification_DataFailed"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferNotification_DataFailed inContext: context];
	p = (void*) &kCMSampleBufferLensStabilizationInfo_OutOfRange;
	if (p != NULL) context[@"kCMSampleBufferLensStabilizationInfo_OutOfRange"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferLensStabilizationInfo_OutOfRange inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_DrainAfterDecoding;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_DrainAfterDecoding"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_DrainAfterDecoding inContext: context];
	p = (void*) &kCMSampleBufferConsumerNotification_BufferConsumed;
	if (p != NULL) context[@"kCMSampleBufferConsumerNotification_BufferConsumed"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferConsumerNotification_BufferConsumed inContext: context];
	p = (void*) &kCMSampleBufferDroppedFrameReason_FrameWasLate;
	if (p != NULL) context[@"kCMSampleBufferDroppedFrameReason_FrameWasLate"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferDroppedFrameReason_FrameWasLate inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_PermanentEmptyMedia;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_PermanentEmptyMedia"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_PermanentEmptyMedia inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_SampleReferenceByteOffset;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_SampleReferenceByteOffset"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_SampleReferenceByteOffset inContext: context];
	p = (void*) &kCMSampleBufferDroppedFrameReason_OutOfBuffers;
	if (p != NULL) context[@"kCMSampleBufferDroppedFrameReason_OutOfBuffers"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferDroppedFrameReason_OutOfBuffers inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_ForceKeyFrame;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_ForceKeyFrame"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_ForceKeyFrame inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_TransitionID;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_TransitionID"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_TransitionID inContext: context];
	p = (void*) &kCMSampleBufferNotification_DataBecameReady;
	if (p != NULL) context[@"kCMSampleBufferNotification_DataBecameReady"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferNotification_DataBecameReady inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_DisplayEmptyMediaImmediately;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_DisplayEmptyMediaImmediately"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_DisplayEmptyMediaImmediately inContext: context];
	p = (void*) &kCMSampleBufferConduitNotification_ResetOutput;
	if (p != NULL) context[@"kCMSampleBufferConduitNotification_ResetOutput"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferConduitNotification_ResetOutput inContext: context];
	p = (void*) &kCMSampleBufferConduitNotificationParameter_UpcomingOutputPTSRangeMayOverlapQueuedOutputPTSRange;
	if (p != NULL) context[@"kCMSampleBufferConduitNotificationParameter_UpcomingOutputPTSRangeMayOverlapQueuedOutputPTSRange"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferConduitNotificationParameter_UpcomingOutputPTSRangeMayOverlapQueuedOutputPTSRange inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_FillDiscontinuitiesWithSilence;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_FillDiscontinuitiesWithSilence"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_FillDiscontinuitiesWithSilence inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_GradualDecoderRefresh;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_GradualDecoderRefresh"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_GradualDecoderRefresh inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_EmptyMedia;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_EmptyMedia"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_EmptyMedia inContext: context];
	p = (void*) &kCMSampleBufferConduitNotification_InhibitOutputUntil;
	if (p != NULL) context[@"kCMSampleBufferConduitNotification_InhibitOutputUntil"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferConduitNotification_InhibitOutputUntil inContext: context];
	p = (void*) &kCMSampleAttachmentKey_DoNotDisplay;
	if (p != NULL) context[@"kCMSampleAttachmentKey_DoNotDisplay"] = [JSValue valueWithObject: (__bridge id) kCMSampleAttachmentKey_DoNotDisplay inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_DroppedFrameReasonInfo;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_DroppedFrameReasonInfo"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_DroppedFrameReasonInfo inContext: context];
	p = (void*) &kCMTimingInfoInvalid;
	if (p != NULL) context[@"kCMTimingInfoInvalid"] = [JSValue valueWithCMSampleTimingInfo: kCMTimingInfoInvalid inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_TrimDurationAtStart;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_TrimDurationAtStart"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_TrimDurationAtStart inContext: context];
	p = (void*) &kCMSampleAttachmentKey_PartialSync;
	if (p != NULL) context[@"kCMSampleAttachmentKey_PartialSync"] = [JSValue valueWithObject: (__bridge id) kCMSampleAttachmentKey_PartialSync inContext: context];
	p = (void*) &kCMSampleAttachmentKey_HasRedundantCoding;
	if (p != NULL) context[@"kCMSampleAttachmentKey_HasRedundantCoding"] = [JSValue valueWithObject: (__bridge id) kCMSampleAttachmentKey_HasRedundantCoding inContext: context];
	p = (void*) &kCMSampleBufferConduitNotificationParameter_MaxUpcomingOutputPTS;
	if (p != NULL) context[@"kCMSampleBufferConduitNotificationParameter_MaxUpcomingOutputPTS"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferConduitNotificationParameter_MaxUpcomingOutputPTS inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_StillImageLensStabilizationInfo;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_StillImageLensStabilizationInfo"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_StillImageLensStabilizationInfo inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_DroppedFrameReason;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_DroppedFrameReason"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_DroppedFrameReason inContext: context];
	p = (void*) &kCMSampleBufferConduitNotificationParameter_MinUpcomingOutputPTS;
	if (p != NULL) context[@"kCMSampleBufferConduitNotificationParameter_MinUpcomingOutputPTS"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferConduitNotificationParameter_MinUpcomingOutputPTS inContext: context];
	p = (void*) &kCMSampleAttachmentKey_IsDependedOnByOthers;
	if (p != NULL) context[@"kCMSampleAttachmentKey_IsDependedOnByOthers"] = [JSValue valueWithObject: (__bridge id) kCMSampleAttachmentKey_IsDependedOnByOthers inContext: context];
	p = (void*) &kCMSampleBufferLensStabilizationInfo_Unavailable;
	if (p != NULL) context[@"kCMSampleBufferLensStabilizationInfo_Unavailable"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferLensStabilizationInfo_Unavailable inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_Reverse;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_Reverse"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_Reverse inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_SpeedMultiplier;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_SpeedMultiplier"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_SpeedMultiplier inContext: context];
	p = (void*) &kCMSampleAttachmentKey_DependsOnOthers;
	if (p != NULL) context[@"kCMSampleAttachmentKey_DependsOnOthers"] = [JSValue valueWithObject: (__bridge id) kCMSampleAttachmentKey_DependsOnOthers inContext: context];
	p = (void*) &kCMSampleBufferLensStabilizationInfo_Active;
	if (p != NULL) context[@"kCMSampleBufferLensStabilizationInfo_Active"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferLensStabilizationInfo_Active inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_PostNotificationWhenConsumed;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_PostNotificationWhenConsumed"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_PostNotificationWhenConsumed inContext: context];
	p = (void*) &kCMSampleBufferAttachmentKey_ResetDecoderBeforeDecoding;
	if (p != NULL) context[@"kCMSampleBufferAttachmentKey_ResetDecoderBeforeDecoding"] = [JSValue valueWithObject: (__bridge id) kCMSampleBufferAttachmentKey_ResetDecoderBeforeDecoding inContext: context];
}
void load_CoreMedia_CMSampleBuffer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
