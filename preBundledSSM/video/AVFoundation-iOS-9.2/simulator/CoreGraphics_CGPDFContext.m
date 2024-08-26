#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCGPDFContextAllowsCopying;
	if (p != NULL) context[@"kCGPDFContextAllowsCopying"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextAllowsCopying inContext: context];
	p = (void*) &kCGPDFContextUserPassword;
	if (p != NULL) context[@"kCGPDFContextUserPassword"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextUserPassword inContext: context];
	p = (void*) &kCGPDFContextTrimBox;
	if (p != NULL) context[@"kCGPDFContextTrimBox"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextTrimBox inContext: context];
	p = (void*) &kCGPDFContextSubject;
	if (p != NULL) context[@"kCGPDFContextSubject"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextSubject inContext: context];
	p = (void*) &kCGPDFContextOwnerPassword;
	if (p != NULL) context[@"kCGPDFContextOwnerPassword"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextOwnerPassword inContext: context];
	p = (void*) &kCGPDFContextAllowsPrinting;
	if (p != NULL) context[@"kCGPDFContextAllowsPrinting"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextAllowsPrinting inContext: context];
	p = (void*) &kCGPDFContextBleedBox;
	if (p != NULL) context[@"kCGPDFContextBleedBox"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextBleedBox inContext: context];
	p = (void*) &kCGPDFContextMediaBox;
	if (p != NULL) context[@"kCGPDFContextMediaBox"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextMediaBox inContext: context];
	p = (void*) &kCGPDFContextEncryptionKeyLength;
	if (p != NULL) context[@"kCGPDFContextEncryptionKeyLength"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextEncryptionKeyLength inContext: context];
	p = (void*) &kCGPDFContextKeywords;
	if (p != NULL) context[@"kCGPDFContextKeywords"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextKeywords inContext: context];
	p = (void*) &kCGPDFContextArtBox;
	if (p != NULL) context[@"kCGPDFContextArtBox"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextArtBox inContext: context];
	p = (void*) &kCGPDFContextCropBox;
	if (p != NULL) context[@"kCGPDFContextCropBox"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextCropBox inContext: context];
	p = (void*) &kCGPDFContextTitle;
	if (p != NULL) context[@"kCGPDFContextTitle"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextTitle inContext: context];
	p = (void*) &kCGPDFContextAuthor;
	if (p != NULL) context[@"kCGPDFContextAuthor"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextAuthor inContext: context];
	p = (void*) &kCGPDFContextCreator;
	if (p != NULL) context[@"kCGPDFContextCreator"] = [JSValue valueWithObject: (__bridge id) kCGPDFContextCreator inContext: context];
}
void load_CoreGraphics_CGPDFContext_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
