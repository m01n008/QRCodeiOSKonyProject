//
//  KonyAttributedTextView.h
//  VM
//
//  Created by Sunil Phani Manne on 1/11/12.
//  Copyright (c) 2012 Sunil Phani Manne. All rights reserved.
//

#import "DTAttributedTextView.h"
#import "DTAttributedTextContentView.h"
#import "DTTextAttachment.h"
#import <CoreComponent/KonyWrapperDS.h>
#import "DTLinkButton.h"
#import "RichTextSkin.h"
#import <CoreComponent/ViewDrawingDelegate.h>

@interface KonyAttributedTextView : DTAttributedTextView <UIScrollViewDelegate>

@property (nonatomic, weak) RichTextSkin* skin;
@property (nonatomic, weak)  id <ViewDrawingDelegate> drawingDelegate;

-(void) applySkin: (RichTextSkin*) aSkin;
@end
