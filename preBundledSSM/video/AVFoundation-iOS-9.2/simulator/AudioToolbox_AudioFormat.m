#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioToolbox_AudioFormat)
+(JSValue*) valueWithAudioFormatListItem: (AudioFormatListItem) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mSampleRate": @(s.mASBD.mSampleRate),
		@"mFormatID": @(s.mASBD.mFormatID),
		@"mFormatFlags": @(s.mASBD.mFormatFlags),
		@"mBytesPerPacket": @(s.mASBD.mBytesPerPacket),
		@"mFramesPerPacket": @(s.mASBD.mFramesPerPacket),
		@"mBytesPerFrame": @(s.mASBD.mBytesPerFrame),
		@"mChannelsPerFrame": @(s.mASBD.mChannelsPerFrame),
		@"mBitsPerChannel": @(s.mASBD.mBitsPerChannel),
		@"mReserved": @(s.mASBD.mReserved),
		@"mChannelLayoutTag": @(s.mChannelLayoutTag),
	} inContext: context];
}
-(AudioFormatListItem) toAudioFormatListItem {
	return (AudioFormatListItem) {
		[self[@"mASBD"] toAudioStreamBasicDescription],
		(AudioChannelLayoutTag) [self[@"mChannelLayoutTag"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kPanningMode_SoundField"] = @3UL;
	context[@"kPanningMode_VectorBasedPanning"] = @4UL;

	context[@"kAudioBalanceFadeType_MaxUnityGain"] = @0UL;
	context[@"kAudioBalanceFadeType_EqualPower"] = @1UL;

	context[@"kAudioFormatProperty_FormatInfo"] = @1718449257UL;
	context[@"kAudioFormatProperty_FormatName"] = @1718509933UL;
	context[@"kAudioFormatProperty_EncodeFormatIDs"] = @1633906534UL;
	context[@"kAudioFormatProperty_DecodeFormatIDs"] = @1633904998UL;
	context[@"kAudioFormatProperty_FormatList"] = @1718383476UL;
	context[@"kAudioFormatProperty_ASBDFromESDS"] = @1702064996UL;
	context[@"kAudioFormatProperty_ChannelLayoutFromESDS"] = @1702060908UL;
	context[@"kAudioFormatProperty_OutputFormatList"] = @1868983411UL;
	context[@"kAudioFormatProperty_FirstPlayableFormatFromList"] = @1718642284UL;
	context[@"kAudioFormatProperty_FormatIsVBR"] = @1719034482UL;
	context[@"kAudioFormatProperty_FormatIsExternallyFramed"] = @1717925990UL;
	context[@"kAudioFormatProperty_FormatIsEncrypted"] = @1668446576UL;
	context[@"kAudioFormatProperty_Encoders"] = @1635149166UL;
	context[@"kAudioFormatProperty_Decoders"] = @1635148901UL;
	context[@"kAudioFormatProperty_AvailableEncodeBitRates"] = @1634034290UL;
	context[@"kAudioFormatProperty_AvailableEncodeSampleRates"] = @1634038642UL;
	context[@"kAudioFormatProperty_AvailableEncodeChannelLayoutTags"] = @1634034540UL;
	context[@"kAudioFormatProperty_AvailableEncodeNumberChannels"] = @1635151459UL;
	context[@"kAudioFormatProperty_ASBDFromMPEGPacket"] = @1633971568UL;
	context[@"kAudioFormatProperty_BitmapForLayoutTag"] = @1651340391UL;
	context[@"kAudioFormatProperty_MatrixMixMap"] = @1835884912UL;
	context[@"kAudioFormatProperty_ChannelMap"] = @1667788144UL;
	context[@"kAudioFormatProperty_NumberOfChannelsForLayout"] = @1852008557UL;
	context[@"kAudioFormatProperty_AreChannelLayoutsEquivalent"] = @1667786097UL;
	context[@"kAudioFormatProperty_ChannelLayoutHash"] = @1667786849UL;
	context[@"kAudioFormatProperty_ValidateChannelLayout"] = @1986093932UL;
	context[@"kAudioFormatProperty_ChannelLayoutForTag"] = @1668116588UL;
	context[@"kAudioFormatProperty_TagForChannelLayout"] = @1668116596UL;
	context[@"kAudioFormatProperty_ChannelLayoutName"] = @1819242093UL;
	context[@"kAudioFormatProperty_ChannelLayoutSimpleName"] = @1819504237UL;
	context[@"kAudioFormatProperty_ChannelLayoutForBitmap"] = @1668116578UL;
	context[@"kAudioFormatProperty_ChannelName"] = @1668178285UL;
	context[@"kAudioFormatProperty_ChannelShortName"] = @1668509293UL;
	context[@"kAudioFormatProperty_TagsForNumberOfChannels"] = @1952540515UL;
	context[@"kAudioFormatProperty_PanningMatrix"] = @1885433453UL;
	context[@"kAudioFormatProperty_BalanceFade"] = @1650551910UL;
	context[@"kAudioFormatProperty_ID3TagSize"] = @1768174451UL;
	context[@"kAudioFormatProperty_ID3TagToDictionary"] = @1768174436UL;

	context[@"kAudioFormatProperty_HardwareCodecCapabilities"] = @1752654691UL;

	context[@"kAudioDecoderComponentType"] = @1633969507UL;
	context[@"kAudioEncoderComponentType"] = @1634037347UL;

	context[@"kAppleSoftwareAudioCodecManufacturer"] = @1634758764UL;
	context[@"kAppleHardwareAudioCodecManufacturer"] = @1634756727UL;

	context[@"kAudioFormatUnspecifiedError"] = @2003329396L;
	context[@"kAudioFormatUnsupportedPropertyError"] = @1886547824L;
	context[@"kAudioFormatBadPropertySizeError"] = @561211770L;
	context[@"kAudioFormatBadSpecifierSizeError"] = @561213539L;
	context[@"kAudioFormatUnsupportedDataFormatError"] = @1718449215L;
	context[@"kAudioFormatUnknownFormatError"] = @560360820L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioFormat_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
