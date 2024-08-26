//
//  TextAreaModel.h
//  VM
//
//  Created by User Kasturi on 09/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>
#import <CoreComponent/KonyPasteBoard.h>
#import <CoreComponent/KonyTextInputTypes.h>


@interface TextAreaModel : WidgetModel
{

    NSString *focusSkinID;  /**< focus skin identifier  */
    NSString *placeholderSkinID; /* text area placeholder skin */
    NSString *text; /**< Text to be filled in TextArea   */
    unsigned int maxTextLength; /**< max number of input chars allowed in text box */
    KonyTextFieldInputMode textInputMode;    /**< Default or Numeric keyboard    */
    id  onDoneCallback; /**< on done callback function */
    id onTextChangeCallback;    /**< on text change callback function */
    KonyAutoCapitalizeMode autoCapitalize;   /**< autocapitalization modes - all caps, start of sentence ... */
    unsigned int numberOfVisibleLines;
    NSString *placeholder;  /**< placeholder string */
    KonyKeyboardStyle   keyboardStyle;  /**< Keyboard style for selected mode   */
    KonyKeyboardActionLabelType keyboardActionLabel; /**< Options for keyboard Done button (GO,Search ...)   */
    KonyPasteboadType pasteboardType;  /**< property to manage copy/paste text in text box */
    BOOL depricatedMode;
    KonyWidgetContentAlignment contentAlignment;
    NSString *restrictCharactersSet;
    BOOL enableScrolling;
    BOOL autoResize;
//DEPRICATED
    BOOL editable;
    //Keyboard Appearance type
    KonyTextFieldKeyboardAppearance keyboardAppearance;
    KonyTextFieldSmartQuoteType smartQuotes;
    KonyTextFieldSmartDashesType smartDashes;
    KonyTextFieldSmartInsertDeleteType smartInsertDelete;
    
@private

    BOOL    secureTextEntry_;    /**< password mode text entry   */
    id onBeginEditing_;  /**< callback on start of editing */
    id onEndEditing_;    /**< callback on end of editing */
    BOOL showProgressIndicator_;  /**< form -> network progress indicator */
    BOOL autoCorrect_;  /**< flag to use autocorrect mode */
    BOOL showCloseButton_;  /**< enable showing close button on keyboard    */
    NSString *closeButtonText_;  /**< Text for close button (default is Done)    */
}

@property (nonatomic,readwrite,retain) NSString *placeholderSkinID;
@property (nonatomic,retain) NSString *focusSkinID;
@property (nonatomic,retain) NSString *text;
@property (nonatomic,assign) unsigned int maxTextLength;
@property (nonatomic,assign) KonyTextFieldInputMode textInputMode;
@property (nonatomic,retain) id onDoneCallback;
@property (nonatomic,retain) id onTextChangeCallback;
@property (nonatomic,assign) KonyAutoCapitalizeMode autoCapitalize;
@property (nonatomic,assign) unsigned int numberOfVisibleLines;
@property (nonatomic,retain) NSString *placeholder;
@property (nonatomic,assign) KonyKeyboardStyle keyboardStyle;
@property (nonatomic,assign) KonyKeyboardActionLabelType keyboardActionLabel;
@property (nonatomic,assign) KonyPasteboadType pasteboardType;
@property (nonatomic,assign) BOOL depricatedMode;
@property (nonatomic,assign) KonyWidgetContentAlignment contentAlignment;
@property (nonatomic,assign) BOOL autoResize;

@property (nonatomic,assign) BOOL secureTextEntry;
@property (nonatomic,readwrite, assign) BOOL isSensitiveText;
@property (nonatomic,retain) id onBeginEditing;
@property (nonatomic,retain) id onEndEditing;
@property (nonatomic,assign) BOOL showClearButton;
@property (nonatomic,assign) BOOL showProgressIndicator;
@property (nonatomic,assign) BOOL autoCorrect;
@property (nonatomic,assign) BOOL showCloseButton;
@property (nonatomic,assign) BOOL isSelectable;
@property (nonatomic, assign) KonyInputAccessoryViewTypes inputAccessoryViewType;
@property (nonatomic,retain) NSString *closeButtonText;
@property (nonatomic,readwrite) KonyTextFieldKeyboardAppearance keyboardAppearance;
@property (nonatomic, retain) NSString *restrictCharactersSet;
@property (nonatomic,assign) BOOL enableScrolling;
// DEPRICATED PROPERTIES
@property (nonatomic,assign) BOOL editable;
@property (nonatomic,readwrite, assign) KonyTextFieldSmartQuoteType smartQuotes;
@property (nonatomic,readwrite, assign) KonyTextFieldSmartDashesType smartDashes;
@property (nonatomic,readwrite, assign) KonyTextFieldSmartInsertDeleteType smartInsertDelete;
#pragma mark - private setters
// TODO: fix-it: used from outside.
-(void) setPasteboardTypePrivate:(NSNumber*)pasteboardType;
-(void) setTextPrivate:(NSString*) aText;


@end
