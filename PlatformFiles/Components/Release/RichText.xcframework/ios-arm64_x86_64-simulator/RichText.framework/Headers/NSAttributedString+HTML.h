//
//  NSAttributedString+HTML.h
//  CoreTextExtensions
//
//  Created by Oliver Drobnik on 1/9/11.
//  Copyright 2011 Drobnik.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NSAttributedString;

extern NSString *NSBaseURLDocumentOption;
extern NSString *NSTextEncodingNameDocumentOption;
extern NSString *NSTextSizeMultiplierDocumentOption;
extern NSString *NSTextPointSizeDocumentOption;

extern NSString *DTMaxImageSize;
extern NSString *DTDefaultFontFamily;
extern NSString *DTDefaultFontName;
extern NSString *DTDefaultTextColor;
extern NSString *DTDefaultLinkColor;
extern NSString *DTDefaultLinkDecoration;
extern NSString *DTDefaultTextAlignment;
extern NSString *DTDefaultLineHeightMultiplier;
extern NSString *DTDefaultLineHeightMultiplier;
extern NSString *DTDefaultFirstLineHeadIndent;
extern NSString *DTDefaultHeadIndent;
extern NSString *DTDefaultLineBreakMode;
extern NSString *DTLinkFontSize;
extern NSString *DTAppendHTTPForLinksIfNeeded;

//BugFix:83254 Added Linkskin font family and name
extern NSString *DTLinkFontFamily;
extern NSString *DTLinkFontName;

@interface NSAttributedString (HTML)

- (id)initWithHTML:(NSData *)data documentAttributes:(NSDictionary **)dict;
- (id)initWithHTML:(NSData *)data baseURL:(NSURL *)base documentAttributes:(NSDictionary **)dict;
- (id)initWithHTML:(NSData *)data options:(NSDictionary *)options documentAttributes:(NSDictionary **)dict;

// convenience methods
+ (NSAttributedString *)attributedStringWithHTML:(NSData *)data options:(NSDictionary *)options;

// utilities
+ (NSAttributedString *)synthesizedSmallCapsAttributedStringWithText:(NSString *)text attributes:(NSDictionary *)attributes;

// attachment handling
- (NSArray *)textAttachmentsWithPredicate:(NSPredicate *)predicate;

// encoding back to HTML
- (NSString *)htmlString;

@end
