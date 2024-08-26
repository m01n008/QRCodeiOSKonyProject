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
	context[@"CGPDFContextSetURLForRect"] = ^void(id arg0, id arg1, CGRect arg2) {
		CGPDFContextSetURLForRect(arg0, arg1, arg2);
	};
	context[@"CGPDFContextBeginTag"] = ^void(id arg0, CGPDFTagType arg1, id arg2) {
		CGPDFContextBeginTag(arg0, arg1, arg2);
	};
	context[@"CGPDFContextSetOutline"] = ^void(id arg0, id arg1) {
		CGPDFContextSetOutline(arg0, arg1);
	};
	context[@"CGPDFContextSetDestinationForRect"] = ^void(id arg0, id arg1, CGRect arg2) {
		CGPDFContextSetDestinationForRect(arg0, arg1, arg2);
	};
	context[@"CGPDFContextEndTag"] = ^void(id arg0) {
		CGPDFContextEndTag(arg0);
	};
	context[@"CGPDFContextAddDestinationAtPoint"] = ^void(id arg0, id arg1, CGPoint arg2) {
		CGPDFContextAddDestinationAtPoint(arg0, arg1, arg2);
	};
	context[@"CGPDFContextAddDocumentMetadata"] = ^void(id arg0, id arg1) {
		CGPDFContextAddDocumentMetadata(arg0, arg1);
	};
	context[@"CGPDFContextClose"] = ^void(id arg0) {
		CGPDFContextClose(arg0);
	};
	context[@"CGPDFContextBeginPage"] = ^void(id arg0, id arg1) {
		CGPDFContextBeginPage(arg0, arg1);
	};
	context[@"CGPDFContextEndPage"] = ^void(id arg0) {
		CGPDFContextEndPage(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"CGPDFTagTypeDocument"] = @100;
	context[@"CGPDFTagTypePart"] = @101;
	context[@"CGPDFTagTypeArt"] = @102;
	context[@"CGPDFTagTypeSection"] = @103;
	context[@"CGPDFTagTypeDiv"] = @104;
	context[@"CGPDFTagTypeBlockQuote"] = @105;
	context[@"CGPDFTagTypeCaption"] = @106;
	context[@"CGPDFTagTypeTOC"] = @107;
	context[@"CGPDFTagTypeTOCI"] = @108;
	context[@"CGPDFTagTypeIndex"] = @109;
	context[@"CGPDFTagTypeNonStructure"] = @110;
	context[@"CGPDFTagTypePrivate"] = @111;
	context[@"CGPDFTagTypeParagraph"] = @200;
	context[@"CGPDFTagTypeHeader"] = @201;
	context[@"CGPDFTagTypeHeader1"] = @202;
	context[@"CGPDFTagTypeHeader2"] = @203;
	context[@"CGPDFTagTypeHeader3"] = @204;
	context[@"CGPDFTagTypeHeader4"] = @205;
	context[@"CGPDFTagTypeHeader5"] = @206;
	context[@"CGPDFTagTypeHeader6"] = @207;
	context[@"CGPDFTagTypeList"] = @300;
	context[@"CGPDFTagTypeListItem"] = @301;
	context[@"CGPDFTagTypeLabel"] = @302;
	context[@"CGPDFTagTypeListBody"] = @303;
	context[@"CGPDFTagTypeTable"] = @400;
	context[@"CGPDFTagTypeTableRow"] = @401;
	context[@"CGPDFTagTypeTableHeaderCell"] = @402;
	context[@"CGPDFTagTypeTableDataCell"] = @403;
	context[@"CGPDFTagTypeTableHeader"] = @404;
	context[@"CGPDFTagTypeTableBody"] = @405;
	context[@"CGPDFTagTypeTableFooter"] = @406;
	context[@"CGPDFTagTypeSpan"] = @500;
	context[@"CGPDFTagTypeQuote"] = @501;
	context[@"CGPDFTagTypeNote"] = @502;
	context[@"CGPDFTagTypeReference"] = @503;
	context[@"CGPDFTagTypeBibliography"] = @504;
	context[@"CGPDFTagTypeCode"] = @505;
	context[@"CGPDFTagTypeLink"] = @506;
	context[@"CGPDFTagTypeAnnotation"] = @507;
	context[@"CGPDFTagTypeRuby"] = @600;
	context[@"CGPDFTagTypeRubyBaseText"] = @601;
	context[@"CGPDFTagTypeRubyAnnotationText"] = @602;
	context[@"CGPDFTagTypeRubyPunctuation"] = @603;
	context[@"CGPDFTagTypeWarichu"] = @604;
	context[@"CGPDFTagTypeWarichuText"] = @605;
	context[@"CGPDFTagTypeWarichuPunctiation"] = @606;
	context[@"CGPDFTagTypeFigure"] = @700;
	context[@"CGPDFTagTypeFormula"] = @701;
	context[@"CGPDFTagTypeForm"] = @702;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCGPDFXInfo;
	if (p != NULL) context[@"kCGPDFXInfo"] = [JSValue valueWithObject: (__bridge id) kCGPDFXInfo inContext: context];
	p = (void*) &kCGPDFContextUserPassword;
	if (p != NULL) context[@"kCGPDFContextUserPassword"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextUserPassword inContext: context];
	p = (void*) &kCGPDFXRegistryName;
	if (p != NULL) context[@"kCGPDFXRegistryName"] = [JSValue valueWithObject: (__bridge id) kCGPDFXRegistryName inContext: context];
	p = (void*) &kCGPDFContextOutputIntent;
	if (p != NULL) context[@"kCGPDFContextOutputIntent"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextOutputIntent inContext: context];
	p = (void*) &kCGPDFContextAllowsCopying;
	if (p != NULL) context[@"kCGPDFContextAllowsCopying"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextAllowsCopying inContext: context];
	p = (void*) &kCGPDFContextTitle;
	if (p != NULL) context[@"kCGPDFContextTitle"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextTitle inContext: context];
	p = (void*) &kCGPDFTagPropertyAlternativeText;
	if (p != NULL) context[@"kCGPDFTagPropertyAlternativeText"] = [JSValue valueWithObject: (__bridge id) kCGPDFTagPropertyAlternativeText inContext: context];
	p = (void*) &kCGPDFXOutputIntentSubtype;
	if (p != NULL) context[@"kCGPDFXOutputIntentSubtype"] = [JSValue valueWithObject: (__bridge id) kCGPDFXOutputIntentSubtype inContext: context];
	p = (void*) &kCGPDFXOutputCondition;
	if (p != NULL) context[@"kCGPDFXOutputCondition"] = [JSValue valueWithObject: (__bridge id) kCGPDFXOutputCondition inContext: context];
	p = (void*) &kCGPDFContextTrimBox;
	if (p != NULL) context[@"kCGPDFContextTrimBox"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextTrimBox inContext: context];
	p = (void*) &kCGPDFContextAuthor;
	if (p != NULL) context[@"kCGPDFContextAuthor"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextAuthor inContext: context];
	p = (void*) &kCGPDFTagPropertyLanguageText;
	if (p != NULL) context[@"kCGPDFTagPropertyLanguageText"] = [JSValue valueWithObject: (__bridge id) kCGPDFTagPropertyLanguageText inContext: context];
	p = (void*) &kCGPDFContextMediaBox;
	if (p != NULL) context[@"kCGPDFContextMediaBox"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextMediaBox inContext: context];
	p = (void*) &kCGPDFContextKeywords;
	if (p != NULL) context[@"kCGPDFContextKeywords"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextKeywords inContext: context];
	p = (void*) &kCGPDFContextOwnerPassword;
	if (p != NULL) context[@"kCGPDFContextOwnerPassword"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextOwnerPassword inContext: context];
	p = (void*) &kCGPDFContextOutputIntents;
	if (p != NULL) context[@"kCGPDFContextOutputIntents"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextOutputIntents inContext: context];
	p = (void*) &kCGPDFContextSubject;
	if (p != NULL) context[@"kCGPDFContextSubject"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextSubject inContext: context];
	p = (void*) &kCGPDFTagPropertyActualText;
	if (p != NULL) context[@"kCGPDFTagPropertyActualText"] = [JSValue valueWithObject: (__bridge id) kCGPDFTagPropertyActualText inContext: context];
	p = (void*) &kCGPDFContextCreateLinearizedPDF;
	if (p != NULL) context[@"kCGPDFContextCreateLinearizedPDF"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextCreateLinearizedPDF inContext: context];
	p = (void*) &kCGPDFContextArtBox;
	if (p != NULL) context[@"kCGPDFContextArtBox"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextArtBox inContext: context];
	p = (void*) &kCGPDFTagPropertyTitleText;
	if (p != NULL) context[@"kCGPDFTagPropertyTitleText"] = [JSValue valueWithObject: (__bridge id) kCGPDFTagPropertyTitleText inContext: context];
	p = (void*) &kCGPDFContextCreator;
	if (p != NULL) context[@"kCGPDFContextCreator"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextCreator inContext: context];
	p = (void*) &kCGPDFXDestinationOutputProfile;
	if (p != NULL) context[@"kCGPDFXDestinationOutputProfile"] = [JSValue valueWithObject: (__bridge id) kCGPDFXDestinationOutputProfile inContext: context];
	p = (void*) &kCGPDFContextAccessPermissions;
	if (p != NULL) context[@"kCGPDFContextAccessPermissions"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextAccessPermissions inContext: context];
	p = (void*) &kCGPDFContextEncryptionKeyLength;
	if (p != NULL) context[@"kCGPDFContextEncryptionKeyLength"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextEncryptionKeyLength inContext: context];
	p = (void*) &kCGPDFContextCreatePDFA;
	if (p != NULL) context[@"kCGPDFContextCreatePDFA"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextCreatePDFA inContext: context];
	p = (void*) &kCGPDFXOutputConditionIdentifier;
	if (p != NULL) context[@"kCGPDFXOutputConditionIdentifier"] = [JSValue valueWithObject: (__bridge id) kCGPDFXOutputConditionIdentifier inContext: context];
	p = (void*) &kCGPDFContextAllowsPrinting;
	if (p != NULL) context[@"kCGPDFContextAllowsPrinting"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextAllowsPrinting inContext: context];
	p = (void*) &kCGPDFContextBleedBox;
	if (p != NULL) context[@"kCGPDFContextBleedBox"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextBleedBox inContext: context];
	p = (void*) &kCGPDFContextCropBox;
	if (p != NULL) context[@"kCGPDFContextCropBox"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextCropBox inContext: context];
}
void load_CoreGraphics_CGPDFContext_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
