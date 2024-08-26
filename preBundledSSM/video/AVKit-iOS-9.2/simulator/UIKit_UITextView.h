#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UITextView_symbols(JSContext*);
@protocol UITextViewInstanceExports<JSExport, UITextInputInstanceExports_>
@property (nonatomic) UIDataDetectorTypes dataDetectorTypes;
@property (nonatomic,strong) UIColor * textColor;
@property (nonatomic) BOOL clearsOnInsertion;
@property (readwrite,strong) UIView * inputView;
@property (copy) NSAttributedString * attributedText;
@property (copy,nonatomic) NSString * text;
@property (copy,nonatomic) NSDictionary * typingAttributes;
@property (readonly,nonatomic) NSTextContainer * textContainer;
@property (getter=isEditable,nonatomic) BOOL editable;
@property (nonatomic) BOOL allowsEditingTextAttributes;
@property (readonly,nonatomic,strong) NSTextStorage * textStorage;
@property (assign,nonatomic) UIEdgeInsets textContainerInset;
@property (nonatomic,weak) id delegate;
@property (readwrite,strong) UIView * inputAccessoryView;
@property (getter=isSelectable,nonatomic) BOOL selectable;
@property (nonatomic,strong) UIFont * font;
@property (copy,nonatomic) NSDictionary * linkTextAttributes;
@property (nonatomic) NSTextAlignment textAlignment;
@property (readonly,nonatomic) NSLayoutManager * layoutManager;
@property (nonatomic) NSRange selectedRange;
JSExportAs(initWithFrameTextContainer,
-(id) jsinitWithFrame: (CGRect) frame textContainer: (NSTextContainer *) textContainer );
-(void) scrollRangeToVisible: (NSRange) range ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol UITextViewClassExports<JSExport, UITextInputClassExports_>
@end
@protocol UITextViewDelegateInstanceExports_<JSExport, NSObjectInstanceExports_, UIScrollViewDelegateInstanceExports_>
-(void) textViewDidChange: (UITextView *) textView ;
-(BOOL) textView: (UITextView *) textView shouldChangeTextInRange: (NSRange) range replacementText: (NSString *) text ;
-(BOOL) textViewShouldBeginEditing: (UITextView *) textView ;
-(BOOL) textView: (UITextView *) textView shouldInteractWithTextAttachment: (NSTextAttachment *) textAttachment inRange: (NSRange) characterRange ;
-(void) textViewDidBeginEditing: (UITextView *) textView ;
-(BOOL) textViewShouldEndEditing: (UITextView *) textView ;
-(void) textViewDidEndEditing: (UITextView *) textView ;
-(BOOL) textView: (UITextView *) textView shouldInteractWithURL: (NSURL *) URL inRange: (NSRange) characterRange ;
-(void) textViewDidChangeSelection: (UITextView *) textView ;
@end
@protocol UITextViewDelegateClassExports_<JSExport, NSObjectClassExports_, UIScrollViewDelegateClassExports_>
@end
#pragma clang diagnostic pop