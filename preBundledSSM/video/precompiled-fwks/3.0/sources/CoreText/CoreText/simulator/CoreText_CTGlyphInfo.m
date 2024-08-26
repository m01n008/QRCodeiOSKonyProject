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
	context[@"CTGlyphInfoCreateWithGlyph"] = ^id(CGGlyph arg0, id arg1, id arg2) {
		return CTGlyphInfoCreateWithGlyph(arg0, arg1, arg2);
	};
	context[@"CTGlyphInfoGetGlyphName"] = ^id(id arg0) {
		return CTGlyphInfoGetGlyphName(arg0);
	};
	context[@"CTGlyphInfoGetCharacterIdentifier"] = ^CGFontIndex(id arg0) {
		return CTGlyphInfoGetCharacterIdentifier(arg0);
	};
	context[@"CTGlyphInfoGetGlyph"] = ^CGGlyph(id arg0) {
		return CTGlyphInfoGetGlyph(arg0);
	};
	context[@"CTGlyphInfoGetTypeID"] = ^CFTypeID() {
		return CTGlyphInfoGetTypeID();
	};
	context[@"CTGlyphInfoCreateWithGlyphName"] = ^id(id arg0, id arg1, id arg2) {
		return CTGlyphInfoCreateWithGlyphName(arg0, arg1, arg2);
	};
	context[@"CTGlyphInfoGetCharacterCollection"] = ^CTCharacterCollection(id arg0) {
		return CTGlyphInfoGetCharacterCollection(arg0);
	};
	context[@"CTGlyphInfoCreateWithCharacterIdentifier"] = ^id(CGFontIndex arg0, CTCharacterCollection arg1, id arg2) {
		return CTGlyphInfoCreateWithCharacterIdentifier(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCTCharacterCollectionIdentityMapping"] = @0;
	context[@"kCTCharacterCollectionAdobeCNS1"] = @1;
	context[@"kCTCharacterCollectionAdobeGB1"] = @2;
	context[@"kCTCharacterCollectionAdobeJapan1"] = @3;
	context[@"kCTCharacterCollectionAdobeJapan2"] = @4;
	context[@"kCTCharacterCollectionAdobeKorea1"] = @5;
	context[@"kCTIdentityMappingCharacterCollection"] = @0;
	context[@"kCTAdobeCNS1CharacterCollection"] = @1;
	context[@"kCTAdobeGB1CharacterCollection"] = @2;
	context[@"kCTAdobeJapan1CharacterCollection"] = @3;
	context[@"kCTAdobeJapan2CharacterCollection"] = @4;
	context[@"kCTAdobeKorea1CharacterCollection"] = @5;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreText_CTGlyphInfo_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
