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
	context[@"kPanningMode_SoundField"] = @3U;
	context[@"kPanningMode_VectorBasedPanning"] = @4U;

	context[@"kAudioBalanceFadeType_MaxUnityGain"] = @0U;
	context[@"kAudioBalanceFadeType_EqualPower"] = @1U;

	context[@"kAudioFormatProperty_FormatInfo"] = @1718449257U;
	context[@"kAudioFormatProperty_FormatName"] = @1718509933U;
	context[@"kAudioFormatProperty_EncodeFormatIDs"] = @1633906534U;
	context[@"kAudioFormatProperty_DecodeFormatIDs"] = @1633904998U;
	context[@"kAudioFormatProperty_FormatList"] = @1718383476U;
	context[@"kAudioFormatProperty_ASBDFromESDS"] = @1702064996U;
	context[@"kAudioFormatProperty_ChannelLayoutFromESDS"] = @1702060908U;
	context[@"kAudioFormatProperty_OutputFormatList"] = @1868983411U;
	context[@"kAudioFormatProperty_FirstPlayableFormatFromList"] = @1718642284U;
	context[@"kAudioFormatProperty_FormatIsVBR"] = @1719034482U;
	context[@"kAudioFormatProperty_FormatIsExternallyFramed"] = @1717925990U;
	context[@"kAudioFormatProperty_FormatEmploysDependentPackets"] = @1717855600U;
	context[@"kAudioFormatProperty_FormatIsEncrypted"] = @1668446576U;
	context[@"kAudioFormatProperty_Encoders"] = @1635149166U;
	context[@"kAudioFormatProperty_Decoders"] = @1635148901U;
	context[@"kAudioFormatProperty_AvailableEncodeBitRates"] = @1634034290U;
	context[@"kAudioFormatProperty_AvailableEncodeSampleRates"] = @1634038642U;
	context[@"kAudioFormatProperty_AvailableEncodeChannelLayoutTags"] = @1634034540U;
	context[@"kAudioFormatProperty_AvailableEncodeNumberChannels"] = @1635151459U;
	context[@"kAudioFormatProperty_AvailableDecodeNumberChannels"] = @1633971811U;
	context[@"kAudioFormatProperty_ASBDFromMPEGPacket"] = @1633971568U;
	context[@"kAudioFormatProperty_BitmapForLayoutTag"] = @1651340391U;
	context[@"kAudioFormatProperty_MatrixMixMap"] = @1835884912U;
	context[@"kAudioFormatProperty_ChannelMap"] = @1667788144U;
	context[@"kAudioFormatProperty_NumberOfChannelsForLayout"] = @1852008557U;
	context[@"kAudioFormatProperty_AreChannelLayoutsEquivalent"] = @1667786097U;
	context[@"kAudioFormatProperty_ChannelLayoutHash"] = @1667786849U;
	context[@"kAudioFormatProperty_ValidateChannelLayout"] = @1986093932U;
	context[@"kAudioFormatProperty_ChannelLayoutForTag"] = @1668116588U;
	context[@"kAudioFormatProperty_TagForChannelLayout"] = @1668116596U;
	context[@"kAudioFormatProperty_ChannelLayoutName"] = @1819242093U;
	context[@"kAudioFormatProperty_ChannelLayoutSimpleName"] = @1819504237U;
	context[@"kAudioFormatProperty_ChannelLayoutForBitmap"] = @1668116578U;
	context[@"kAudioFormatProperty_ChannelName"] = @1668178285U;
	context[@"kAudioFormatProperty_ChannelShortName"] = @1668509293U;
	context[@"kAudioFormatProperty_TagsForNumberOfChannels"] = @1952540515U;
	context[@"kAudioFormatProperty_PanningMatrix"] = @1885433453U;
	context[@"kAudioFormatProperty_BalanceFade"] = @1650551910U;
	context[@"kAudioFormatProperty_ID3TagSize"] = @1768174451U;
	context[@"kAudioFormatProperty_ID3TagToDictionary"] = @1768174436U;

	context[@"kAudioFormatProperty_HardwareCodecCapabilities"] = @1752654691U;

	context[@"kAudioDecoderComponentType"] = @1633969507U;
	context[@"kAudioEncoderComponentType"] = @1634037347U;

	context[@"kAppleSoftwareAudioCodecManufacturer"] = @1634758764U;
	context[@"kAppleHardwareAudioCodecManufacturer"] = @1634756727U;

	context[@"kAudioFormatUnspecifiedError"] = @2003329396;
	context[@"kAudioFormatUnsupportedPropertyError"] = @1886547824;
	context[@"kAudioFormatBadPropertySizeError"] = @561211770;
	context[@"kAudioFormatBadSpecifierSizeError"] = @561213539;
	context[@"kAudioFormatUnsupportedDataFormatError"] = @1718449215;
	context[@"kAudioFormatUnknownFormatError"] = @560360820;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioFormat_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
