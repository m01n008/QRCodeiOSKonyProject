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
	context[@"kCFStringTokenizerUnitWord"] = @0UL;
	context[@"kCFStringTokenizerUnitSentence"] = @1UL;
	context[@"kCFStringTokenizerUnitParagraph"] = @2UL;
	context[@"kCFStringTokenizerUnitLineBreak"] = @3UL;
	context[@"kCFStringTokenizerUnitWordBoundary"] = @4UL;
	context[@"kCFStringTokenizerAttributeLatinTranscription"] = @65536UL;
	context[@"kCFStringTokenizerAttributeLanguage"] = @131072UL;

	context[@"kCFStringTokenizerTokenNone"] = @0UL;
	context[@"kCFStringTokenizerTokenNormal"] = @1UL;
	context[@"kCFStringTokenizerTokenHasSubTokensMask"] = @2UL;
	context[@"kCFStringTokenizerTokenHasDerivedSubTokensMask"] = @4UL;
	context[@"kCFStringTokenizerTokenHasHasNumbersMask"] = @8UL;
	context[@"kCFStringTokenizerTokenHasNonLettersMask"] = @16UL;
	context[@"kCFStringTokenizerTokenIsCJWordMask"] = @32UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFStringTokenizer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
