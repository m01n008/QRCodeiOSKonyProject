#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSAttributedString (NSAttributedStringNSAttributedStringDocumentFormatsCategoryExports)
-(NSFileWrapper *) jsfileWrapperFromRange: (NSRange) range documentAttributes: (NSDictionary *) dict error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSFileWrapper * resultVal__;
	resultVal__ = [self fileWrapperFromRange: range documentAttributes: dict error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(NSData *) jsdataFromRange: (NSRange) range documentAttributes: (NSDictionary *) dict error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSData * resultVal__;
	resultVal__ = [self dataFromRange: range documentAttributes: dict error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSAttributedStringDocumentFormatsCategoryInstanceExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSAttributedStringDocumentFormatsCategoryClassExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringNSAttributedStringAttributeFixingCategoryInstanceExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringNSAttributedStringAttributeFixingCategoryClassExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSAttributedStringKitAdditionsCategoryInstanceExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSAttributedStringKitAdditionsCategoryClassExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringNSDeprecatedKitAdditionsCategoryInstanceExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringNSDeprecatedKitAdditionsCategoryClassExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSDeprecatedKitAdditionsCategoryInstanceExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSDeprecatedKitAdditionsCategoryClassExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringNSMutableAttributedStringDocumentFormatsCategoryInstanceExports));
	class_addProtocol([NSMutableAttributedString class], @protocol(NSMutableAttributedStringNSMutableAttributedStringDocumentFormatsCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSUnderlineStyleNone"] = @0;
	context[@"NSUnderlineStyleSingle"] = @1;
	context[@"NSUnderlineStyleThick"] = @2;
	context[@"NSUnderlineStyleDouble"] = @9;
	context[@"NSUnderlinePatternSolid"] = @0;
	context[@"NSUnderlinePatternDot"] = @256;
	context[@"NSUnderlinePatternDash"] = @512;
	context[@"NSUnderlinePatternDashDot"] = @768;
	context[@"NSUnderlinePatternDashDotDot"] = @1024;
	context[@"NSUnderlineByWord"] = @32768;

	context[@"NSWritingDirectionEmbedding"] = @0;
	context[@"NSWritingDirectionOverride"] = @2;

	context[@"NSTextWritingDirectionEmbedding"] = @0;
	context[@"NSTextWritingDirectionOverride"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSDefaultAttributesDocumentAttribute;
	if (p != NULL) context[@"NSDefaultAttributesDocumentAttribute"] = NSDefaultAttributesDocumentAttribute;
	p = (void*) &NSHyphenationFactorDocumentAttribute;
	if (p != NULL) context[@"NSHyphenationFactorDocumentAttribute"] = NSHyphenationFactorDocumentAttribute;
	p = (void*) &NSStrokeColorAttributeName;
	if (p != NULL) context[@"NSStrokeColorAttributeName"] = NSStrokeColorAttributeName;
	p = (void*) &NSLigatureAttributeName;
	if (p != NULL) context[@"NSLigatureAttributeName"] = NSLigatureAttributeName;
	p = (void*) &NSVerticalGlyphFormAttributeName;
	if (p != NULL) context[@"NSVerticalGlyphFormAttributeName"] = NSVerticalGlyphFormAttributeName;
	p = (void*) &NSBackgroundColorDocumentAttribute;
	if (p != NULL) context[@"NSBackgroundColorDocumentAttribute"] = NSBackgroundColorDocumentAttribute;
	p = (void*) &NSTextLayoutSectionOrientation;
	if (p != NULL) context[@"NSTextLayoutSectionOrientation"] = NSTextLayoutSectionOrientation;
	p = (void*) &NSTextLayoutSectionRange;
	if (p != NULL) context[@"NSTextLayoutSectionRange"] = NSTextLayoutSectionRange;
	p = (void*) &NSKernAttributeName;
	if (p != NULL) context[@"NSKernAttributeName"] = NSKernAttributeName;
	p = (void*) &NSTextEffectLetterpressStyle;
	if (p != NULL) context[@"NSTextEffectLetterpressStyle"] = NSTextEffectLetterpressStyle;
	p = (void*) &NSWritingDirectionAttributeName;
	if (p != NULL) context[@"NSWritingDirectionAttributeName"] = NSWritingDirectionAttributeName;
	p = (void*) &NSPlainTextDocumentType;
	if (p != NULL) context[@"NSPlainTextDocumentType"] = NSPlainTextDocumentType;
	p = (void*) &NSParagraphStyleAttributeName;
	if (p != NULL) context[@"NSParagraphStyleAttributeName"] = NSParagraphStyleAttributeName;
	p = (void*) &NSPaperMarginDocumentAttribute;
	if (p != NULL) context[@"NSPaperMarginDocumentAttribute"] = NSPaperMarginDocumentAttribute;
	p = (void*) &NSStrikethroughStyleAttributeName;
	if (p != NULL) context[@"NSStrikethroughStyleAttributeName"] = NSStrikethroughStyleAttributeName;
	p = (void*) &NSDefaultTabIntervalDocumentAttribute;
	if (p != NULL) context[@"NSDefaultTabIntervalDocumentAttribute"] = NSDefaultTabIntervalDocumentAttribute;
	p = (void*) &NSStrokeWidthAttributeName;
	if (p != NULL) context[@"NSStrokeWidthAttributeName"] = NSStrokeWidthAttributeName;
	p = (void*) &NSTextLayoutSectionsAttribute;
	if (p != NULL) context[@"NSTextLayoutSectionsAttribute"] = NSTextLayoutSectionsAttribute;
	p = (void*) &NSLinkAttributeName;
	if (p != NULL) context[@"NSLinkAttributeName"] = NSLinkAttributeName;
	p = (void*) &NSViewZoomDocumentAttribute;
	if (p != NULL) context[@"NSViewZoomDocumentAttribute"] = NSViewZoomDocumentAttribute;
	p = (void*) &NSBaselineOffsetAttributeName;
	if (p != NULL) context[@"NSBaselineOffsetAttributeName"] = NSBaselineOffsetAttributeName;
	p = (void*) &NSExpansionAttributeName;
	if (p != NULL) context[@"NSExpansionAttributeName"] = NSExpansionAttributeName;
	p = (void*) &NSUnderlineStyleAttributeName;
	if (p != NULL) context[@"NSUnderlineStyleAttributeName"] = NSUnderlineStyleAttributeName;
	p = (void*) &NSShadowAttributeName;
	if (p != NULL) context[@"NSShadowAttributeName"] = NSShadowAttributeName;
	p = (void*) &NSDocumentTypeDocumentAttribute;
	if (p != NULL) context[@"NSDocumentTypeDocumentAttribute"] = NSDocumentTypeDocumentAttribute;
	p = (void*) &NSStrikethroughColorAttributeName;
	if (p != NULL) context[@"NSStrikethroughColorAttributeName"] = NSStrikethroughColorAttributeName;
	p = (void*) &NSTextEffectAttributeName;
	if (p != NULL) context[@"NSTextEffectAttributeName"] = NSTextEffectAttributeName;
	p = (void*) &NSRTFDTextDocumentType;
	if (p != NULL) context[@"NSRTFDTextDocumentType"] = NSRTFDTextDocumentType;
	p = (void*) &NSViewModeDocumentAttribute;
	if (p != NULL) context[@"NSViewModeDocumentAttribute"] = NSViewModeDocumentAttribute;
	p = (void*) &NSForegroundColorAttributeName;
	if (p != NULL) context[@"NSForegroundColorAttributeName"] = NSForegroundColorAttributeName;
	p = (void*) &NSBackgroundColorAttributeName;
	if (p != NULL) context[@"NSBackgroundColorAttributeName"] = NSBackgroundColorAttributeName;
	p = (void*) &NSObliquenessAttributeName;
	if (p != NULL) context[@"NSObliquenessAttributeName"] = NSObliquenessAttributeName;
	p = (void*) &NSAttachmentAttributeName;
	if (p != NULL) context[@"NSAttachmentAttributeName"] = NSAttachmentAttributeName;
	p = (void*) &NSReadOnlyDocumentAttribute;
	if (p != NULL) context[@"NSReadOnlyDocumentAttribute"] = NSReadOnlyDocumentAttribute;
	p = (void*) &NSUnderlineColorAttributeName;
	if (p != NULL) context[@"NSUnderlineColorAttributeName"] = NSUnderlineColorAttributeName;
	p = (void*) &NSFontAttributeName;
	if (p != NULL) context[@"NSFontAttributeName"] = NSFontAttributeName;
	p = (void*) &NSViewSizeDocumentAttribute;
	if (p != NULL) context[@"NSViewSizeDocumentAttribute"] = NSViewSizeDocumentAttribute;
	p = (void*) &NSHTMLTextDocumentType;
	if (p != NULL) context[@"NSHTMLTextDocumentType"] = NSHTMLTextDocumentType;
	p = (void*) &NSRTFTextDocumentType;
	if (p != NULL) context[@"NSRTFTextDocumentType"] = NSRTFTextDocumentType;
	p = (void*) &NSCharacterEncodingDocumentAttribute;
	if (p != NULL) context[@"NSCharacterEncodingDocumentAttribute"] = NSCharacterEncodingDocumentAttribute;
	p = (void*) &NSPaperSizeDocumentAttribute;
	if (p != NULL) context[@"NSPaperSizeDocumentAttribute"] = NSPaperSizeDocumentAttribute;
}
void load_UIKit_NSAttributedString_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
