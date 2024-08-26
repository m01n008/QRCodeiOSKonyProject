//
//  TextAreaWidget.h
//  VM
//
//  Created by User Kasturi on 09/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/Widget.h>

#import <CoreComponent/ViewDrawingDelegate.h>
#import <CoreComponent/KonyWrapperDS.h>
#import <CoreComponent/WheelWidgetHandler.h>
#import <CoreComponent/KonyTextInputTypes.h>
#import "TextAreaSkin.h"

/**
 *  At this moment, different call back methods are used for different purpoes and they lack clairty. Some of them are:
 *  implementing maxLength contraint in shouldChangeTextInRange, which might not get called when content is app level pastboard implementation.
 *  updating model in UITextViewTextDidChangeNotification call back, which might not get called during system level pasteboard implementation.
 *  Best is to redo handling delegate callbacks. Till that happens, this is the best possible approach.
 */
@protocol TextAreaUpdationProtocol <NSObject>

-(void) updateTextViewContentsWithString:(NSString*) aString;

@end

@interface KonyCustomTextArea : UITextView  <WheelViewProtocol>
{
    Widget <ViewDrawingDelegate,UITextViewDelegate,PasteBoardProtocol,WheelWidgetProtocol,TextAreaUpdationProtocol> __weak *delegate;
    UILabel *_placeholder;
}

@property (readwrite, retain) UIView *inputView;
@property (readwrite, retain) UIView *inputAccessoryView;

@end

@interface TextAreaWidget : Widget <ViewDrawingDelegate,UITextViewDelegate,PasteBoardProtocol,WheelWidgetProtocol,CallBackListenerProtocol,TextAreaUpdationProtocol>
{
    KonyCustomTextArea *textView;
    BOOL onFocus;
    BOOL isUpdated;
    BOOL depricatedMode;
}

@property (nonatomic,assign) WheelWidgetClosureType closureType;
-(CGFloat)giveHeightForNumberOFlines:(unsigned int) numberOfVisibleLines sizeOfFirstLine: (CGSize)firstLine SizeofTwoLines:(CGSize)twoLine;
-(TextAreaSkin *) placeholderSkin;
-(BOOL) isWheelWidget;
-(CGRect) getFrameForGivenText: (NSString*) text forWidth:(CGFloat) width forFont:(UIFont*) font;
@end

