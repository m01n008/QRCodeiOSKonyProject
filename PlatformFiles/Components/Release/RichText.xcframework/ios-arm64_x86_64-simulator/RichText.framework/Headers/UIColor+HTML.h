//
//  UIColor+HTML.h
//  CoreTextExtensions
//
//  Created by Oliver Drobnik on 1/9/11.
//  Copyright 2011 Drobnik.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HTML)

+ (UIColor *)richTextColorWithHexString:(NSString *)hex;
+ (UIColor *)colorWithHTMLName:(NSString *)name;

- (CGFloat)alpha;
- (UIColor *)invertedColor;

- (NSString *)htmlHexString;

@end
