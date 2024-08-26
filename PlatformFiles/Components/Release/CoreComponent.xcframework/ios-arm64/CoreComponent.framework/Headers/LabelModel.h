//
//  LabelData.h
//  VM
//
//  Created by Shiva on 16/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WidgetModel.h"
#import "KonyPasteBoard.h"

@interface LabelModel : WidgetModel
{
	NSString *text;
	KonyTextWrap wrapping;
    KonyWidgetContentAlignment contentAlignment;
    KonyWidgetSkinExtracionMode skinExtractionMode;
}

@property (nonatomic, retain) NSString* text;
@property (nonatomic, assign) KonyTextWrap wrapping;
@property (nonatomic) KonyWidgetContentAlignment contentAlignment;
@property (nonatomic) KonyWidgetSkinExtracionMode skinExtractionMode;
@property (nonatomic,readonly) NSUInteger numberOfLines;
@property (nonatomic,retain) NSNumber *maxNumberOfLines;
@property (nonatomic, assign) KonyTextTruncatePosition textTruncatePosition;
@property (nonatomic,assign) KonyPasteboadType pasteboardType;  /**< property to manage copy text  */
@property (nonatomic,assign) BOOL   textCopyable;
@property (nonatomic, retain) NSString *focusSkinID;
@property (nonatomic, retain) NSString *highlightedSkinID;
@property (nonatomic, retain) NSDictionary *fontMetrics;
@property (nonatomic, retain) NSDictionary *textStyle;
@property (nonatomic) BOOL newUnderlineBehaviour; //flag for the new behaviour of underline
#if DEBUGINFO
@property (nonatomic) CGSize contentSizeOfText;
#endif

-(void) setPasteboardTypePrivate:(NSNumber*)aPasteboardType;
- (void) setHighlightedSkinIDPrivate:(NSString *)highlightedSkinID;
- (void) setFocusSkinIDPrivate:(NSString *)focusSkinID;

@end
