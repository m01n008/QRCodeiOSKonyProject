//
//  CustomTextFieldBase.h
//  VM
//
//  Created by User kh206 on 1/08/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/Widget.h>
#import <CoreComponent/ViewDrawingDelegate.h>
#import <CoreComponent/WheelWidgetHandler.h>
#import <CoreComponent/KonyTextInputTypes.h>
#import "TextBoxSkin.h"
#import "TextBoxWidget.h"

@interface KonyCustomTextField : UITextField  <WheelViewProtocol>
{
    Widget <ViewDrawingDelegate,UITextFieldDelegate,PasteBoardProtocol,WheelWidgetProtocol,UITextFieldOverrides> __weak *delegate;
}

@property (readwrite, retain) UIView *inputView;
@property (readwrite, retain) UIView *inputAccessoryView;
@property (nonatomic, weak) UIView *clearButtonView;
//This property is used to save the currently selected text's position and selection as an NSRange of startOffset and endOffset.
@property (nonatomic, retain) NSMutableDictionary *currentTextRange;

-(id) initWithDelegate:(Widget<ViewDrawingDelegate,PasteBoardProtocol,UITextFieldDelegate,WheelWidgetProtocol,UITextFieldOverrides>*) aDelegate;

- (void) applySkin:(TextBoxSkin*) skin;
- (void)saveCurrentTextRange;

@end

