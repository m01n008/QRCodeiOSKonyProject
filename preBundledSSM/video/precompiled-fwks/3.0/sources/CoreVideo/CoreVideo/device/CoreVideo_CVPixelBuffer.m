#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreVideo_CVPixelBuffer)
+(JSValue*) valueWithCVPlanarPixelBufferInfo_YCbCrPlanar: (CVPlanarPixelBufferInfo_YCbCrPlanar) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"offset": @(s.componentInfoY.offset),
		@"rowBytes": @(s.componentInfoY.rowBytes),
		@"offset": @(s.componentInfoCb.offset),
		@"rowBytes": @(s.componentInfoCb.rowBytes),
		@"offset": @(s.componentInfoCr.offset),
		@"rowBytes": @(s.componentInfoCr.rowBytes),
	} inContext: context];
}
-(CVPlanarPixelBufferInfo_YCbCrPlanar) toCVPlanarPixelBufferInfo_YCbCrPlanar {
	return (CVPlanarPixelBufferInfo_YCbCrPlanar) {
		[self[@"componentInfoY"] toCVPlanarComponentInfo],
		[self[@"componentInfoCb"] toCVPlanarComponentInfo],
		[self[@"componentInfoCr"] toCVPlanarComponentInfo],
	};
}
+(JSValue*) valueWithCVPlanarPixelBufferInfo_YCbCrBiPlanar: (CVPlanarPixelBufferInfo_YCbCrBiPlanar) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"offset": @(s.componentInfoY.offset),
		@"rowBytes": @(s.componentInfoY.rowBytes),
		@"offset": @(s.componentInfoCbCr.offset),
		@"rowBytes": @(s.componentInfoCbCr.rowBytes),
	} inContext: context];
}
-(CVPlanarPixelBufferInfo_YCbCrBiPlanar) toCVPlanarPixelBufferInfo_YCbCrBiPlanar {
	return (CVPlanarPixelBufferInfo_YCbCrBiPlanar) {
		[self[@"componentInfoY"] toCVPlanarComponentInfo],
		[self[@"componentInfoCbCr"] toCVPlanarComponentInfo],
	};
}
+(JSValue*) valueWithCVPlanarComponentInfo: (CVPlanarComponentInfo) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"offset": @(s.offset),
		@"rowBytes": @(s.rowBytes),
	} inContext: context];
}
-(CVPlanarComponentInfo) toCVPlanarComponentInfo {
	return (CVPlanarComponentInfo) {
		(int32_t) [self[@"offset"] toInt32],
		(uint32_t) [self[@"rowBytes"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"CVPixelBufferUnlockBaseAddress"] = ^CVReturn(id arg0, CVPixelBufferLockFlags arg1) {
		return CVPixelBufferUnlockBaseAddress(arg0, arg1);
	};
	context[@"CVPixelBufferGetBytesPerRowOfPlane"] = ^size_t(id arg0, size_t arg1) {
		return CVPixelBufferGetBytesPerRowOfPlane(arg0, arg1);
	};
	context[@"CVPixelBufferGetBytesPerRow"] = ^size_t(id arg0) {
		return CVPixelBufferGetBytesPerRow(arg0);
	};
	context[@"CVPixelBufferGetDataSize"] = ^size_t(id arg0) {
		return CVPixelBufferGetDataSize(arg0);
	};
	context[@"CVPixelBufferGetHeightOfPlane"] = ^size_t(id arg0, size_t arg1) {
		return CVPixelBufferGetHeightOfPlane(arg0, arg1);
	};
	context[@"CVPixelBufferGetWidth"] = ^size_t(id arg0) {
		return CVPixelBufferGetWidth(arg0);
	};
	context[@"CVPixelBufferIsPlanar"] = ^Boolean(id arg0) {
		return CVPixelBufferIsPlanar(arg0);
	};
	context[@"CVPixelBufferFillExtendedPixels"] = ^CVReturn(id arg0) {
		return CVPixelBufferFillExtendedPixels(arg0);
	};
	context[@"CVPixelBufferGetHeight"] = ^size_t(id arg0) {
		return CVPixelBufferGetHeight(arg0);
	};
	context[@"CVPixelBufferRelease"] = ^void(id arg0) {
		CVPixelBufferRelease(arg0);
	};
	context[@"CVPixelBufferRetain"] = ^id(id arg0) {
		return CVPixelBufferRetain(arg0);
	};
	context[@"CVPixelBufferLockBaseAddress"] = ^CVReturn(id arg0, CVPixelBufferLockFlags arg1) {
		return CVPixelBufferLockBaseAddress(arg0, arg1);
	};
	context[@"CVPixelBufferGetPlaneCount"] = ^size_t(id arg0) {
		return CVPixelBufferGetPlaneCount(arg0);
	};
	context[@"CVPixelBufferGetPixelFormatType"] = ^OSType(id arg0) {
		return CVPixelBufferGetPixelFormatType(arg0);
	};
	context[@"CVPixelBufferGetTypeID"] = ^CFTypeID() {
		return CVPixelBufferGetTypeID();
	};
	context[@"CVPixelBufferGetWidthOfPlane"] = ^size_t(id arg0, size_t arg1) {
		return CVPixelBufferGetWidthOfPlane(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCVPixelFormatType_1Monochrome"] = @1UL;
	context[@"kCVPixelFormatType_2Indexed"] = @2UL;
	context[@"kCVPixelFormatType_4Indexed"] = @4UL;
	context[@"kCVPixelFormatType_8Indexed"] = @8UL;
	context[@"kCVPixelFormatType_1IndexedGray_WhiteIsZero"] = @33UL;
	context[@"kCVPixelFormatType_2IndexedGray_WhiteIsZero"] = @34UL;
	context[@"kCVPixelFormatType_4IndexedGray_WhiteIsZero"] = @36UL;
	context[@"kCVPixelFormatType_8IndexedGray_WhiteIsZero"] = @40UL;
	context[@"kCVPixelFormatType_16BE555"] = @16UL;
	context[@"kCVPixelFormatType_16LE555"] = @1278555445UL;
	context[@"kCVPixelFormatType_16LE5551"] = @892679473UL;
	context[@"kCVPixelFormatType_16BE565"] = @1110783541UL;
	context[@"kCVPixelFormatType_16LE565"] = @1278555701UL;
	context[@"kCVPixelFormatType_24RGB"] = @24UL;
	context[@"kCVPixelFormatType_24BGR"] = @842285639UL;
	context[@"kCVPixelFormatType_32ARGB"] = @32UL;
	context[@"kCVPixelFormatType_32BGRA"] = @1111970369UL;
	context[@"kCVPixelFormatType_32ABGR"] = @1094862674UL;
	context[@"kCVPixelFormatType_32RGBA"] = @1380401729UL;
	context[@"kCVPixelFormatType_64ARGB"] = @1647719521UL;
	context[@"kCVPixelFormatType_64RGBALE"] = @1815491698UL;
	context[@"kCVPixelFormatType_48RGB"] = @1647589490UL;
	context[@"kCVPixelFormatType_32AlphaGray"] = @1647522401UL;
	context[@"kCVPixelFormatType_16Gray"] = @1647392359UL;
	context[@"kCVPixelFormatType_30RGB"] = @1378955371UL;
	context[@"kCVPixelFormatType_422YpCbCr8"] = @846624121UL;
	context[@"kCVPixelFormatType_4444YpCbCrA8"] = @1983131704UL;
	context[@"kCVPixelFormatType_4444YpCbCrA8R"] = @1916022840UL;
	context[@"kCVPixelFormatType_4444AYpCbCr8"] = @2033463352UL;
	context[@"kCVPixelFormatType_4444AYpCbCr16"] = @2033463606UL;
	context[@"kCVPixelFormatType_444YpCbCr8"] = @1983066168UL;
	context[@"kCVPixelFormatType_422YpCbCr16"] = @1983000886UL;
	context[@"kCVPixelFormatType_422YpCbCr10"] = @1983000880UL;
	context[@"kCVPixelFormatType_444YpCbCr10"] = @1983131952UL;
	context[@"kCVPixelFormatType_420YpCbCr8Planar"] = @2033463856UL;
	context[@"kCVPixelFormatType_420YpCbCr8PlanarFullRange"] = @1714696752UL;
	context[@"kCVPixelFormatType_422YpCbCr_4A_8BiPlanar"] = @1630697081UL;
	context[@"kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange"] = @875704438UL;
	context[@"kCVPixelFormatType_420YpCbCr8BiPlanarFullRange"] = @875704422UL;
	context[@"kCVPixelFormatType_422YpCbCr8BiPlanarVideoRange"] = @875704950UL;
	context[@"kCVPixelFormatType_422YpCbCr8BiPlanarFullRange"] = @875704934UL;
	context[@"kCVPixelFormatType_444YpCbCr8BiPlanarVideoRange"] = @875836534UL;
	context[@"kCVPixelFormatType_444YpCbCr8BiPlanarFullRange"] = @875836518UL;
	context[@"kCVPixelFormatType_422YpCbCr8_yuvs"] = @2037741171UL;
	context[@"kCVPixelFormatType_422YpCbCr8FullRange"] = @2037741158UL;
	context[@"kCVPixelFormatType_OneComponent8"] = @1278226488UL;
	context[@"kCVPixelFormatType_TwoComponent8"] = @843264056UL;
	context[@"kCVPixelFormatType_30RGBLEPackedWideGamut"] = @1999843442UL;
	context[@"kCVPixelFormatType_ARGB2101010LEPacked"] = @1815162994UL;
	context[@"kCVPixelFormatType_OneComponent10"] = @1278226736UL;
	context[@"kCVPixelFormatType_OneComponent12"] = @1278226738UL;
	context[@"kCVPixelFormatType_OneComponent16"] = @1278226742UL;
	context[@"kCVPixelFormatType_TwoComponent16"] = @843264310UL;
	context[@"kCVPixelFormatType_OneComponent16Half"] = @1278226536UL;
	context[@"kCVPixelFormatType_OneComponent32Float"] = @1278226534UL;
	context[@"kCVPixelFormatType_TwoComponent16Half"] = @843264104UL;
	context[@"kCVPixelFormatType_TwoComponent32Float"] = @843264102UL;
	context[@"kCVPixelFormatType_64RGBAHalf"] = @1380411457UL;
	context[@"kCVPixelFormatType_128RGBAFloat"] = @1380410945UL;
	context[@"kCVPixelFormatType_14Bayer_GRBG"] = @1735549492UL;
	context[@"kCVPixelFormatType_14Bayer_RGGB"] = @1919379252UL;
	context[@"kCVPixelFormatType_14Bayer_BGGR"] = @1650943796UL;
	context[@"kCVPixelFormatType_14Bayer_GBRG"] = @1734505012UL;
	context[@"kCVPixelFormatType_DisparityFloat16"] = @1751411059UL;
	context[@"kCVPixelFormatType_DisparityFloat32"] = @1717856627UL;
	context[@"kCVPixelFormatType_DepthFloat16"] = @1751410032UL;
	context[@"kCVPixelFormatType_DepthFloat32"] = @1717855600UL;
	context[@"kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange"] = @2016686640UL;
	context[@"kCVPixelFormatType_422YpCbCr10BiPlanarVideoRange"] = @2016686642UL;
	context[@"kCVPixelFormatType_444YpCbCr10BiPlanarVideoRange"] = @2016687156UL;
	context[@"kCVPixelFormatType_420YpCbCr10BiPlanarFullRange"] = @2019963440UL;
	context[@"kCVPixelFormatType_422YpCbCr10BiPlanarFullRange"] = @2019963442UL;
	context[@"kCVPixelFormatType_444YpCbCr10BiPlanarFullRange"] = @2019963956UL;
	context[@"kCVPixelFormatType_420YpCbCr8VideoRange_8A_TriPlanar"] = @1982882104UL;
	context[@"kCVPixelFormatType_16VersatileBayer"] = @1651519798UL;
	context[@"kCVPixelFormatType_64RGBA_DownscaledProResRAW"] = @1651521076UL;

	context[@"kCVPixelBufferLock_ReadOnly"] = @1ULL;

	context[@"kCVVersatileBayer_BayerPattern_RGGB"] = @0;
	context[@"kCVVersatileBayer_BayerPattern_GRBG"] = @1;
	context[@"kCVVersatileBayer_BayerPattern_GBRG"] = @2;
	context[@"kCVVersatileBayer_BayerPattern_BGGR"] = @3;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCVPixelBufferHeightKey;
	if (p != NULL) context[@"kCVPixelBufferHeightKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferHeightKey inContext: context];
	p = (void*) &kCVPixelBufferVersatileBayerKey_BayerPattern;
	if (p != NULL) context[@"kCVPixelBufferVersatileBayerKey_BayerPattern"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferVersatileBayerKey_BayerPattern inContext: context];
	p = (void*) &kCVPixelBufferProResRAWKey_SenselSitingOffsets;
	if (p != NULL) context[@"kCVPixelBufferProResRAWKey_SenselSitingOffsets"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferProResRAWKey_SenselSitingOffsets inContext: context];
	p = (void*) &kCVPixelBufferPixelFormatTypeKey;
	if (p != NULL) context[@"kCVPixelBufferPixelFormatTypeKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferPixelFormatTypeKey inContext: context];
	p = (void*) &kCVPixelBufferExtendedPixelsBottomKey;
	if (p != NULL) context[@"kCVPixelBufferExtendedPixelsBottomKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferExtendedPixelsBottomKey inContext: context];
	p = (void*) &kCVPixelBufferProResRAWKey_BlackLevel;
	if (p != NULL) context[@"kCVPixelBufferProResRAWKey_BlackLevel"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferProResRAWKey_BlackLevel inContext: context];
	p = (void*) &kCVPixelBufferIOSurfacePropertiesKey;
	if (p != NULL) context[@"kCVPixelBufferIOSurfacePropertiesKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferIOSurfacePropertiesKey inContext: context];
	p = (void*) &kCVPixelBufferProResRAWKey_WhiteBalanceRedFactor;
	if (p != NULL) context[@"kCVPixelBufferProResRAWKey_WhiteBalanceRedFactor"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferProResRAWKey_WhiteBalanceRedFactor inContext: context];
	p = (void*) &kCVPixelBufferProResRAWKey_GainFactor;
	if (p != NULL) context[@"kCVPixelBufferProResRAWKey_GainFactor"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferProResRAWKey_GainFactor inContext: context];
	p = (void*) &kCVPixelBufferProResRAWKey_ColorMatrix;
	if (p != NULL) context[@"kCVPixelBufferProResRAWKey_ColorMatrix"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferProResRAWKey_ColorMatrix inContext: context];
	p = (void*) &kCVPixelBufferMemoryAllocatorKey;
	if (p != NULL) context[@"kCVPixelBufferMemoryAllocatorKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferMemoryAllocatorKey inContext: context];
	p = (void*) &kCVPixelBufferProResRAWKey_RecommendedCrop;
	if (p != NULL) context[@"kCVPixelBufferProResRAWKey_RecommendedCrop"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferProResRAWKey_RecommendedCrop inContext: context];
	p = (void*) &kCVPixelBufferProResRAWKey_WhiteLevel;
	if (p != NULL) context[@"kCVPixelBufferProResRAWKey_WhiteLevel"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferProResRAWKey_WhiteLevel inContext: context];
	p = (void*) &kCVPixelBufferExtendedPixelsLeftKey;
	if (p != NULL) context[@"kCVPixelBufferExtendedPixelsLeftKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferExtendedPixelsLeftKey inContext: context];
	p = (void*) &kCVPixelBufferOpenGLESTextureCacheCompatibilityKey;
	if (p != NULL) context[@"kCVPixelBufferOpenGLESTextureCacheCompatibilityKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferOpenGLESTextureCacheCompatibilityKey inContext: context];
	p = (void*) &kCVPixelBufferProResRAWKey_WhiteBalanceCCT;
	if (p != NULL) context[@"kCVPixelBufferProResRAWKey_WhiteBalanceCCT"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferProResRAWKey_WhiteBalanceCCT inContext: context];
	p = (void*) &kCVPixelBufferMetalCompatibilityKey;
	if (p != NULL) context[@"kCVPixelBufferMetalCompatibilityKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferMetalCompatibilityKey inContext: context];
	p = (void*) &kCVPixelBufferOpenGLCompatibilityKey;
	if (p != NULL) context[@"kCVPixelBufferOpenGLCompatibilityKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferOpenGLCompatibilityKey inContext: context];
	p = (void*) &kCVPixelBufferCGBitmapContextCompatibilityKey;
	if (p != NULL) context[@"kCVPixelBufferCGBitmapContextCompatibilityKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferCGBitmapContextCompatibilityKey inContext: context];
	p = (void*) &kCVPixelBufferBytesPerRowAlignmentKey;
	if (p != NULL) context[@"kCVPixelBufferBytesPerRowAlignmentKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferBytesPerRowAlignmentKey inContext: context];
	p = (void*) &kCVPixelBufferOpenGLESCompatibilityKey;
	if (p != NULL) context[@"kCVPixelBufferOpenGLESCompatibilityKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferOpenGLESCompatibilityKey inContext: context];
	p = (void*) &kCVPixelBufferWidthKey;
	if (p != NULL) context[@"kCVPixelBufferWidthKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferWidthKey inContext: context];
	p = (void*) &kCVPixelBufferExtendedPixelsRightKey;
	if (p != NULL) context[@"kCVPixelBufferExtendedPixelsRightKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferExtendedPixelsRightKey inContext: context];
	p = (void*) &kCVPixelBufferProResRAWKey_WhiteBalanceBlueFactor;
	if (p != NULL) context[@"kCVPixelBufferProResRAWKey_WhiteBalanceBlueFactor"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferProResRAWKey_WhiteBalanceBlueFactor inContext: context];
	p = (void*) &kCVPixelBufferPlaneAlignmentKey;
	if (p != NULL) context[@"kCVPixelBufferPlaneAlignmentKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferPlaneAlignmentKey inContext: context];
	p = (void*) &kCVPixelBufferCGImageCompatibilityKey;
	if (p != NULL) context[@"kCVPixelBufferCGImageCompatibilityKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferCGImageCompatibilityKey inContext: context];
	p = (void*) &kCVPixelBufferExtendedPixelsTopKey;
	if (p != NULL) context[@"kCVPixelBufferExtendedPixelsTopKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferExtendedPixelsTopKey inContext: context];
}
void load_CoreVideo_CVPixelBuffer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
