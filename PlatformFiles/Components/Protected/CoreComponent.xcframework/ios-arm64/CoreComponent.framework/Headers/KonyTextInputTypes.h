//
//  KonyTypes.h
//  VM
//
//  Created by User on 09/04/12.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#define NUMBERS				@"0123456789-"
#define NUMBERSANDPERIOD	@"0123456789.,-"
#define CLEARMODE_BUTTON_SIZE	25
#import "Skin.h"

@protocol PasteBoardProtocol <NSObject>

@required
- (BOOL) isPasteBoardSystemLevel ;
- (UIPasteboard*) getAppLevelPasteBoard;
@optional
-(BOOL) pasteboardPerformAction:(SEL)action withSender:(id)sender;

@end

@protocol UITextFieldOverrides <NSObject>

@optional
// drawing and positioning overrides
- (CGRect)borderRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
- (CGRect)leftViewRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;

- (void)drawTextInRect:(CGRect)rect;
- (void)drawPlaceholderInRect:(CGRect)rect;
-(Skin*) placeholderSkin;

@end


@protocol TextValidationProtocol <NSObject>

- (BOOL) validateRegexExpressionWithString:(NSString *) value;

@end


typedef enum
{
	Copy,
	Cut,
	Paste
} operationType;

typedef enum KonyTextContentType{
    KonyTextContentTypeDefault = 0,
    KonyTextContentTypeUsername = 1,
    KonyTextContentTypePassword = 2,
    KonyTextContentTypeNewPassword = 3,
    KonyTextContentTypeOneTimeCode = 4
}KonyTextContentType;

typedef enum KonyKeyboardStyle
{
    KonyKeyboardStyleDefault = 0,
    KonyKeyboardStyleEmail = 1,
    KonyKeyboardStyleURL = 2,
    KonyKeyboardStyleChat = 3,
    KonyKeyboardStyleDecimal = 4,
    KonyKeyboardStyleNumberpad = 5,
    KonyKeyboardStylePhonepad = 6,
    KonyKeyboardStyleNamePhonePad = 7,
    KonyKeyboardStyleWebSearch = 8,
    KonyKeyboardStyleASCIICapableNumberPad = 9,
    KonyKeyboardStyleASCIICapable = 10
}
KonyKeyboardStyle;

typedef enum KonyAutoCapitalizeMode 
{
    KonyAutoCapitalizeModeNone = 0,
    KonyAutoCapitalizeModeWords = 1,
    KonyAutoCapitalizeModeSentences = 2,
    KonyAutoCapitalizeModeAll = 3
}
KonyAutoCapitalizeMode;

typedef enum KonyTextFieldViewType
{
    KonyTextFieldViewTypeDefault = 0,
    KonyTextFieldViewTypeSearch = 1
}
KonyTextFieldViewType;

typedef enum KonyTextFieldInputMode
{
    KonyTextFieldInputModeAny = 0,
    KonyTextFieldInputModeNumeric = 1
}
KonyTextFieldInputMode;

typedef enum KonyTextFieldContainerHeightMode
{
    KonyTextFieldContainerHeightModeDefaultPlatformHeight = 0,
    KonyTextFieldContainerHeightModeFontMetricsDrivenHeight = 1,
    KonyTextFieldContainerHeightModeCustomHeight = 2
}KonyTextFieldContainerHeightMode;
//Textbox keyboard Appearance type
typedef enum KonyTextFieldKeyboardAppearance
{
    KonyTextFieldKeyboardAppearanceDefault,
    KonyTextFieldKeyboardAppearanceLight,
    KonyTextFieldKeyboardAppearanceDark,
}KonyTextFieldKeyboardAppearance;

//smartQuotes Appearance type
typedef enum KonyTextFieldSmartQuoteType
{
    KonyTextFieldSmartQuoteTypeDefault,
    KonyTextFieldSmartQuoteTypeNo,
    KonyTextFieldSmartQuoteTypeYes,
}KonyTextFieldSmartQuoteType;
//smartDashes Appearance type
typedef enum KonyTextFieldSmartDashesType
{
    KonyTextFieldSmartDashesTypeDefault,
    KonyTextFieldSmartDashesTypeNo,
    KonyTextFieldSmartDashesTypeYes,
}KonyTextFieldSmartDashesType;
//smartDashes Appearance type
typedef enum KonyTextFieldSmartInsertDeleteType
{
    KonyTextFieldSmartInsertDeleteTypeDefault,
    KonyTextFieldSmartInsertDeleteTypeNo,
    KonyTextFieldSmartInsertDeleteTypeYes,
}KonyTextFieldSmartInsertDeleteType;
typedef enum KonyKeyboardActionLabelType
{
    KonyKeyboardActionLabelTypeDefault = 0,
    KonyKeyboardActionLabelTypeGo = 1,
    KonyKeyboardActionLabelTypeSearch = 2,
    KonyKeyboardActionLabelTypeNext = 3,
    KonyKeyboardActionLabelTypeSend = 4,
    KonyKeyboardActionLabelTypeGoogle = 5,
    KonyKeyboardActionLabelTypeJoin = 6,
    KonyKeyboardActionLabelTypeRoute = 7,
    KonyKeyboardActionLabelTypeYahoo = 8,
    KonyKeyboardActionLabelTypeCall = 9,
    KonyKeyboardActionLabelTypeDone = 10
}
KonyKeyboardActionLabelType;
