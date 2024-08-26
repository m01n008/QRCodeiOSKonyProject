#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSAttributedString (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation NSAttributedString (NSAttributedStringNSExtendedAttributedStringCategoryExports)
-(id) jsinitWithString: (NSString *) str 
{
	id resultVal__;
	resultVal__ = [[self initWithString: str ] autorelease];
	return resultVal__;
}
-(id) jsinitWithString: (NSString *) str attributes: (NSDictionary *) attrs 
{
	id resultVal__;
	resultVal__ = [[self initWithString: str attributes: attrs ] autorelease];
	return resultVal__;
}
-(id) jsinitWithAttributedString: (NSAttributedString *) attrStr 
{
	id resultVal__;
	resultVal__ = [[self initWithAttributedString: attrStr ] autorelease];
	return resultVal__;
}
-(void) jsenumerateAttributesInRange: (NSRange) enumerationRange options: (NSAttributedStringEnumerationOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(NSDictionary  * , NSRange, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(NSDictionary * arg0, NSRange arg1, BOOL * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithRange: arg1 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateAttributesInRange: enumerationRange options: opts usingBlock: block_ ];
}
-(void) jsenumerateAttribute: (NSAttributedStringKey) attrName inRange: (NSRange) enumerationRange options: (NSAttributedStringEnumerationOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(id , NSRange, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(id arg0, NSRange arg1, BOOL * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithRange: arg1 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateAttribute: attrName inRange: enumerationRange options: opts usingBlock: block_ ];
}
@end
@implementation NSAttributedStringMarkdownSourcePosition (Exports)
-(id) jsinitWithStartLine: (NSInteger) startLine startColumn: (NSInteger) startColumn endLine: (NSInteger) endLine endColumn: (NSInteger) endColumn 
{
	id resultVal__;
	resultVal__ = [[self initWithStartLine: startLine startColumn: startColumn endLine: endLine endColumn: endColumn ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation NSAttributedStringMarkdownParsingOptions (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
@end
@implementation NSAttributedString (NSAttributedStringNSAttributedStringCreateFromMarkdownCategoryExports)
-(id) jsinitWithContentsOfMarkdownFileAtURL: (NSURL *) markdownFile options: (NSAttributedStringMarkdownParsingOptions *) options baseURL: (NSURL *) baseURL error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithContentsOfMarkdownFileAtURL: markdownFile options: options baseURL: baseURL error: &error_ ] autorelease];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsinitWithMarkdown: (NSData *) markdown options: (NSAttributedStringMarkdownParsingOptions *) options baseURL: (NSURL *) baseURL error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithMarkdown: markdown options: options baseURL: baseURL error: &error_ ] autorelease];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsinitWithMarkdownString: (NSString *) markdownString options: (NSAttributedStringMarkdownParsingOptions *) options baseURL: (NSURL *) baseURL error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithMarkdownString: markdownString options: options baseURL: baseURL error: &error_ ] autorelease];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
@implementation NSAttributedString (NSAttributedStringNSAttributedStringFormattingCategoryExports)
-(id) jsinitWithFormat: (NSAttributedString *) format options: (NSAttributedStringFormattingOptions) options locale: (NSLocale *) locale arguments: (NSArray *) args 
{
	id resultVal__;
	if ([args count] == 0) resultVal__ = [[self initWithFormat: format options: options locale: locale ] autorelease];
	else if ([args count] == 1) resultVal__ = [[self initWithFormat: format options: options locale: locale , args[0]] autorelease];
	else if ([args count] == 2) resultVal__ = [[self initWithFormat: format options: options locale: locale , args[0], args[1]] autorelease];
	else if ([args count] == 3) resultVal__ = [[self initWithFormat: format options: options locale: locale , args[0], args[1], args[2]] autorelease];
	else if ([args count] == 4) resultVal__ = [[self initWithFormat: format options: options locale: locale , args[0], args[1], args[2], args[3]] autorelease];
	else if ([args count] == 5) resultVal__ = [[self initWithFormat: format options: options locale: locale , args[0], args[1], args[2], args[3], args[4]] autorelease];
	else if ([args count] == 6) resultVal__ = [[self initWithFormat: format options: options locale: locale , args[0], args[1], args[2], args[3], args[4], args[5]] autorelease];
	else if ([args count] == 7) resultVal__ = [[self initWithFormat: format options: options locale: locale , args[0], args[1], args[2], args[3], args[4], args[5], args[6]] autorelease];
	else if ([args count] == 8) resultVal__ = [[self initWithFormat: format options: options locale: locale , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]] autorelease];
	else if ([args count] == 9) resultVal__ = [[self initWithFormat: format options: options locale: locale , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]] autorelease];
	else if ([args count] >= 10) resultVal__ = [[self initWithFormat: format options: options locale: locale , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]] autorelease];
	return resultVal__;
}
+(id) jslocalizedAttributedStringWithFormat: (NSAttributedString *) format arguments: (NSArray *) args 
{
	id resultVal__;
	if ([args count] == 0) resultVal__ = [self localizedAttributedStringWithFormat: format ];
	else if ([args count] == 1) resultVal__ = [self localizedAttributedStringWithFormat: format , args[0]];
	else if ([args count] == 2) resultVal__ = [self localizedAttributedStringWithFormat: format , args[0], args[1]];
	else if ([args count] == 3) resultVal__ = [self localizedAttributedStringWithFormat: format , args[0], args[1], args[2]];
	else if ([args count] == 4) resultVal__ = [self localizedAttributedStringWithFormat: format , args[0], args[1], args[2], args[3]];
	else if ([args count] == 5) resultVal__ = [self localizedAttributedStringWithFormat: format , args[0], args[1], args[2], args[3], args[4]];
	else if ([args count] == 6) resultVal__ = [self localizedAttributedStringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5]];
	else if ([args count] == 7) resultVal__ = [self localizedAttributedStringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6]];
	else if ([args count] == 8) resultVal__ = [self localizedAttributedStringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]];
	else if ([args count] == 9) resultVal__ = [self localizedAttributedStringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]];
	else if ([args count] >= 10) resultVal__ = [self localizedAttributedStringWithFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]];
	return resultVal__;
}
+(id) jslocalizedAttributedStringWithFormat: (NSAttributedString *) format options: (NSAttributedStringFormattingOptions) options arguments: (NSArray *) args 
{
	id resultVal__;
	if ([args count] == 0) resultVal__ = [self localizedAttributedStringWithFormat: format options: options ];
	else if ([args count] == 1) resultVal__ = [self localizedAttributedStringWithFormat: format options: options , args[0]];
	else if ([args count] == 2) resultVal__ = [self localizedAttributedStringWithFormat: format options: options , args[0], args[1]];
	else if ([args count] == 3) resultVal__ = [self localizedAttributedStringWithFormat: format options: options , args[0], args[1], args[2]];
	else if ([args count] == 4) resultVal__ = [self localizedAttributedStringWithFormat: format options: options , args[0], args[1], args[2], args[3]];
	else if ([args count] == 5) resultVal__ = [self localizedAttributedStringWithFormat: format options: options , args[0], args[1], args[2], args[3], args[4]];
	else if ([args count] == 6) resultVal__ = [self localizedAttributedStringWithFormat: format options: options , args[0], args[1], args[2], args[3], args[4], args[5]];
	else if ([args count] == 7) resultVal__ = [self localizedAttributedStringWithFormat: format options: options , args[0], args[1], args[2], args[3], args[4], args[5], args[6]];
	else if ([args count] == 8) resultVal__ = [self localizedAttributedStringWithFormat: format options: options , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]];
	else if ([args count] == 9) resultVal__ = [self localizedAttributedStringWithFormat: format options: options , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]];
	else if ([args count] >= 10) resultVal__ = [self localizedAttributedStringWithFormat: format options: options , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]];
	return resultVal__;
}
@end
@implementation NSMutableAttributedString (NSMutableAttributedStringNSMutableAttributedStringFormattingCategoryExports)
-(void) jsappendLocalizedFormat: (NSAttributedString *) format arguments: (NSArray *) args 
{
	if ([args count] == 0) [self appendLocalizedFormat: format ];
	else if ([args count] == 1) [self appendLocalizedFormat: format , args[0]];
	else if ([args count] == 2) [self appendLocalizedFormat: format , args[0], args[1]];
	else if ([args count] == 3) [self appendLocalizedFormat: format , args[0], args[1], args[2]];
	else if ([args count] == 4) [self appendLocalizedFormat: format , args[0], args[1], args[2], args[3]];
	else if ([args count] == 5) [self appendLocalizedFormat: format , args[0], args[1], args[2], args[3], args[4]];
	else if ([args count] == 6) [self appendLocalizedFormat: format , args[0], args[1], args[2], args[3], args[4], args[5]];
	else if ([args count] == 7) [self appendLocalizedFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6]];
	else if ([args count] == 8) [self appendLocalizedFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]];
	else if ([args count] == 9) [self appendLocalizedFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]];
	else if ([args count] >= 10) [self appendLocalizedFormat: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]];
}
@end
@implementation NSPresentationIntent (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringInstanceExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringClassExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSExtendedAttributedStringCategoryInstanceExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSExtendedAttributedStringCategoryClassExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringInstanceExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringClassExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringNSExtendedMutableAttributedStringCategoryInstanceExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringNSExtendedMutableAttributedStringCategoryClassExports));
	class_addProtocol([NSAttributedStringMarkdownSourcePosition class], @protocol(NSAttributedStringMarkdownSourcePositionInstanceExports));
	class_addProtocol([NSAttributedStringMarkdownSourcePosition class], @protocol(NSAttributedStringMarkdownSourcePositionClassExports));
	class_addProtocol([NSAttributedStringMarkdownParsingOptions class], @protocol(NSAttributedStringMarkdownParsingOptionsInstanceExports));
	class_addProtocol([NSAttributedStringMarkdownParsingOptions class], @protocol(NSAttributedStringMarkdownParsingOptionsClassExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSAttributedStringCreateFromMarkdownCategoryInstanceExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSAttributedStringCreateFromMarkdownCategoryClassExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSAttributedStringFormattingCategoryInstanceExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSAttributedStringFormattingCategoryClassExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringNSMutableAttributedStringFormattingCategoryInstanceExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringNSMutableAttributedStringFormattingCategoryClassExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSMorphologyCategoryInstanceExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSMorphologyCategoryClassExports));
	class_addProtocol([NSPresentationIntent class], @protocol(NSPresentationIntentInstanceExports));
	class_addProtocol([NSPresentationIntent class], @protocol(NSPresentationIntentClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{

	context[@"NSAttributedStringEnumerationReverse"] = @2U;
	context[@"NSAttributedStringEnumerationLongestEffectiveRangeNotRequired"] = @1048576U;


	context[@"NSInlinePresentationIntentEmphasized"] = @1U;
	context[@"NSInlinePresentationIntentStronglyEmphasized"] = @2U;
	context[@"NSInlinePresentationIntentCode"] = @4U;
	context[@"NSInlinePresentationIntentStrikethrough"] = @32U;
	context[@"NSInlinePresentationIntentSoftBreak"] = @64U;
	context[@"NSInlinePresentationIntentLineBreak"] = @128U;
	context[@"NSInlinePresentationIntentInlineHTML"] = @256U;
	context[@"NSInlinePresentationIntentBlockHTML"] = @512U;


	context[@"NSAttributedStringMarkdownParsingFailureReturnError"] = @0;
	context[@"NSAttributedStringMarkdownParsingFailureReturnPartiallyParsedIfPossible"] = @1;


	context[@"NSAttributedStringMarkdownInterpretedSyntaxFull"] = @0;
	context[@"NSAttributedStringMarkdownInterpretedSyntaxInlineOnly"] = @1;
	context[@"NSAttributedStringMarkdownInterpretedSyntaxInlineOnlyPreservingWhitespace"] = @2;


	context[@"NSAttributedStringFormattingInsertArgumentAttributesWithoutMerging"] = @1U;
	context[@"NSAttributedStringFormattingApplyReplacementIndexAttribute"] = @2U;


	context[@"NSPresentationIntentKindParagraph"] = @0;
	context[@"NSPresentationIntentKindHeader"] = @1;
	context[@"NSPresentationIntentKindOrderedList"] = @2;
	context[@"NSPresentationIntentKindUnorderedList"] = @3;
	context[@"NSPresentationIntentKindListItem"] = @4;
	context[@"NSPresentationIntentKindCodeBlock"] = @5;
	context[@"NSPresentationIntentKindBlockQuote"] = @6;
	context[@"NSPresentationIntentKindThematicBreak"] = @7;
	context[@"NSPresentationIntentKindTable"] = @8;
	context[@"NSPresentationIntentKindTableHeaderRow"] = @9;
	context[@"NSPresentationIntentKindTableRow"] = @10;
	context[@"NSPresentationIntentKindTableCell"] = @11;


	context[@"NSPresentationIntentTableColumnAlignmentLeft"] = @0;
	context[@"NSPresentationIntentTableColumnAlignmentCenter"] = @1;
	context[@"NSPresentationIntentTableColumnAlignmentRight"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSInlinePresentationIntentAttributeName;
	if (p != NULL) context[@"NSInlinePresentationIntentAttributeName"] = NSInlinePresentationIntentAttributeName;
	p = (void*) &NSAlternateDescriptionAttributeName;
	if (p != NULL) context[@"NSAlternateDescriptionAttributeName"] = NSAlternateDescriptionAttributeName;
	p = (void*) &NSImageURLAttributeName;
	if (p != NULL) context[@"NSImageURLAttributeName"] = NSImageURLAttributeName;
	p = (void*) &NSLanguageIdentifierAttributeName;
	if (p != NULL) context[@"NSLanguageIdentifierAttributeName"] = NSLanguageIdentifierAttributeName;
	p = (void*) &NSMarkdownSourcePositionAttributeName;
	if (p != NULL) context[@"NSMarkdownSourcePositionAttributeName"] = NSMarkdownSourcePositionAttributeName;
	p = (void*) &NSReplacementIndexAttributeName;
	if (p != NULL) context[@"NSReplacementIndexAttributeName"] = NSReplacementIndexAttributeName;
	p = (void*) &NSMorphologyAttributeName;
	if (p != NULL) context[@"NSMorphologyAttributeName"] = NSMorphologyAttributeName;
	p = (void*) &NSInflectionRuleAttributeName;
	if (p != NULL) context[@"NSInflectionRuleAttributeName"] = NSInflectionRuleAttributeName;
	p = (void*) &NSInflectionAlternativeAttributeName;
	if (p != NULL) context[@"NSInflectionAlternativeAttributeName"] = NSInflectionAlternativeAttributeName;
	p = (void*) &NSPresentationIntentAttributeName;
	if (p != NULL) context[@"NSPresentationIntentAttributeName"] = NSPresentationIntentAttributeName;
}
void load_Foundation_NSAttributedString_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
