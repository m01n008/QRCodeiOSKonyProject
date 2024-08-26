#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIInputViewController_symbols(JSContext*);
@protocol UIInputViewControllerInstanceExports<JSExport, UITextInputDelegateInstanceExports_>
@property (readonly,nonatomic) id textDocumentProxy;
@property (copy,nonatomic) NSString * primaryLanguage;
@property (nonatomic,strong) UIInputView * inputView;
-(void) advanceToNextInputMode;
JSExportAs(requestSupplementaryLexiconWithCompletion,
-(void) jsrequestSupplementaryLexiconWithCompletion: (JSValue *) completionHandler );
-(void) dismissKeyboard;
@end
@protocol UIInputViewControllerClassExports<JSExport, UITextInputDelegateClassExports_>
@end
@protocol UITextDocumentProxyInstanceExports_<JSExport, UIKeyInputInstanceExports_>
@property (readonly,nonatomic) NSString * documentContextBeforeInput;
@property (readonly,nonatomic) NSString * documentContextAfterInput;
-(void) adjustTextPositionByCharacterOffset: (NSInteger) offset ;
@end
@protocol UITextDocumentProxyClassExports_<JSExport, UIKeyInputClassExports_>
@end
#pragma clang diagnostic pop