#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UISearchTextField_symbols(JSContext*);
@protocol UISearchTextFieldInstanceExports<JSExport>
@property (copy,nonatomic) NSArray * tokens;
@property (nonatomic,strong) UIColor * tokenBackgroundColor;
@property (nonatomic) BOOL allowsDeletingTokens;
@property (readonly,nonatomic) UITextRange * textualRange;
@property (nonatomic) BOOL allowsCopyingTokens;
-(void) removeTokenAtIndex: (NSInteger) tokenIndex ;
-(NSArray *) tokensInRange: (UITextRange *) textRange ;
-(UITextPosition *) positionOfTokenAtIndex: (NSInteger) tokenIndex ;
-(void) replaceTextualPortionOfRange: (UITextRange *) textRange withToken: (UISearchToken *) token atIndex: (NSUInteger) tokenIndex ;
-(void) insertToken: (UISearchToken *) token atIndex: (NSInteger) tokenIndex ;
@end
@protocol UISearchTextFieldClassExports<JSExport>
@end
@protocol UISearchTokenInstanceExports<JSExport>
@property (nonatomic,strong) id representedObject;
@end
@protocol UISearchTokenClassExports<JSExport>
+(UISearchToken *) tokenWithIcon: (UIImage *) icon text: (NSString *) text ;
@end
@protocol UISearchTextFieldDelegateInstanceExports_<JSExport, UITextFieldDelegateInstanceExports_>
-(NSItemProvider *) searchTextField: (UISearchTextField *) searchTextField itemProviderForCopyingToken: (UISearchToken *) token ;
@end
@protocol UISearchTextFieldDelegateClassExports_<JSExport, UITextFieldDelegateClassExports_>
@end
@protocol UISearchTextFieldPasteItemInstanceExports_<JSExport, UITextPasteItemInstanceExports_>
-(void) setSearchTokenResult: (UISearchToken *) token ;
@end
@protocol UISearchTextFieldPasteItemClassExports_<JSExport, UITextPasteItemClassExports_>
@end
#pragma clang diagnostic pop