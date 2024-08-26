#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSMorphology (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation NSMorphology (NSMorphologyNSCustomPronounsCategoryExports)
-(BOOL) jssetCustomPronoun: (NSMorphologyCustomPronoun *) features forLanguage: (NSString *) language error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setCustomPronoun: features forLanguage: language error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
@implementation NSMorphologyCustomPronoun (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSMorphology class], @protocol(NSMorphologyInstanceExports));
	class_addProtocol([NSMorphology class], @protocol(NSMorphologyClassExports));
	class_addProtocol([NSMorphology class], @protocol(NSMorphologyNSCustomPronounsCategoryInstanceExports));
	class_addProtocol([NSMorphology class], @protocol(NSMorphologyNSCustomPronounsCategoryClassExports));
	class_addProtocol([NSMorphologyCustomPronoun class], @protocol(NSMorphologyCustomPronounInstanceExports));
	class_addProtocol([NSMorphologyCustomPronoun class], @protocol(NSMorphologyCustomPronounClassExports));
	class_addProtocol([NSMorphology class], @protocol(NSMorphologyNSMorphologyUserSettingsCategoryInstanceExports));
	class_addProtocol([NSMorphology class], @protocol(NSMorphologyNSMorphologyUserSettingsCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{

	context[@"NSGrammaticalGenderNotSet"] = @0L;
	context[@"NSGrammaticalGenderFeminine"] = @1L;
	context[@"NSGrammaticalGenderMasculine"] = @2L;
	context[@"NSGrammaticalGenderNeuter"] = @3L;


	context[@"NSGrammaticalPartOfSpeechNotSet"] = @0L;
	context[@"NSGrammaticalPartOfSpeechDeterminer"] = @1L;
	context[@"NSGrammaticalPartOfSpeechPronoun"] = @2L;
	context[@"NSGrammaticalPartOfSpeechLetter"] = @3L;
	context[@"NSGrammaticalPartOfSpeechAdverb"] = @4L;
	context[@"NSGrammaticalPartOfSpeechParticle"] = @5L;
	context[@"NSGrammaticalPartOfSpeechAdjective"] = @6L;
	context[@"NSGrammaticalPartOfSpeechAdposition"] = @7L;
	context[@"NSGrammaticalPartOfSpeechVerb"] = @8L;
	context[@"NSGrammaticalPartOfSpeechNoun"] = @9L;
	context[@"NSGrammaticalPartOfSpeechConjunction"] = @10L;
	context[@"NSGrammaticalPartOfSpeechNumeral"] = @11L;
	context[@"NSGrammaticalPartOfSpeechInterjection"] = @12L;
	context[@"NSGrammaticalPartOfSpeechPreposition"] = @13L;
	context[@"NSGrammaticalPartOfSpeechAbbreviation"] = @14L;


	context[@"NSGrammaticalNumberNotSet"] = @0L;
	context[@"NSGrammaticalNumberSingular"] = @1L;
	context[@"NSGrammaticalNumberZero"] = @2L;
	context[@"NSGrammaticalNumberPlural"] = @3L;
	context[@"NSGrammaticalNumberPluralTwo"] = @4L;
	context[@"NSGrammaticalNumberPluralFew"] = @5L;
	context[@"NSGrammaticalNumberPluralMany"] = @6L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSMorphology_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
