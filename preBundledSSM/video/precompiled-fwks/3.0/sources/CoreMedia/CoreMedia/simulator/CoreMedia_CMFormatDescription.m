#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreMedia_CMFormatDescription)
+(JSValue*) valueWithCMVideoDimensions: (CMVideoDimensions) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"width": @(s.width),
		@"height": @(s.height),
	} inContext: context];
}
-(CMVideoDimensions) toCMVideoDimensions {
	return (CMVideoDimensions) {
		(int32_t) [self[@"width"] toInt32],
		(int32_t) [self[@"height"] toInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"CMFormatDescriptionGetExtension"] = ^id(id arg0, id arg1) {
		return CMFormatDescriptionGetExtension(arg0, arg1);
	};
	context[@"CMFormatDescriptionGetTypeID"] = ^CFTypeID() {
		return CMFormatDescriptionGetTypeID();
	};
	context[@"CMMetadataFormatDescriptionGetIdentifiers"] = ^id(id arg0) {
		return CMMetadataFormatDescriptionGetIdentifiers(arg0);
	};
	context[@"CMFormatDescriptionGetMediaSubType"] = ^FourCharCode(id arg0) {
		return CMFormatDescriptionGetMediaSubType(arg0);
	};
	context[@"CMVideoFormatDescriptionGetCleanAperture"] = ^CGRect(id arg0, Boolean arg1) {
		return CMVideoFormatDescriptionGetCleanAperture(arg0, arg1);
	};
	context[@"CMMetadataFormatDescriptionGetKeyWithLocalID"] = ^id(id arg0, OSType arg1) {
		return CMMetadataFormatDescriptionGetKeyWithLocalID(arg0, arg1);
	};
	context[@"CMFormatDescriptionEqual"] = ^Boolean(id arg0, id arg1) {
		return CMFormatDescriptionEqual(arg0, arg1);
	};
	context[@"CMTimeCodeFormatDescriptionGetFrameDuration"] = ^CMTime(id arg0) {
		return CMTimeCodeFormatDescriptionGetFrameDuration(arg0);
	};
	context[@"CMFormatDescriptionGetMediaType"] = ^CMMediaType(id arg0) {
		return CMFormatDescriptionGetMediaType(arg0);
	};
	context[@"CMVideoFormatDescriptionGetPresentationDimensions"] = ^CGSize(id arg0, Boolean arg1, Boolean arg2) {
		return CMVideoFormatDescriptionGetPresentationDimensions(arg0, arg1, arg2);
	};
	context[@"CMFormatDescriptionGetExtensions"] = ^id(id arg0) {
		return CMFormatDescriptionGetExtensions(arg0);
	};
	context[@"CMFormatDescriptionEqualIgnoringExtensionKeys"] = ^Boolean(id arg0, id arg1, id arg2, id arg3) {
		return CMFormatDescriptionEqualIgnoringExtensionKeys(arg0, arg1, arg2, arg3);
	};
	context[@"CMTimeCodeFormatDescriptionGetFrameQuanta"] = ^uint32_t(id arg0) {
		return CMTimeCodeFormatDescriptionGetFrameQuanta(arg0);
	};
	context[@"CMVideoFormatDescriptionMatchesImageBuffer"] = ^Boolean(id arg0, id arg1) {
		return CMVideoFormatDescriptionMatchesImageBuffer(arg0, arg1);
	};
	context[@"CMTimeCodeFormatDescriptionGetTimeCodeFlags"] = ^uint32_t(id arg0) {
		return CMTimeCodeFormatDescriptionGetTimeCodeFlags(arg0);
	};
	context[@"CMVideoFormatDescriptionGetExtensionKeysCommonWithImageBuffers"] = ^id() {
		return CMVideoFormatDescriptionGetExtensionKeysCommonWithImageBuffers();
	};
	context[@"CMVideoFormatDescriptionGetDimensions"] = ^CMVideoDimensions(id arg0) {
		return CMVideoFormatDescriptionGetDimensions(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCMFormatDescriptionError_InvalidParameter"] = @-12710;
	context[@"kCMFormatDescriptionError_AllocationFailed"] = @-12711;
	context[@"kCMFormatDescriptionError_ValueNotAvailable"] = @-12718;

	context[@"kCMMediaType_Video"] = @1986618469U;
	context[@"kCMMediaType_Audio"] = @1936684398U;
	context[@"kCMMediaType_Muxed"] = @1836415096U;
	context[@"kCMMediaType_Text"] = @1952807028U;
	context[@"kCMMediaType_ClosedCaption"] = @1668047728U;
	context[@"kCMMediaType_Subtitle"] = @1935832172U;
	context[@"kCMMediaType_TimeCode"] = @1953325924U;
	context[@"kCMMediaType_Metadata"] = @1835365473U;

	context[@"kCMAudioCodecType_AAC_LCProtected"] = @1885430115U;
	context[@"kCMAudioCodecType_AAC_AudibleProtected"] = @1633771875U;

	context[@"kCMAudioFormatDescriptionMask_StreamBasicDescription"] = @1U;
	context[@"kCMAudioFormatDescriptionMask_MagicCookie"] = @2U;
	context[@"kCMAudioFormatDescriptionMask_ChannelLayout"] = @4U;
	context[@"kCMAudioFormatDescriptionMask_Extensions"] = @8U;
	context[@"kCMAudioFormatDescriptionMask_All"] = @15U;

	context[@"kCMPixelFormat_32ARGB"] = @32U;
	context[@"kCMPixelFormat_32BGRA"] = @1111970369U;
	context[@"kCMPixelFormat_24RGB"] = @24U;
	context[@"kCMPixelFormat_16BE555"] = @16U;
	context[@"kCMPixelFormat_16BE565"] = @1110783541U;
	context[@"kCMPixelFormat_16LE555"] = @1278555445U;
	context[@"kCMPixelFormat_16LE565"] = @1278555701U;
	context[@"kCMPixelFormat_16LE5551"] = @892679473U;
	context[@"kCMPixelFormat_422YpCbCr8"] = @846624121U;
	context[@"kCMPixelFormat_422YpCbCr8_yuvs"] = @2037741171U;
	context[@"kCMPixelFormat_444YpCbCr8"] = @1983066168U;
	context[@"kCMPixelFormat_4444YpCbCrA8"] = @1983131704U;
	context[@"kCMPixelFormat_422YpCbCr16"] = @1983000886U;
	context[@"kCMPixelFormat_422YpCbCr10"] = @1983000880U;
	context[@"kCMPixelFormat_444YpCbCr10"] = @1983131952U;
	context[@"kCMPixelFormat_8IndexedGray_WhiteIsZero"] = @40U;

	context[@"kCMVideoCodecType_422YpCbCr8"] = @846624121U;
	context[@"kCMVideoCodecType_Animation"] = @1919706400U;
	context[@"kCMVideoCodecType_Cinepak"] = @1668704612U;
	context[@"kCMVideoCodecType_JPEG"] = @1785750887U;
	context[@"kCMVideoCodecType_JPEG_OpenDML"] = @1684890161U;
	context[@"kCMVideoCodecType_SorensonVideo"] = @1398165809U;
	context[@"kCMVideoCodecType_SorensonVideo3"] = @1398165811U;
	context[@"kCMVideoCodecType_H263"] = @1748121139U;
	context[@"kCMVideoCodecType_H264"] = @1635148593U;
	context[@"kCMVideoCodecType_HEVC"] = @1752589105U;
	context[@"kCMVideoCodecType_HEVCWithAlpha"] = @1836415073U;
	context[@"kCMVideoCodecType_MPEG4Video"] = @1836070006U;
	context[@"kCMVideoCodecType_MPEG2Video"] = @1836069494U;
	context[@"kCMVideoCodecType_MPEG1Video"] = @1836069238U;
	context[@"kCMVideoCodecType_VP9"] = @1987063865U;
	context[@"kCMVideoCodecType_DVCNTSC"] = @1685480224U;
	context[@"kCMVideoCodecType_DVCPAL"] = @1685480304U;
	context[@"kCMVideoCodecType_DVCProPAL"] = @1685483632U;
	context[@"kCMVideoCodecType_DVCPro50NTSC"] = @1685468526U;
	context[@"kCMVideoCodecType_DVCPro50PAL"] = @1685468528U;
	context[@"kCMVideoCodecType_DVCPROHD720p60"] = @1685481584U;
	context[@"kCMVideoCodecType_DVCPROHD720p50"] = @1685481585U;
	context[@"kCMVideoCodecType_DVCPROHD1080i60"] = @1685481526U;
	context[@"kCMVideoCodecType_DVCPROHD1080i50"] = @1685481525U;
	context[@"kCMVideoCodecType_DVCPROHD1080p30"] = @1685481523U;
	context[@"kCMVideoCodecType_DVCPROHD1080p25"] = @1685481522U;
	context[@"kCMVideoCodecType_AppleProRes4444XQ"] = @1634743416U;
	context[@"kCMVideoCodecType_AppleProRes4444"] = @1634743400U;
	context[@"kCMVideoCodecType_AppleProRes422HQ"] = @1634755432U;
	context[@"kCMVideoCodecType_AppleProRes422"] = @1634755438U;
	context[@"kCMVideoCodecType_AppleProRes422LT"] = @1634755443U;
	context[@"kCMVideoCodecType_AppleProRes422Proxy"] = @1634755439U;
	context[@"kCMVideoCodecType_AppleProResRAW"] = @1634759278U;
	context[@"kCMVideoCodecType_AppleProResRAWHQ"] = @1634759272U;

	context[@"kCMMPEG2VideoProfile_HDV_720p30"] = @1751414321;
	context[@"kCMMPEG2VideoProfile_HDV_1080i60"] = @1751414322;
	context[@"kCMMPEG2VideoProfile_HDV_1080i50"] = @1751414323;
	context[@"kCMMPEG2VideoProfile_HDV_720p24"] = @1751414324;
	context[@"kCMMPEG2VideoProfile_HDV_720p25"] = @1751414325;
	context[@"kCMMPEG2VideoProfile_HDV_1080p24"] = @1751414326;
	context[@"kCMMPEG2VideoProfile_HDV_1080p25"] = @1751414327;
	context[@"kCMMPEG2VideoProfile_HDV_1080p30"] = @1751414328;
	context[@"kCMMPEG2VideoProfile_HDV_720p60"] = @1751414329;
	context[@"kCMMPEG2VideoProfile_HDV_720p50"] = @1751414369;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD_1080i60_VBR35"] = @2019849778;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD_1080i50_VBR35"] = @2019849779;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD_1080p24_VBR35"] = @2019849782;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD_1080p25_VBR35"] = @2019849783;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD_1080p30_VBR35"] = @2019849784;
	context[@"kCMMPEG2VideoProfile_XDCAM_EX_720p24_VBR35"] = @2019849780;
	context[@"kCMMPEG2VideoProfile_XDCAM_EX_720p25_VBR35"] = @2019849781;
	context[@"kCMMPEG2VideoProfile_XDCAM_EX_720p30_VBR35"] = @2019849777;
	context[@"kCMMPEG2VideoProfile_XDCAM_EX_720p50_VBR35"] = @2019849825;
	context[@"kCMMPEG2VideoProfile_XDCAM_EX_720p60_VBR35"] = @2019849785;
	context[@"kCMMPEG2VideoProfile_XDCAM_EX_1080i60_VBR35"] = @2019849826;
	context[@"kCMMPEG2VideoProfile_XDCAM_EX_1080i50_VBR35"] = @2019849827;
	context[@"kCMMPEG2VideoProfile_XDCAM_EX_1080p24_VBR35"] = @2019849828;
	context[@"kCMMPEG2VideoProfile_XDCAM_EX_1080p25_VBR35"] = @2019849829;
	context[@"kCMMPEG2VideoProfile_XDCAM_EX_1080p30_VBR35"] = @2019849830;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD422_720p50_CBR50"] = @2019833185;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD422_720p60_CBR50"] = @2019833145;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD422_1080i60_CBR50"] = @2019833186;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD422_1080i50_CBR50"] = @2019833187;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD422_1080p24_CBR50"] = @2019833188;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD422_1080p25_CBR50"] = @2019833189;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD422_1080p30_CBR50"] = @2019833190;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD_540p"] = @2019846244;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD422_540p"] = @2019846194;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD422_720p24_CBR50"] = @2019833140;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD422_720p25_CBR50"] = @2019833141;
	context[@"kCMMPEG2VideoProfile_XDCAM_HD422_720p30_CBR50"] = @2019833137;
	context[@"kCMMPEG2VideoProfile_XF"] = @2019981873;

	context[@"kCMMuxedStreamType_MPEG1System"] = @1836069235U;
	context[@"kCMMuxedStreamType_MPEG2Transport"] = @1836069492U;
	context[@"kCMMuxedStreamType_MPEG2Program"] = @1836069488U;
	context[@"kCMMuxedStreamType_DV"] = @1685463072U;

	context[@"kCMClosedCaptionFormatType_CEA608"] = @1664495672U;
	context[@"kCMClosedCaptionFormatType_CEA708"] = @1664561208U;
	context[@"kCMClosedCaptionFormatType_ATSC"] = @1635017571U;

	context[@"kCMTextFormatType_QTText"] = @1952807028U;
	context[@"kCMTextFormatType_3GText"] = @1954034535U;

	context[@"kCMTextDisplayFlag_scrollIn"] = @32U;
	context[@"kCMTextDisplayFlag_scrollOut"] = @64U;
	context[@"kCMTextDisplayFlag_scrollDirectionMask"] = @384U;
	context[@"kCMTextDisplayFlag_scrollDirection_bottomToTop"] = @0U;
	context[@"kCMTextDisplayFlag_scrollDirection_rightToLeft"] = @128U;
	context[@"kCMTextDisplayFlag_scrollDirection_topToBottom"] = @256U;
	context[@"kCMTextDisplayFlag_scrollDirection_leftToRight"] = @384U;
	context[@"kCMTextDisplayFlag_continuousKaraoke"] = @2048U;
	context[@"kCMTextDisplayFlag_writeTextVertically"] = @131072U;
	context[@"kCMTextDisplayFlag_fillTextRegion"] = @262144U;
	context[@"kCMTextDisplayFlag_obeySubtitleFormatting"] = @536870912U;
	context[@"kCMTextDisplayFlag_forcedSubtitlesPresent"] = @1073741824U;
	context[@"kCMTextDisplayFlag_allSubtitlesForced"] = @-2147483648U;

	context[@"kCMTextJustification_left_top"] = @0;
	context[@"kCMTextJustification_centered"] = @1;
	context[@"kCMTextJustification_bottom_right"] = @-1;

	context[@"kCMSubtitleFormatType_3GText"] = @1954034535U;
	context[@"kCMSubtitleFormatType_WebVTT"] = @2004251764U;

	context[@"kCMTimeCodeFormatType_TimeCode32"] = @1953325924U;
	context[@"kCMTimeCodeFormatType_TimeCode64"] = @1952658996U;
	context[@"kCMTimeCodeFormatType_Counter32"] = @1668166450U;
	context[@"kCMTimeCodeFormatType_Counter64"] = @1668167220U;

	context[@"kCMTimeCodeFlag_DropFrame"] = @1U;
	context[@"kCMTimeCodeFlag_24HourMax"] = @2U;
	context[@"kCMTimeCodeFlag_NegTimesOK"] = @4U;

	context[@"kCMMetadataFormatType_ICY"] = @1768126752U;
	context[@"kCMMetadataFormatType_ID3"] = @1768174368U;
	context[@"kCMMetadataFormatType_Boxed"] = @1835360888U;
	context[@"kCMMetadataFormatType_EMSG"] = @1701671783U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCMTextFormatDescriptionColor_Alpha;
	if (p != NULL) context[@"kCMTextFormatDescriptionColor_Alpha"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionColor_Alpha inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionMetadataSpecificationKey_SetupData;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionMetadataSpecificationKey_SetupData"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionMetadataSpecificationKey_SetupData inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_PixelAspectRatio;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_PixelAspectRatio"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_PixelAspectRatio inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionKey_LocalID;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionKey_LocalID"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionKey_LocalID inContext: context];
	p = (void*) &kCMTextFormatDescriptionStyle_Height;
	if (p != NULL) context[@"kCMTextFormatDescriptionStyle_Height"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionStyle_Height inContext: context];
	p = (void*) &kCMFormatDescriptionColorPrimaries_P3_D65;
	if (p != NULL) context[@"kCMFormatDescriptionColorPrimaries_P3_D65"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionColorPrimaries_P3_D65 inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_TransferFunction;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_TransferFunction"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_TransferFunction inContext: context];
	p = (void*) &kCMFormatDescriptionColorPrimaries_ITU_R_709_2;
	if (p != NULL) context[@"kCMFormatDescriptionColorPrimaries_ITU_R_709_2"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionColorPrimaries_ITU_R_709_2 inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_FormatName;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_FormatName"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_FormatName inContext: context];
	p = (void*) &kCMFormatDescriptionYCbCrMatrix_ITU_R_2020;
	if (p != NULL) context[@"kCMFormatDescriptionYCbCrMatrix_ITU_R_2020"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionYCbCrMatrix_ITU_R_2020 inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionMetadataSpecificationKey_Identifier;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionMetadataSpecificationKey_Identifier"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionMetadataSpecificationKey_Identifier inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_ChromaLocationTopField;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_ChromaLocationTopField"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_ChromaLocationTopField inContext: context];
	p = (void*) &kCMFormatDescriptionChromaLocation_BottomLeft;
	if (p != NULL) context[@"kCMFormatDescriptionChromaLocation_BottomLeft"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionChromaLocation_BottomLeft inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_VerbatimSampleDescription;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_VerbatimSampleDescription"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_VerbatimSampleDescription inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionMetadataSpecificationKey_ExtendedLanguageTag;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionMetadataSpecificationKey_ExtendedLanguageTag"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionMetadataSpecificationKey_ExtendedLanguageTag inContext: context];
	p = (void*) &kCMFormatDescriptionColorPrimaries_EBU_3213;
	if (p != NULL) context[@"kCMFormatDescriptionColorPrimaries_EBU_3213"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionColorPrimaries_EBU_3213 inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionKey_DataTypeNamespace;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionKey_DataTypeNamespace"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionKey_DataTypeNamespace inContext: context];
	p = (void*) &kCMFormatDescriptionTransferFunction_UseGamma;
	if (p != NULL) context[@"kCMFormatDescriptionTransferFunction_UseGamma"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionTransferFunction_UseGamma inContext: context];
	p = (void*) &kCMFormatDescriptionAlphaChannelMode_StraightAlpha;
	if (p != NULL) context[@"kCMFormatDescriptionAlphaChannelMode_StraightAlpha"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionAlphaChannelMode_StraightAlpha inContext: context];
	p = (void*) &kCMTimeCodeFormatDescriptionKey_LangCode;
	if (p != NULL) context[@"kCMTimeCodeFormatDescriptionKey_LangCode"] = [JSValue valueWithObject: (__bridge id) kCMTimeCodeFormatDescriptionKey_LangCode inContext: context];
	p = (void*) &kCMFormatDescriptionKey_CleanApertureVerticalOffsetRational;
	if (p != NULL) context[@"kCMFormatDescriptionKey_CleanApertureVerticalOffsetRational"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_CleanApertureVerticalOffsetRational inContext: context];
	p = (void*) &kCMTextFormatDescriptionStyle_FontSize;
	if (p != NULL) context[@"kCMTextFormatDescriptionStyle_FontSize"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionStyle_FontSize inContext: context];
	p = (void*) &kCMFormatDescriptionAlphaChannelMode_PremultipliedAlpha;
	if (p != NULL) context[@"kCMFormatDescriptionAlphaChannelMode_PremultipliedAlpha"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionAlphaChannelMode_PremultipliedAlpha inContext: context];
	p = (void*) &kCMFormatDescriptionFieldDetail_SpatialFirstLineLate;
	if (p != NULL) context[@"kCMFormatDescriptionFieldDetail_SpatialFirstLineLate"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionFieldDetail_SpatialFirstLineLate inContext: context];
	p = (void*) &kCMFormatDescriptionFieldDetail_TemporalBottomFirst;
	if (p != NULL) context[@"kCMFormatDescriptionFieldDetail_TemporalBottomFirst"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionFieldDetail_TemporalBottomFirst inContext: context];
	p = (void*) &kCMFormatDescriptionTransferFunction_SMPTE_ST_2084_PQ;
	if (p != NULL) context[@"kCMFormatDescriptionTransferFunction_SMPTE_ST_2084_PQ"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionTransferFunction_SMPTE_ST_2084_PQ inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_GammaLevel;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_GammaLevel"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_GammaLevel inContext: context];
	p = (void*) &kCMFormatDescriptionTransferFunction_Linear;
	if (p != NULL) context[@"kCMFormatDescriptionTransferFunction_Linear"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionTransferFunction_Linear inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_FontTable;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_FontTable"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_FontTable inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_ContainsAlphaChannel;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_ContainsAlphaChannel"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_ContainsAlphaChannel inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_Depth;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_Depth"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_Depth inContext: context];
	p = (void*) &kCMTextFormatDescriptionColor_Green;
	if (p != NULL) context[@"kCMTextFormatDescriptionColor_Green"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionColor_Green inContext: context];
	p = (void*) &kCMFormatDescriptionKey_CleanApertureVerticalOffset;
	if (p != NULL) context[@"kCMFormatDescriptionKey_CleanApertureVerticalOffset"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_CleanApertureVerticalOffset inContext: context];
	p = (void*) &kCMFormatDescriptionChromaLocation_Left;
	if (p != NULL) context[@"kCMFormatDescriptionChromaLocation_Left"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionChromaLocation_Left inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_BytesPerRow;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_BytesPerRow"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_BytesPerRow inContext: context];
	p = (void*) &kCMTimeCodeFormatDescriptionKey_Value;
	if (p != NULL) context[@"kCMTimeCodeFormatDescriptionKey_Value"] = [JSValue valueWithObject: (__bridge id) kCMTimeCodeFormatDescriptionKey_Value inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_ContentLightLevelInfo;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_ContentLightLevelInfo"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_ContentLightLevelInfo inContext: context];
	p = (void*) &kCMTextFormatDescriptionColor_Red;
	if (p != NULL) context[@"kCMTextFormatDescriptionColor_Red"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionColor_Red inContext: context];
	p = (void*) &kCMFormatDescriptionTransferFunction_ITU_R_2100_HLG;
	if (p != NULL) context[@"kCMFormatDescriptionTransferFunction_ITU_R_2100_HLG"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionTransferFunction_ITU_R_2100_HLG inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_Vendor;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_Vendor"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_Vendor inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_FieldDetail;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_FieldDetail"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_FieldDetail inContext: context];
	p = (void*) &kCMFormatDescriptionChromaLocation_TopLeft;
	if (p != NULL) context[@"kCMFormatDescriptionChromaLocation_TopLeft"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionChromaLocation_TopLeft inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_HorizontalJustification;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_HorizontalJustification"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_HorizontalJustification inContext: context];
	p = (void*) &kCMFormatDescriptionColorPrimaries_SMPTE_C;
	if (p != NULL) context[@"kCMFormatDescriptionColorPrimaries_SMPTE_C"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionColorPrimaries_SMPTE_C inContext: context];
	p = (void*) &kCMTextFormatDescriptionRect_Left;
	if (p != NULL) context[@"kCMTextFormatDescriptionRect_Left"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionRect_Left inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionKey_ConformingDataTypes;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionKey_ConformingDataTypes"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionKey_ConformingDataTypes inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_DefaultFontName;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_DefaultFontName"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_DefaultFontName inContext: context];
	p = (void*) &kCMFormatDescriptionColorPrimaries_ITU_R_2020;
	if (p != NULL) context[@"kCMFormatDescriptionColorPrimaries_ITU_R_2020"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionColorPrimaries_ITU_R_2020 inContext: context];
	p = (void*) &kCMTextFormatDescriptionRect_Right;
	if (p != NULL) context[@"kCMTextFormatDescriptionRect_Right"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionRect_Right inContext: context];
	p = (void*) &kCMTimeCodeFormatDescriptionExtension_SourceReferenceName;
	if (p != NULL) context[@"kCMTimeCodeFormatDescriptionExtension_SourceReferenceName"] = [JSValue valueWithObject: (__bridge id) kCMTimeCodeFormatDescriptionExtension_SourceReferenceName inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_Version;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_Version"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_Version inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_BackgroundColor;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_BackgroundColor"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_BackgroundColor inContext: context];
	p = (void*) &kCMFormatDescriptionKey_PixelAspectRatioVerticalSpacing;
	if (p != NULL) context[@"kCMFormatDescriptionKey_PixelAspectRatioVerticalSpacing"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_PixelAspectRatioVerticalSpacing inContext: context];
	p = (void*) &kCMFormatDescriptionKey_CleanApertureHorizontalOffset;
	if (p != NULL) context[@"kCMFormatDescriptionKey_CleanApertureHorizontalOffset"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_CleanApertureHorizontalOffset inContext: context];
	p = (void*) &kCMTextFormatDescriptionStyle_Font;
	if (p != NULL) context[@"kCMTextFormatDescriptionStyle_Font"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionStyle_Font inContext: context];
	p = (void*) &kCMTextFormatDescriptionColor_Blue;
	if (p != NULL) context[@"kCMTextFormatDescriptionColor_Blue"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionColor_Blue inContext: context];
	p = (void*) &kCMFormatDescriptionExtensionKey_MetadataKeyTable;
	if (p != NULL) context[@"kCMFormatDescriptionExtensionKey_MetadataKeyTable"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtensionKey_MetadataKeyTable inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_VerbatimImageDescription;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_VerbatimImageDescription"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_VerbatimImageDescription inContext: context];
	p = (void*) &kCMFormatDescriptionKey_CleanApertureHeight;
	if (p != NULL) context[@"kCMFormatDescriptionKey_CleanApertureHeight"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_CleanApertureHeight inContext: context];
	p = (void*) &kCMFormatDescriptionChromaLocation_Center;
	if (p != NULL) context[@"kCMFormatDescriptionChromaLocation_Center"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionChromaLocation_Center inContext: context];
	p = (void*) &kCMTextFormatDescriptionRect_Bottom;
	if (p != NULL) context[@"kCMTextFormatDescriptionRect_Bottom"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionRect_Bottom inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_ColorPrimaries;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_ColorPrimaries"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_ColorPrimaries inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionKey_Value;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionKey_Value"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionKey_Value inContext: context];
	p = (void*) &kCMFormatDescriptionTransferFunction_sRGB;
	if (p != NULL) context[@"kCMFormatDescriptionTransferFunction_sRGB"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionTransferFunction_sRGB inContext: context];
	p = (void*) &kCMFormatDescriptionKey_PixelAspectRatioHorizontalSpacing;
	if (p != NULL) context[@"kCMFormatDescriptionKey_PixelAspectRatioHorizontalSpacing"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_PixelAspectRatioHorizontalSpacing inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionKey_SetupData;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionKey_SetupData"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionKey_SetupData inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionMetadataSpecificationKey_DataType;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionMetadataSpecificationKey_DataType"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionMetadataSpecificationKey_DataType inContext: context];
	p = (void*) &kCMFormatDescriptionChromaLocation_Top;
	if (p != NULL) context[@"kCMFormatDescriptionChromaLocation_Top"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionChromaLocation_Top inContext: context];
	p = (void*) &kCMFormatDescriptionYCbCrMatrix_ITU_R_601_4;
	if (p != NULL) context[@"kCMFormatDescriptionYCbCrMatrix_ITU_R_601_4"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionYCbCrMatrix_ITU_R_601_4 inContext: context];
	p = (void*) &kCMFormatDescriptionVendor_Apple;
	if (p != NULL) context[@"kCMFormatDescriptionVendor_Apple"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionVendor_Apple inContext: context];
	p = (void*) &kCMFormatDescriptionTransferFunction_SMPTE_240M_1995;
	if (p != NULL) context[@"kCMFormatDescriptionTransferFunction_SMPTE_240M_1995"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionTransferFunction_SMPTE_240M_1995 inContext: context];
	p = (void*) &kCMFormatDescriptionTransferFunction_ITU_R_709_2;
	if (p != NULL) context[@"kCMFormatDescriptionTransferFunction_ITU_R_709_2"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionTransferFunction_ITU_R_709_2 inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_AlternativeTransferCharacteristics;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_AlternativeTransferCharacteristics"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_AlternativeTransferCharacteristics inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_DisplayFlags;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_DisplayFlags"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_DisplayFlags inContext: context];
	p = (void*) &kCMFormatDescriptionChromaLocation_Bottom;
	if (p != NULL) context[@"kCMFormatDescriptionChromaLocation_Bottom"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionChromaLocation_Bottom inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionKey_LanguageTag;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionKey_LanguageTag"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionKey_LanguageTag inContext: context];
	p = (void*) &kCMFormatDescriptionColorPrimaries_DCI_P3;
	if (p != NULL) context[@"kCMFormatDescriptionColorPrimaries_DCI_P3"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionColorPrimaries_DCI_P3 inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_AlphaChannelMode;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_AlphaChannelMode"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_AlphaChannelMode inContext: context];
	p = (void*) &kCMFormatDescriptionConformsToMPEG2VideoProfile;
	if (p != NULL) context[@"kCMFormatDescriptionConformsToMPEG2VideoProfile"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionConformsToMPEG2VideoProfile inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_DefaultStyle;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_DefaultStyle"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_DefaultStyle inContext: context];
	p = (void*) &kCMFormatDescriptionFieldDetail_TemporalTopFirst;
	if (p != NULL) context[@"kCMFormatDescriptionFieldDetail_TemporalTopFirst"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionFieldDetail_TemporalTopFirst inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_DefaultTextBox;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_DefaultTextBox"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_DefaultTextBox inContext: context];
	p = (void*) &kCMFormatDescriptionTransferFunction_SMPTE_ST_428_1;
	if (p != NULL) context[@"kCMFormatDescriptionTransferFunction_SMPTE_ST_428_1"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionTransferFunction_SMPTE_ST_428_1 inContext: context];
	p = (void*) &kCMFormatDescriptionYCbCrMatrix_SMPTE_240M_1995;
	if (p != NULL) context[@"kCMFormatDescriptionYCbCrMatrix_SMPTE_240M_1995"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionYCbCrMatrix_SMPTE_240M_1995 inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_ChromaLocationBottomField;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_ChromaLocationBottomField"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_ChromaLocationBottomField inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_MasteringDisplayColorVolume;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_MasteringDisplayColorVolume"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_MasteringDisplayColorVolume inContext: context];
	p = (void*) &kCMFormatDescriptionTransferFunction_ITU_R_2020;
	if (p != NULL) context[@"kCMFormatDescriptionTransferFunction_ITU_R_2020"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionTransferFunction_ITU_R_2020 inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_TextJustification;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_TextJustification"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_TextJustification inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionMetadataSpecificationKey_StructuralDependency;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionMetadataSpecificationKey_StructuralDependency"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionMetadataSpecificationKey_StructuralDependency inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_ICCProfile;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_ICCProfile"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_ICCProfile inContext: context];
	p = (void*) &kCMFormatDescriptionKey_CleanApertureWidth;
	if (p != NULL) context[@"kCMFormatDescriptionKey_CleanApertureWidth"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_CleanApertureWidth inContext: context];
	p = (void*) &kCMFormatDescriptionColorPrimaries_P22;
	if (p != NULL) context[@"kCMFormatDescriptionColorPrimaries_P22"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionColorPrimaries_P22 inContext: context];
	p = (void*) &kCMTextFormatDescriptionStyle_FontFace;
	if (p != NULL) context[@"kCMTextFormatDescriptionStyle_FontFace"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionStyle_FontFace inContext: context];
	p = (void*) &kCMFormatDescriptionChromaLocation_DV420;
	if (p != NULL) context[@"kCMFormatDescriptionChromaLocation_DV420"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionChromaLocation_DV420 inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionKey_Namespace;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionKey_Namespace"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionKey_Namespace inContext: context];
	p = (void*) &kCMFormatDescriptionFieldDetail_SpatialFirstLineEarly;
	if (p != NULL) context[@"kCMFormatDescriptionFieldDetail_SpatialFirstLineEarly"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionFieldDetail_SpatialFirstLineEarly inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_YCbCrMatrix;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_YCbCrMatrix"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_YCbCrMatrix inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_TemporalQuality;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_TemporalQuality"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_TemporalQuality inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_FullRangeVideo;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_FullRangeVideo"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_FullRangeVideo inContext: context];
	p = (void*) &kCMFormatDescriptionYCbCrMatrix_ITU_R_709_2;
	if (p != NULL) context[@"kCMFormatDescriptionYCbCrMatrix_ITU_R_709_2"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionYCbCrMatrix_ITU_R_709_2 inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_ProtectedContentOriginalFormat;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_ProtectedContentOriginalFormat"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_ProtectedContentOriginalFormat inContext: context];
	p = (void*) &kCMTextFormatDescriptionStyle_ForegroundColor;
	if (p != NULL) context[@"kCMTextFormatDescriptionStyle_ForegroundColor"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionStyle_ForegroundColor inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_SpatialQuality;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_SpatialQuality"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_SpatialQuality inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_OriginalCompressionSettings;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_OriginalCompressionSettings"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_OriginalCompressionSettings inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionKey_StructuralDependency;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionKey_StructuralDependency"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionKey_StructuralDependency inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_RevisionLevel;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_RevisionLevel"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_RevisionLevel inContext: context];
	p = (void*) &kCMFormatDescriptionKey_CleanApertureHeightRational;
	if (p != NULL) context[@"kCMFormatDescriptionKey_CleanApertureHeightRational"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_CleanApertureHeightRational inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_CleanAperture;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_CleanAperture"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_CleanAperture inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_VerbatimISOSampleEntry;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_VerbatimISOSampleEntry"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_VerbatimISOSampleEntry inContext: context];
	p = (void*) &kCMTextFormatDescriptionStyle_Ascent;
	if (p != NULL) context[@"kCMTextFormatDescriptionStyle_Ascent"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionStyle_Ascent inContext: context];
	p = (void*) &kCMTextFormatDescriptionRect_Top;
	if (p != NULL) context[@"kCMTextFormatDescriptionRect_Top"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionRect_Top inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_FieldCount;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_FieldCount"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_FieldCount inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionKey_DataType;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionKey_DataType"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionKey_DataType inContext: context];
	p = (void*) &kCMFormatDescriptionKey_CleanApertureHorizontalOffsetRational;
	if (p != NULL) context[@"kCMFormatDescriptionKey_CleanApertureHorizontalOffsetRational"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_CleanApertureHorizontalOffsetRational inContext: context];
	p = (void*) &kCMMetadataFormatDescription_StructuralDependencyKey_DependencyIsInvalidFlag;
	if (p != NULL) context[@"kCMMetadataFormatDescription_StructuralDependencyKey_DependencyIsInvalidFlag"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescription_StructuralDependencyKey_DependencyIsInvalidFlag inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_AuxiliaryTypeInfo;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_AuxiliaryTypeInfo"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_AuxiliaryTypeInfo inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_VerticalJustification;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_VerticalJustification"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_VerticalJustification inContext: context];
	p = (void*) &kCMFormatDescriptionKey_CleanApertureWidthRational;
	if (p != NULL) context[@"kCMFormatDescriptionKey_CleanApertureWidthRational"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_CleanApertureWidthRational inContext: context];
	p = (void*) &kCMTextFormatDescriptionStyle_EndChar;
	if (p != NULL) context[@"kCMTextFormatDescriptionStyle_EndChar"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionStyle_EndChar inContext: context];
	p = (void*) &kCMTextFormatDescriptionStyle_StartChar;
	if (p != NULL) context[@"kCMTextFormatDescriptionStyle_StartChar"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionStyle_StartChar inContext: context];
}
void load_CoreMedia_CMFormatDescription_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
