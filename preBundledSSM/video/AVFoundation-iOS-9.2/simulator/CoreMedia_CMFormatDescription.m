#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
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
static void registerEnumConstants(JSContext* context)
{
	context[@"kCMFormatDescriptionError_InvalidParameter"] = @-12710L;
	context[@"kCMFormatDescriptionError_AllocationFailed"] = @-12711L;
	context[@"kCMFormatDescriptionError_ValueNotAvailable"] = @-12718L;

	context[@"kCMMediaType_Video"] = @1986618469UL;
	context[@"kCMMediaType_Audio"] = @1936684398UL;
	context[@"kCMMediaType_Muxed"] = @1836415096UL;
	context[@"kCMMediaType_Text"] = @1952807028UL;
	context[@"kCMMediaType_ClosedCaption"] = @1668047728UL;
	context[@"kCMMediaType_Subtitle"] = @1935832172UL;
	context[@"kCMMediaType_TimeCode"] = @1953325924UL;
	context[@"kCMMediaType_Metadata"] = @1835365473UL;

	context[@"kCMAudioCodecType_AAC_LCProtected"] = @1885430115UL;
	context[@"kCMAudioCodecType_AAC_AudibleProtected"] = @1633771875UL;

	context[@"kCMAudioFormatDescriptionMask_StreamBasicDescription"] = @1U;
	context[@"kCMAudioFormatDescriptionMask_MagicCookie"] = @2U;
	context[@"kCMAudioFormatDescriptionMask_ChannelLayout"] = @4U;
	context[@"kCMAudioFormatDescriptionMask_Extensions"] = @8U;
	context[@"kCMAudioFormatDescriptionMask_All"] = @15U;

	context[@"kCMPixelFormat_32ARGB"] = @32UL;
	context[@"kCMPixelFormat_32BGRA"] = @1111970369UL;
	context[@"kCMPixelFormat_24RGB"] = @24UL;
	context[@"kCMPixelFormat_16BE555"] = @16UL;
	context[@"kCMPixelFormat_16BE565"] = @1110783541UL;
	context[@"kCMPixelFormat_16LE555"] = @1278555445UL;
	context[@"kCMPixelFormat_16LE565"] = @1278555701UL;
	context[@"kCMPixelFormat_16LE5551"] = @892679473UL;
	context[@"kCMPixelFormat_422YpCbCr8"] = @846624121UL;
	context[@"kCMPixelFormat_422YpCbCr8_yuvs"] = @2037741171UL;
	context[@"kCMPixelFormat_444YpCbCr8"] = @1983066168UL;
	context[@"kCMPixelFormat_4444YpCbCrA8"] = @1983131704UL;
	context[@"kCMPixelFormat_422YpCbCr16"] = @1983000886UL;
	context[@"kCMPixelFormat_422YpCbCr10"] = @1983000880UL;
	context[@"kCMPixelFormat_444YpCbCr10"] = @1983131952UL;
	context[@"kCMPixelFormat_8IndexedGray_WhiteIsZero"] = @40UL;

	context[@"kCMVideoCodecType_422YpCbCr8"] = @846624121UL;
	context[@"kCMVideoCodecType_Animation"] = @1919706400UL;
	context[@"kCMVideoCodecType_Cinepak"] = @1668704612UL;
	context[@"kCMVideoCodecType_JPEG"] = @1785750887UL;
	context[@"kCMVideoCodecType_JPEG_OpenDML"] = @1684890161UL;
	context[@"kCMVideoCodecType_SorensonVideo"] = @1398165809UL;
	context[@"kCMVideoCodecType_SorensonVideo3"] = @1398165811UL;
	context[@"kCMVideoCodecType_H263"] = @1748121139UL;
	context[@"kCMVideoCodecType_H264"] = @1635148593UL;
	context[@"kCMVideoCodecType_HEVC"] = @1752589105UL;
	context[@"kCMVideoCodecType_MPEG4Video"] = @1836070006UL;
	context[@"kCMVideoCodecType_MPEG2Video"] = @1836069494UL;
	context[@"kCMVideoCodecType_MPEG1Video"] = @1836069238UL;
	context[@"kCMVideoCodecType_DVCNTSC"] = @1685480224UL;
	context[@"kCMVideoCodecType_DVCPAL"] = @1685480304UL;
	context[@"kCMVideoCodecType_DVCProPAL"] = @1685483632UL;
	context[@"kCMVideoCodecType_DVCPro50NTSC"] = @1685468526UL;
	context[@"kCMVideoCodecType_DVCPro50PAL"] = @1685468528UL;
	context[@"kCMVideoCodecType_DVCPROHD720p60"] = @1685481584UL;
	context[@"kCMVideoCodecType_DVCPROHD720p50"] = @1685481585UL;
	context[@"kCMVideoCodecType_DVCPROHD1080i60"] = @1685481526UL;
	context[@"kCMVideoCodecType_DVCPROHD1080i50"] = @1685481525UL;
	context[@"kCMVideoCodecType_DVCPROHD1080p30"] = @1685481523UL;
	context[@"kCMVideoCodecType_DVCPROHD1080p25"] = @1685481522UL;
	context[@"kCMVideoCodecType_AppleProRes4444"] = @1634743400UL;
	context[@"kCMVideoCodecType_AppleProRes422HQ"] = @1634755432UL;
	context[@"kCMVideoCodecType_AppleProRes422"] = @1634755438UL;
	context[@"kCMVideoCodecType_AppleProRes422LT"] = @1634755443UL;
	context[@"kCMVideoCodecType_AppleProRes422Proxy"] = @1634755439UL;

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

	context[@"kCMMuxedStreamType_MPEG1System"] = @1836069235UL;
	context[@"kCMMuxedStreamType_MPEG2Transport"] = @1836069492UL;
	context[@"kCMMuxedStreamType_MPEG2Program"] = @1836069488UL;
	context[@"kCMMuxedStreamType_DV"] = @1685463072UL;

	context[@"kCMClosedCaptionFormatType_CEA608"] = @1664495672UL;
	context[@"kCMClosedCaptionFormatType_CEA708"] = @1664561208UL;
	context[@"kCMClosedCaptionFormatType_ATSC"] = @1635017571UL;

	context[@"kCMTextFormatType_QTText"] = @1952807028UL;
	context[@"kCMTextFormatType_3GText"] = @1954034535UL;

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

	context[@"kCMSubtitleFormatType_3GText"] = @1954034535UL;
	context[@"kCMSubtitleFormatType_WebVTT"] = @2004251764UL;

	context[@"kCMTimeCodeFormatType_TimeCode32"] = @1953325924UL;
	context[@"kCMTimeCodeFormatType_TimeCode64"] = @1952658996UL;
	context[@"kCMTimeCodeFormatType_Counter32"] = @1668166450UL;
	context[@"kCMTimeCodeFormatType_Counter64"] = @1668167220UL;

	context[@"kCMTimeCodeFlag_DropFrame"] = @1U;
	context[@"kCMTimeCodeFlag_24HourMax"] = @2U;
	context[@"kCMTimeCodeFlag_NegTimesOK"] = @4U;

	context[@"kCMMetadataFormatType_ICY"] = @1768126752UL;
	context[@"kCMMetadataFormatType_ID3"] = @1768174368UL;
	context[@"kCMMetadataFormatType_Boxed"] = @1835360888UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCMTextFormatDescriptionColor_Alpha;
	if (p != NULL) context[@"kCMTextFormatDescriptionColor_Alpha"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionColor_Alpha inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_PixelAspectRatio;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_PixelAspectRatio"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_PixelAspectRatio inContext: context];
	p = (void*) &kCMFormatDescriptionColorPrimaries_P3_D65;
	if (p != NULL) context[@"kCMFormatDescriptionColorPrimaries_P3_D65"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionColorPrimaries_P3_D65 inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_TransferFunction;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_TransferFunction"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_TransferFunction inContext: context];
	p = (void*) &kCMFormatDescriptionKey_CleanApertureHorizontalOffset;
	if (p != NULL) context[@"kCMFormatDescriptionKey_CleanApertureHorizontalOffset"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_CleanApertureHorizontalOffset inContext: context];
	p = (void*) &kCMFormatDescriptionColorPrimaries_ITU_R_709_2;
	if (p != NULL) context[@"kCMFormatDescriptionColorPrimaries_ITU_R_709_2"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionColorPrimaries_ITU_R_709_2 inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_FormatName;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_FormatName"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_FormatName inContext: context];
	p = (void*) &kCMFormatDescriptionYCbCrMatrix_ITU_R_2020;
	if (p != NULL) context[@"kCMFormatDescriptionYCbCrMatrix_ITU_R_2020"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionYCbCrMatrix_ITU_R_2020 inContext: context];
    //Commenting this since it has been removed in 9.3 SDK.
	//p = (void*) &kCMFormatDescriptionYCbCrMatrix_DCI_P3;
	//if (p != NULL) context[@"kCMFormatDescriptionYCbCrMatrix_DCI_P3"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionYCbCrMatrix_DCI_P3 inContext: context];
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
	p = (void*) &kCMMetadataFormatDescriptionKey_LocalID;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionKey_LocalID"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionKey_LocalID inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionKey_DataTypeNamespace;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionKey_DataTypeNamespace"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionKey_DataTypeNamespace inContext: context];
	p = (void*) &kCMFormatDescriptionTransferFunction_UseGamma;
	if (p != NULL) context[@"kCMFormatDescriptionTransferFunction_UseGamma"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionTransferFunction_UseGamma inContext: context];
	p = (void*) &kCMTimeCodeFormatDescriptionKey_LangCode;
	if (p != NULL) context[@"kCMTimeCodeFormatDescriptionKey_LangCode"] = [JSValue valueWithObject: (__bridge id) kCMTimeCodeFormatDescriptionKey_LangCode inContext: context];
	p = (void*) &kCMTextFormatDescriptionStyle_Height;
	if (p != NULL) context[@"kCMTextFormatDescriptionStyle_Height"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionStyle_Height inContext: context];
	p = (void*) &kCMFormatDescriptionKey_CleanApertureVerticalOffsetRational;
	if (p != NULL) context[@"kCMFormatDescriptionKey_CleanApertureVerticalOffsetRational"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_CleanApertureVerticalOffsetRational inContext: context];
	p = (void*) &kCMTextFormatDescriptionStyle_FontSize;
	if (p != NULL) context[@"kCMTextFormatDescriptionStyle_FontSize"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionStyle_FontSize inContext: context];
	p = (void*) &kCMFormatDescriptionFieldDetail_SpatialFirstLineLate;
	if (p != NULL) context[@"kCMFormatDescriptionFieldDetail_SpatialFirstLineLate"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionFieldDetail_SpatialFirstLineLate inContext: context];
	p = (void*) &kCMFormatDescriptionFieldDetail_TemporalBottomFirst;
	if (p != NULL) context[@"kCMFormatDescriptionFieldDetail_TemporalBottomFirst"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionFieldDetail_TemporalBottomFirst inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_GammaLevel;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_GammaLevel"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_GammaLevel inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_FontTable;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_FontTable"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_FontTable inContext: context];
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
	p = (void*) &kCMTextFormatDescriptionColor_Red;
	if (p != NULL) context[@"kCMTextFormatDescriptionColor_Red"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionColor_Red inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_Vendor;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_Vendor"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_Vendor inContext: context];
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
	p = (void*) &kCMFormatDescriptionExtension_FieldDetail;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_FieldDetail"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_FieldDetail inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_Version;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_Version"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_Version inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_BackgroundColor;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_BackgroundColor"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_BackgroundColor inContext: context];
	p = (void*) &kCMFormatDescriptionKey_PixelAspectRatioVerticalSpacing;
	if (p != NULL) context[@"kCMFormatDescriptionKey_PixelAspectRatioVerticalSpacing"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_PixelAspectRatioVerticalSpacing inContext: context];
	p = (void*) &kCMTextFormatDescriptionStyle_Font;
	if (p != NULL) context[@"kCMTextFormatDescriptionStyle_Font"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionStyle_Font inContext: context];
	p = (void*) &kCMTextFormatDescriptionColor_Blue;
	if (p != NULL) context[@"kCMTextFormatDescriptionColor_Blue"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionColor_Blue inContext: context];
	p = (void*) &kCMFormatDescriptionExtensionKey_MetadataKeyTable;
	if (p != NULL) context[@"kCMFormatDescriptionExtensionKey_MetadataKeyTable"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtensionKey_MetadataKeyTable inContext: context];
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
	p = (void*) &kCMFormatDescriptionKey_PixelAspectRatioHorizontalSpacing;
	if (p != NULL) context[@"kCMFormatDescriptionKey_PixelAspectRatioHorizontalSpacing"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_PixelAspectRatioHorizontalSpacing inContext: context];
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
	p = (void*) &kCMTextFormatDescriptionExtension_DisplayFlags;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_DisplayFlags"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_DisplayFlags inContext: context];
	p = (void*) &kCMFormatDescriptionChromaLocation_Bottom;
	if (p != NULL) context[@"kCMFormatDescriptionChromaLocation_Bottom"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionChromaLocation_Bottom inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms inContext: context];
	p = (void*) &kCMMetadataFormatDescriptionKey_LanguageTag;
	if (p != NULL) context[@"kCMMetadataFormatDescriptionKey_LanguageTag"] = [JSValue valueWithObject: (__bridge id) kCMMetadataFormatDescriptionKey_LanguageTag inContext: context];
	p = (void*) &kCMFormatDescriptionKey_CleanApertureWidthRational;
	if (p != NULL) context[@"kCMFormatDescriptionKey_CleanApertureWidthRational"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_CleanApertureWidthRational inContext: context];
	p = (void*) &kCMFormatDescriptionColorPrimaries_DCI_P3;
	if (p != NULL) context[@"kCMFormatDescriptionColorPrimaries_DCI_P3"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionColorPrimaries_DCI_P3 inContext: context];
	p = (void*) &kCMFormatDescriptionConformsToMPEG2VideoProfile;
	if (p != NULL) context[@"kCMFormatDescriptionConformsToMPEG2VideoProfile"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionConformsToMPEG2VideoProfile inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_DefaultStyle;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_DefaultStyle"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_DefaultStyle inContext: context];
	p = (void*) &kCMFormatDescriptionFieldDetail_TemporalTopFirst;
	if (p != NULL) context[@"kCMFormatDescriptionFieldDetail_TemporalTopFirst"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionFieldDetail_TemporalTopFirst inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_DefaultTextBox;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_DefaultTextBox"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_DefaultTextBox inContext: context];
	p = (void*) &kCMFormatDescriptionYCbCrMatrix_SMPTE_240M_1995;
	if (p != NULL) context[@"kCMFormatDescriptionYCbCrMatrix_SMPTE_240M_1995"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionYCbCrMatrix_SMPTE_240M_1995 inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_ChromaLocationBottomField;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_ChromaLocationBottomField"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_ChromaLocationBottomField inContext: context];
	p = (void*) &kCMFormatDescriptionTransferFunction_ITU_R_2020;
	if (p != NULL) context[@"kCMFormatDescriptionTransferFunction_ITU_R_2020"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionTransferFunction_ITU_R_2020 inContext: context];
	//p = (void*) &kCMFormatDescriptionYCbCrMatrix_P3_D65;
	//if (p != NULL) context[@"kCMFormatDescriptionYCbCrMatrix_P3_D65"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionYCbCrMatrix_P3_D65 inContext: context];
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
	p = (void*) &kCMFormatDescriptionYCbCrMatrix_ITU_R_709_2;
	if (p != NULL) context[@"kCMFormatDescriptionYCbCrMatrix_ITU_R_709_2"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionYCbCrMatrix_ITU_R_709_2 inContext: context];
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
	p = (void*) &kCMFormatDescriptionChromaLocation_TopLeft;
	if (p != NULL) context[@"kCMFormatDescriptionChromaLocation_TopLeft"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionChromaLocation_TopLeft inContext: context];
	p = (void*) &kCMFormatDescriptionKey_CleanApertureHeightRational;
	if (p != NULL) context[@"kCMFormatDescriptionKey_CleanApertureHeightRational"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionKey_CleanApertureHeightRational inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_CleanAperture;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_CleanAperture"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_CleanAperture inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_VerbatimISOSampleEntry;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_VerbatimISOSampleEntry"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_VerbatimISOSampleEntry inContext: context];
	p = (void*) &kCMFormatDescriptionExtension_VerbatimImageDescription;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_VerbatimImageDescription"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_VerbatimImageDescription inContext: context];
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
	p = (void*) &kCMFormatDescriptionExtension_FullRangeVideo;
	if (p != NULL) context[@"kCMFormatDescriptionExtension_FullRangeVideo"] = [JSValue valueWithObject: (__bridge id) kCMFormatDescriptionExtension_FullRangeVideo inContext: context];
	p = (void*) &kCMTextFormatDescriptionExtension_VerticalJustification;
	if (p != NULL) context[@"kCMTextFormatDescriptionExtension_VerticalJustification"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionExtension_VerticalJustification inContext: context];
	p = (void*) &kCMTextFormatDescriptionStyle_EndChar;
	if (p != NULL) context[@"kCMTextFormatDescriptionStyle_EndChar"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionStyle_EndChar inContext: context];
	p = (void*) &kCMTextFormatDescriptionStyle_StartChar;
	if (p != NULL) context[@"kCMTextFormatDescriptionStyle_StartChar"] = [JSValue valueWithObject: (__bridge id) kCMTextFormatDescriptionStyle_StartChar inContext: context];
}
void load_CoreMedia_CMFormatDescription_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
