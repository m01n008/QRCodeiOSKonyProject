#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSAttributedString_symbols(JSContext*);
@protocol NSAttributedStringInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSString * string;
@end
@protocol NSAttributedStringClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSAttributedStringNSExtendedAttributedStringCategoryInstanceExports<JSExport>
@property (readonly) NSUInteger length;
-(NSAttributedString *) attributedSubstringFromRange: (NSRange) range ;
-(BOOL) isEqualToAttributedString: (NSAttributedString *) other ;
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) str );
JSExportAs(initWithStringAttributes,
-(id) jsinitWithString: (NSString *) str attributes: (NSDictionary *) attrs );
JSExportAs(initWithAttributedString,
-(id) jsinitWithAttributedString: (NSAttributedString *) attrStr );
JSExportAs(enumerateAttributesInRangeOptionsUsingBlock,
-(void) jsenumerateAttributesInRange: (NSRange) enumerationRange options: (NSAttributedStringEnumerationOptions) opts usingBlock: (JSValue *) block );
JSExportAs(enumerateAttributeInRangeOptionsUsingBlock,
-(void) jsenumerateAttribute: (NSAttributedStringKey) attrName inRange: (NSRange) enumerationRange options: (NSAttributedStringEnumerationOptions) opts usingBlock: (JSValue *) block );
@end
@protocol NSAttributedStringNSExtendedAttributedStringCategoryClassExports<JSExport>
@end
@protocol NSMutableAttributedStringInstanceExports<JSExport>
-(void) replaceCharactersInRange: (NSRange) range withString: (NSString *) str ;
-(void) setAttributes: (NSDictionary *) attrs range: (NSRange) range ;
@end
@protocol NSMutableAttributedStringClassExports<JSExport>
@end
@protocol NSMutableAttributedStringNSExtendedMutableAttributedStringCategoryInstanceExports<JSExport>
@property (readonly,retain) NSMutableString * mutableString;
-(void) addAttribute: (NSAttributedStringKey) name value: (id) value range: (NSRange) range ;
-(void) addAttributes: (NSDictionary *) attrs range: (NSRange) range ;
-(void) removeAttribute: (NSAttributedStringKey) name range: (NSRange) range ;
-(void) replaceCharactersInRange: (NSRange) range withAttributedString: (NSAttributedString *) attrString ;
-(void) insertAttributedString: (NSAttributedString *) attrString atIndex: (NSUInteger) loc ;
-(void) appendAttributedString: (NSAttributedString *) attrString ;
-(void) deleteCharactersInRange: (NSRange) range ;
-(void) setAttributedString: (NSAttributedString *) attrString ;
-(void) beginEditing;
-(void) endEditing;
@end
@protocol NSMutableAttributedStringNSExtendedMutableAttributedStringCategoryClassExports<JSExport>
@end
@protocol NSAttributedStringMarkdownSourcePositionInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSInteger startLine;
@property (readonly) NSInteger startColumn;
@property (readonly) NSInteger endLine;
@property (readonly) NSInteger endColumn;
JSExportAs(initWithStartLineStartColumnEndLineEndColumn,
-(id) jsinitWithStartLine: (NSInteger) startLine startColumn: (NSInteger) startColumn endLine: (NSInteger) endLine endColumn: (NSInteger) endColumn );
-(NSRange) rangeInString: (NSString *) string ;
@end
@protocol NSAttributedStringMarkdownSourcePositionClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSAttributedStringMarkdownParsingOptionsInstanceExports<JSExport, NSCopyingInstanceExports_>
@property () BOOL allowsExtendedAttributes;
@property () NSAttributedStringMarkdownInterpretedSyntax interpretedSyntax;
@property () NSAttributedStringMarkdownParsingFailurePolicy failurePolicy;
@property (copy) NSString * languageCode;
@property () BOOL appliesSourcePositionAttributes;
-(id) jsinit;
@end
@protocol NSAttributedStringMarkdownParsingOptionsClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol NSAttributedStringNSAttributedStringCreateFromMarkdownCategoryInstanceExports<JSExport>
JSExportAs(initWithContentsOfMarkdownFileAtURLOptionsBaseURLError,
-(id) jsinitWithContentsOfMarkdownFileAtURL: (NSURL *) markdownFile options: (NSAttributedStringMarkdownParsingOptions *) options baseURL: (NSURL *) baseURL error: (JSValue *) error );
JSExportAs(initWithMarkdownOptionsBaseURLError,
-(id) jsinitWithMarkdown: (NSData *) markdown options: (NSAttributedStringMarkdownParsingOptions *) options baseURL: (NSURL *) baseURL error: (JSValue *) error );
JSExportAs(initWithMarkdownStringOptionsBaseURLError,
-(id) jsinitWithMarkdownString: (NSString *) markdownString options: (NSAttributedStringMarkdownParsingOptions *) options baseURL: (NSURL *) baseURL error: (JSValue *) error );
@end
@protocol NSAttributedStringNSAttributedStringCreateFromMarkdownCategoryClassExports<JSExport>
@end
@protocol NSAttributedStringNSAttributedStringFormattingCategoryInstanceExports<JSExport>
JSExportAs(initWithFormatOptionsLocale,
-(id) jsinitWithFormat: (NSAttributedString *) format options: (NSAttributedStringFormattingOptions) options locale: (NSLocale *) locale arguments: (NSArray *) args );
@end
@protocol NSAttributedStringNSAttributedStringFormattingCategoryClassExports<JSExport>
JSExportAs(localizedAttributedStringWithFormat,
+(id) jslocalizedAttributedStringWithFormat: (NSAttributedString *) format arguments: (NSArray *) args );
JSExportAs(localizedAttributedStringWithFormatOptions,
+(id) jslocalizedAttributedStringWithFormat: (NSAttributedString *) format options: (NSAttributedStringFormattingOptions) options arguments: (NSArray *) args );
@end
@protocol NSMutableAttributedStringNSMutableAttributedStringFormattingCategoryInstanceExports<JSExport>
JSExportAs(appendLocalizedFormat,
-(void) jsappendLocalizedFormat: (NSAttributedString *) format arguments: (NSArray *) args );
@end
@protocol NSMutableAttributedStringNSMutableAttributedStringFormattingCategoryClassExports<JSExport>
@end
@protocol NSAttributedStringNSMorphologyCategoryInstanceExports<JSExport>
-(NSAttributedString *) attributedStringByInflectingString;
@end
@protocol NSAttributedStringNSMorphologyCategoryClassExports<JSExport>
@end
@protocol NSPresentationIntentInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSPresentationIntentKind intentKind;
@property (readonly,strong) NSPresentationIntent * parentIntent;
@property (readonly) NSInteger identity;
@property (readonly) NSInteger ordinal;
@property (readonly) NSArray * columnAlignments;
@property (readonly) NSInteger columnCount;
@property (readonly) NSInteger headerLevel;
@property (readonly,copy) NSString * languageHint;
@property (readonly) NSInteger column;
@property (readonly) NSInteger row;
@property (readonly) NSInteger indentationLevel;
-(BOOL) isEquivalentToPresentationIntent: (NSPresentationIntent *) other ;
@end
@protocol NSPresentationIntentClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(NSPresentationIntent *) paragraphIntentWithIdentity: (NSInteger) identity nestedInsideIntent: (NSPresentationIntent *) parent ;
+(NSPresentationIntent *) headerIntentWithIdentity: (NSInteger) identity level: (NSInteger) level nestedInsideIntent: (NSPresentationIntent *) parent ;
+(NSPresentationIntent *) codeBlockIntentWithIdentity: (NSInteger) identity languageHint: (NSString *) languageHint nestedInsideIntent: (NSPresentationIntent *) parent ;
+(NSPresentationIntent *) thematicBreakIntentWithIdentity: (NSInteger) identity nestedInsideIntent: (NSPresentationIntent *) parent ;
+(NSPresentationIntent *) orderedListIntentWithIdentity: (NSInteger) identity nestedInsideIntent: (NSPresentationIntent *) parent ;
+(NSPresentationIntent *) unorderedListIntentWithIdentity: (NSInteger) identity nestedInsideIntent: (NSPresentationIntent *) parent ;
+(NSPresentationIntent *) listItemIntentWithIdentity: (NSInteger) identity ordinal: (NSInteger) ordinal nestedInsideIntent: (NSPresentationIntent *) parent ;
+(NSPresentationIntent *) blockQuoteIntentWithIdentity: (NSInteger) identity nestedInsideIntent: (NSPresentationIntent *) parent ;
+(NSPresentationIntent *) tableIntentWithIdentity: (NSInteger) identity columnCount: (NSInteger) columnCount alignments: (NSArray *) alignments nestedInsideIntent: (NSPresentationIntent *) parent ;
+(NSPresentationIntent *) tableHeaderRowIntentWithIdentity: (NSInteger) identity nestedInsideIntent: (NSPresentationIntent *) parent ;
+(NSPresentationIntent *) tableRowIntentWithIdentity: (NSInteger) identity row: (NSInteger) row nestedInsideIntent: (NSPresentationIntent *) parent ;
+(NSPresentationIntent *) tableCellIntentWithIdentity: (NSInteger) identity column: (NSInteger) column nestedInsideIntent: (NSPresentationIntent *) parent ;
@end
#pragma clang diagnostic pop