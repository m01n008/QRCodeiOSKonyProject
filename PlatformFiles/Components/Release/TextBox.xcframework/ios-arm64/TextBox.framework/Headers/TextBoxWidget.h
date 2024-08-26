//
//  TextBoxWidget.h
//  VM
//
//  Created by User Kasturi on 16/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/Widget.h>

#import <CoreComponent/ViewDrawingDelegate.h>
#import <CoreComponent/KonyWrapperDS.h>
#import <CoreComponent/WheelWidgetHandler.h>
#import <CoreComponent/KonyTextInputTypes.h>
#import "TextBoxSkin.h"
#import "CustomTextFieldBase.h"
#import "TextBoxModel.h"

#define kStdSearchBarMinWidth 20.0  // non standard macro def (might create issues)

/**
 *	custom scrollview used to wrap TextField in order to address unwanted scrolling (due to internal method `scrollSelectionToVisible:`, called from 
 *	becomeFirstResponder of UITextField.
 */	
@interface CustomScrollViewForTextField : UIScrollView
{
	id<ViewDrawingDelegate> delegate;
}

@property (nonatomic) UIView  *customTextBox;

@end

@interface KonySearchBar: UISearchBar <WheelViewProtocol>
{
@private
    Widget <ViewDrawingDelegate,UISearchBarDelegate,PasteBoardProtocol,WheelWidgetProtocol,TextValidationProtocol> __weak *delegate;
    BOOL isEnabledProgramatically; /**< True if enabled programatically and false when user taps */
}

@property (nonatomic,readwrite,retain) UIView *inputView;
@property (nonatomic,readwrite,retain) UIView *inputAccessoryView;
@property (nonatomic,assign) BOOL isEnabledProgramatically;
@property (nonatomic) UIView *clearButtonView;

@end


#define NUMBERS				@"0123456789-"
#define NUMBERSANDPERIOD	@"0123456789.,-"
#define PHONEPADCHARCTERSET @"0123456789,;*+#"
#define CLEARMODE_BUTTON_SIZE	25

@interface TextBoxWidget : Widget <ViewDrawingDelegate,UITextFieldDelegate,PasteBoardProtocol,WheelWidgetProtocol,UITextFieldOverrides,UISearchBarDelegate,CallBackListenerProtocol,TextValidationProtocol>
{
    CustomScrollViewForTextField *wrapScrollViewForTextField;
    BOOL onFocus;
    BOOL isUpdated;
    BOOL textBoxDefaultType;    // YES for default type , no otherwise
    BOOL depricatedMode;        // YES for turning on Depricated features
    WheelWidgetHandler *inputViewHanlder;
    KonyTextFieldViewType viewType;
    BOOL shouldShowActivityIndicator; //NO when then widget decides NOT to show the activityIndicator when the closure is being executed.
}

@property (nonatomic,assign) WheelWidgetClosureType closureType;
@property (nonatomic,assign) BOOL onFocus;

-(BOOL) isWheelWidget;
-(TextBoxSkin*) getFocusSkin;
-(TextBoxSkin*) getSkin;
- (void)updateAccessibilityForClearButton;

- (void)setSelection:(NSNumber *)startIndex endIndex:(NSNumber *)endIndex;
- (NSDictionary *)getSelection;
-(void)setimageForSearchBarBackground:(NSString *)imageName;
- (BOOL)isValidNumericTextForNumberKeypad:(NSString *)string tModel:(TextBoxModel *)tModel;
@end

