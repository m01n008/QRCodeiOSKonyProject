//
//  RichTextWidget.h
//  VM
//
//  Created by Sunil Phani Manne on 3/30/12.
//  Copyright (c) 2012 Sunil Phani Manne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyAttributedTextView.h"
#import "DTAttributedTextContentView.h"
#import "DTLazyImageView.h"
#import <CoreComponent/Widget.h>
#import <CoreComponent/ViewDrawingDelegate.h>
#import "RichTextModel.h"
#import "RichTextSkin.h"

@interface RichTextWidget : Widget <ViewDrawingDelegate, DTAttributedTextContentViewDelegate, DTLazyImageViewDelegate, UIActionSheetDelegate> {
@private
    KonyAttributedTextView *textView;
    RichTextSkin *skin;
    RichTextSkin *linkSkin;
    BOOL shouldSkipInitText;
    CGSize preferredSizeCache;
    CGSize givenSizeCache;
    NSString *text;
    DTLinkButton *button;
}

@property  (nonatomic, readonly)  RichTextModel *widgetModel;
@property  (nonatomic, retain)  NSString *text;
- (DTLinkButton *)getDTLinkButton;
- (void)setAccessibilityPropsToInternalButton:(UIButton *)button;
-(NSAttributedString*) getAttributedStringFromWidgetModel;
@end
