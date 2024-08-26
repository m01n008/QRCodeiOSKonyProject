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

	context[@"NSGrammaticalGenderNotSet"] = @0;
	context[@"NSGrammaticalGenderFeminine"] = @1;
	context[@"NSGrammaticalGenderMasculine"] = @2;
	context[@"NSGrammaticalGenderNeuter"] = @3;


	context[@"NSGrammaticalPartOfSpeechNotSet"] = @0;
	context[@"NSGrammaticalPartOfSpeechDeterminer"] = @1;
	context[@"NSGrammaticalPartOfSpeechPronoun"] = @2;
	context[@"NSGrammaticalPartOfSpeechLetter"] = @3;
	context[@"NSGrammaticalPartOfSpeechAdverb"] = @4;
	context[@"NSGrammaticalPartOfSpeechParticle"] = @5;
	context[@"NSGrammaticalPartOfSpeechAdjective"] = @6;
	context[@"NSGrammaticalPartOfSpeechAdposition"] = @7;
	context[@"NSGrammaticalPartOfSpeechVerb"] = @8;
	context[@"NSGrammaticalPartOfSpeechNoun"] = @9;
	context[@"NSGrammaticalPartOfSpeechConjunction"] = @10;
	context[@"NSGrammaticalPartOfSpeechNumeral"] = @11;
	context[@"NSGrammaticalPartOfSpeechInterjection"] = @12;
	context[@"NSGrammaticalPartOfSpeechPreposition"] = @13;
	context[@"NSGrammaticalPartOfSpeechAbbreviation"] = @14;


	context[@"NSGrammaticalNumberNotSet"] = @0;
	context[@"NSGrammaticalNumberSingular"] = @1;
	context[@"NSGrammaticalNumberZero"] = @2;
	context[@"NSGrammaticalNumberPlural"] = @3;
	context[@"NSGrammaticalNumberPluralTwo"] = @4;
	context[@"NSGrammaticalNumberPluralFew"] = @5;
	context[@"NSGrammaticalNumberPluralMany"] = @6;

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
