#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIButton_symbols(JSContext*);
@protocol UIButtonUIButtonDeprecatedCategoryInstanceExports<JSExport>
@property (nonatomic) CGSize titleShadowOffset;
@property (nonatomic,strong) UIFont * font;
@property (nonatomic) NSLineBreakMode lineBreakMode;
@end
@protocol UIButtonUIButtonDeprecatedCategoryClassExports<JSExport>
@end
@protocol UIButtonSpringLoadingCategoryInstanceExports<JSExport, UISpringLoadedInteractionSupportingInstanceExports_>
@end
@protocol UIButtonSpringLoadingCategoryClassExports<JSExport, UISpringLoadedInteractionSupportingClassExports_>
@end
@protocol UIButtonInstanceExports<JSExport, NSCodingInstanceExports_>
@property (getter=getJsPointerStyleProvider,setter=setJsPointerStyleProvider:) JSValue* jspointerStyleProvider;
@property (nonatomic) BOOL showsTouchWhenHighlighted;
@property (readonly,nonatomic,strong) UILabel * titleLabel;
@property (getter=isPointerInteractionEnabled,assign,readwrite,nonatomic) BOOL pointerInteractionEnabled;
@property (nonatomic) BOOL adjustsImageWhenDisabled;
@property (readwrite,copy,nonatomic) UIMenu * menu;
@property (readonly,nonatomic,strong) UIImageSymbolConfiguration * currentPreferredSymbolConfiguration;
@property (nonatomic) UIEdgeInsets titleEdgeInsets;
@property (nonatomic) BOOL reversesTitleShadowWhenHighlighted;
@property (nonatomic) UIButtonRole role;
@property (readonly,nonatomic,strong) UIImageView * imageView;
@property (nonatomic) UIEdgeInsets imageEdgeInsets;
@property (readonly,nonatomic,strong) UIColor * currentTitleShadowColor;
@property (readonly,nonatomic,strong) NSAttributedString * currentAttributedTitle;
@property (readonly,nonatomic,strong) NSString * currentTitle;
@property (readonly,nonatomic,strong) UIImage * currentBackgroundImage;
@property (nonatomic,strong) UIColor * tintColor;
@property (readonly,nonatomic,strong) UIImage * currentImage;
@property (readonly,nonatomic,strong) UIColor * currentTitleColor;
@property (nonatomic) UIEdgeInsets contentEdgeInsets;
@property (nonatomic) BOOL adjustsImageWhenHighlighted;
@property (readonly,nonatomic) UIButtonType buttonType;
-(void) setPreferredSymbolConfiguration: (UIImageSymbolConfiguration *) configuration forImageInState: (UIControlState) state ;
JSExportAs(initWithFramePrimaryAction,
-(id) jsinitWithFrame: (CGRect) frame primaryAction: (UIAction *) primaryAction );
-(CGRect) backgroundRectForBounds: (CGRect) bounds ;
-(CGRect) imageRectForContentRect: (CGRect) contentRect ;
-(void) setBackgroundImage: (UIImage *) image forState: (UIControlState) state ;
-(UIImage *) imageForState: (UIControlState) state ;
-(void) setImage: (UIImage *) image forState: (UIControlState) state ;
-(NSAttributedString *) attributedTitleForState: (UIControlState) state ;
JSExportAs(initWithFrame,
-(id) jsinitWithFrame: (CGRect) frame );
-(void) setTitle: (NSString *) title forState: (UIControlState) state ;
-(UIImageSymbolConfiguration *) preferredSymbolConfigurationForImageInState: (UIControlState) state ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(CGRect) titleRectForContentRect: (CGRect) contentRect ;
-(NSString *) titleForState: (UIControlState) state ;
-(CGRect) contentRectForBounds: (CGRect) bounds ;
-(UIColor *) titleShadowColorForState: (UIControlState) state ;
-(void) setTitleShadowColor: (UIColor *) color forState: (UIControlState) state ;
-(void) setAttributedTitle: (NSAttributedString *) title forState: (UIControlState) state ;
-(UIColor *) titleColorForState: (UIControlState) state ;
-(UIImage *) backgroundImageForState: (UIControlState) state ;
-(void) setTitleColor: (UIColor *) color forState: (UIControlState) state ;
@end
@protocol UIButtonClassExports<JSExport, NSCodingClassExports_>
+(id) buttonWithType: (UIButtonType) buttonType primaryAction: (UIAction *) primaryAction ;
+(id) buttonWithType: (UIButtonType) buttonType ;
+(id) systemButtonWithPrimaryAction: (UIAction *) primaryAction ;
JSExportAs(systemButtonWithImageTargetAction,
+(id) jssystemButtonWithImage: (UIImage *) image target: (id) target action: (NSString *) action );
@end
#pragma clang diagnostic pop