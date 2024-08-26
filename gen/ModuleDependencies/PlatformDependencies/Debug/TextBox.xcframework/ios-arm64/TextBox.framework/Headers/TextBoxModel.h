//
//  TextBoxModel.h
//  VM
//
//  Created by User Kasturi on 14/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>
#import <CoreComponent/KonyPasteBoard.h>
#import <CoreComponent/KonyTextInputTypes.h>

@interface TextBoxModel : WidgetModel 
{

    NSString *focusSkinID;  /**< focus skin identifier  */
    NSString *placeholderSkinID;    /**< skin for placeholder   */
    NSString *text; /**< Text to be filled in TextBox   */
    unsigned int maxTextLength; /**< max number of input chars allowed in text box */
    KonyTextFieldInputMode textInputMode;    /**< Default or Numeric keyboard    */
    id  onDoneCallback; /**< on done callback function */
    id onTextChangeCallback;    /**< on text change callback function */
    id onCancelCallback;
    KonyAutoCapitalizeMode autoCapitalize;   /**< autocapitalization modes - all caps, start of sentence ... */
    NSString *placeholder;  /**< placeholder string */
    KonyTextFieldViewType viewType; /** < property to set view type (normal/ search) */
    KonyWidgetContentAlignment contentAlignment;    /**< content alignment  */
    KonyKeyboardActionLabelType keyboardActionLabel; /**< Options for keyboard Done button (GO,Search ...)   */
    KonyTextFieldContainerHeightMode    containerHeightMode;
    NSMutableDictionary *accessibilityConfigForClearButton;

    NSString    *characterValidator;   /**< Regular expression string   */
    //Keyboard Appearance type
    KonyTextFieldKeyboardAppearance keyboardAppearance;
    // DEPRICATED PROPERTIES
    NSString *needsNPIon;    /**<  case insensitive (single lettered) string to indicate Any,Numeric,Password    */
    NSString *keyBoardType; /**< string corresponding to IOS keyboard types */
    KonyTextContentType textContentType;
    KonyKeyboardStyle   keyboardStyle;  /**< Keyboard style for selected mode   */
    KonyPasteboadType pasteboardType;  /**< property to manage copy/paste text in text box */
    NSString *labelForDisplayInKeyboard;
    NSString *view;
    NSString *imageForSearchBarBackground; //FTR1651..Image for Search View Background
    NSString *restrictCharactersSet;
@private
    BOOL   secureTextEntry_;    /**< password mode text entry   */
    id onBeginEditing_;  /**< callback on start of editing */
    id onEndEditing_;    /**< callback on end of editing */
    BOOL showClearButton_;  /**< flag to set clear button of TextBox    */
    BOOL showProgressIndicator_;  /**< form -> network progress indicator */
    id leftViewImage_;   /**< image to be displayed on left side of textbox  */
    BOOL autoCorrect_;  /**< flag to use autocorrect mode */
    BOOL showCloseButton_;  /**< enable showing close button on keyboard    */
    NSString *closeButtonText_;  /**< Text for close button (default is Done)    */
    BOOL depricatedMode;    /**< turns on deprecated text box features */
    BOOL isSelectable;
    KonyTextFieldSmartQuoteType smartQuotes;
    KonyTextFieldSmartDashesType smartDashes;
    KonyTextFieldSmartInsertDeleteType smartInsertDelete;
    KonyInputAccessoryViewTypes inputAccessoryViewType;
}

@property (nonatomic,readwrite,retain) NSString *focusSkinID;
@property (nonatomic,readwrite,retain) NSString *placeholderSkinID;
@property (atomic,readwrite,retain) NSString *text;
@property (nonatomic,readwrite,assign) unsigned int maxTextLength;
@property (nonatomic,readwrite,assign) KonyTextFieldInputMode textInputMode;
@property (nonatomic,readwrite,retain) id onDoneCallback;
@property (nonatomic,readwrite,retain) id onCancelCallback;
@property (nonatomic,readwrite,retain) id onTextChangeCallback;
@property (nonatomic,readwrite,assign) KonyAutoCapitalizeMode autoCapitalize;
@property (nonatomic,readwrite,retain) NSString *placeholder;
@property (nonatomic,readwrite,assign) KonyTextFieldViewType viewType;
@property (nonatomic,readwrite,assign) KonyWidgetContentAlignment contentAlignment;
@property (nonatomic,readwrite, assign) BOOL depricatedMode;
@property (nonatomic,readwrite, assign) KonyTextContentType textContentType;
@property (nonatomic,readwrite, assign) KonyKeyboardStyle keyboardStyle;
@property (nonatomic,readwrite, assign) KonyPasteboadType pasteboardType;
@property (nonatomic,readwrite, assign) KonyKeyboardActionLabelType keyboardActionLabel;
@property (nonatomic,assign) KonyTextFieldContainerHeightMode containerHeightMode;
@property (nonatomic,readwrite,retain) NSString *characterValidator;
@property (nonatomic,readwrite,assign) KonyTextFieldKeyboardAppearance keyboardAppearance;
/* FTR1929 - changing secureTextEntry property from readonly to readwrite*/
@property (nonatomic,readwrite, assign) BOOL secureTextEntry;
@property (nonatomic,readwrite, assign) BOOL isSensitiveText;
@property (nonatomic,readwrite, retain) id onBeginEditing;
@property (nonatomic,readwrite, retain) id onEndEditing;
@property (nonatomic,readonly, assign) BOOL showClearButton;
@property (nonatomic,readwrite, assign) BOOL isSelectable;
@property (nonatomic, assign) KonyInputAccessoryViewTypes inputAccessoryViewType;
@property (nonatomic,readonly, assign) BOOL showProgressIndicator;
@property (nonatomic,readonly, retain) id leftViewImage;
@property (nonatomic,readonly, assign) BOOL autoCorrect;
@property (nonatomic,readonly, assign) BOOL showCloseButton;
@property (nonatomic,readonly, retain) NSString *closeButtonText;
@property (nonatomic, retain)   NSMutableDictionary *accessibilityConfigForClearButton;
@property (nonatomic, retain) NSString *imageForSearchBarBackground;
@property (nonatomic, retain) NSString *restrictCharactersSet;
@property (nonatomic,readwrite, assign) KonyTextFieldSmartQuoteType smartQuotes;
@property (nonatomic,readwrite, assign) KonyTextFieldSmartDashesType smartDashes;
@property (nonatomic,readwrite, assign) KonyTextFieldSmartInsertDeleteType smartInsertDelete;


// DEPRICATED PROPERTIES
@property (nonatomic,retain) NSString *needsNPIon;
@property (nonatomic,retain) NSString *keyBoardType;
@property (nonatomic,retain) NSString *autoCapitalizationType;
@property (nonatomic,retain) NSString *labelForDisplayInKeyboard;
@property (nonatomic,retain) NSString *view;

#pragma mark - private setters
-(void) setPasteboardTypePrivate:(NSNumber*)pasteboardType;
-(void) setTextPrivate:(NSString*) aText;
-(void) setShowProgressIndicatorPrivate:(NSNumber*)aShowProgressIndicator;
-(void) setViewTypePrivate:(KonyTextFieldViewType) aViewType;
#pragma mark - text selection methods
- (void)setSelection:(NSNumber *)startIndex endIndex:(NSNumber *)endIndex;
- (NSDictionary *)getSelection;


@end
