#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIListContentConfiguration_symbols(JSContext*);
@protocol UIListContentConfigurationInstanceExports<JSExport, UIContentConfigurationInstanceExports_, NSSecureCodingInstanceExports_>
@property (nonatomic) CGFloat imageToTextPadding;
@property (readonly,nonatomic) UIListContentImageProperties * imageProperties;
@property (readonly,nonatomic) UIListContentTextProperties * textProperties;
@property (copy,nonatomic) NSAttributedString * attributedText;
@property (copy,nonatomic) NSString * text;
@property (nonatomic,strong) UIImage * image;
@property (nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
@property (nonatomic) BOOL prefersSideBySideTextAndSecondaryText;
@property (nonatomic) CGFloat textToSecondaryTextVerticalPadding;
@property (nonatomic) UIAxis axesPreservingSuperviewLayoutMargins;
@property (readonly,nonatomic) UIListContentTextProperties * secondaryTextProperties;
@property (copy,nonatomic) NSAttributedString * secondaryAttributedText;
@property (nonatomic) CGFloat textToSecondaryTextHorizontalPadding;
@property (copy,nonatomic) NSString * secondaryText;
@end
@protocol UIListContentConfigurationClassExports<JSExport, UIContentConfigurationClassExports_, NSSecureCodingClassExports_>
+(id) sidebarSubtitleCellConfiguration;
+(id) accompaniedSidebarCellConfiguration;
+(id) sidebarHeaderConfiguration;
+(id) subtitleCellConfiguration;
+(id) groupedFooterConfiguration;
+(id) groupedHeaderConfiguration;
+(id) accompaniedSidebarSubtitleCellConfiguration;
+(id) valueCellConfiguration;
+(id) cellConfiguration;
+(id) sidebarCellConfiguration;
+(id) plainHeaderConfiguration;
+(id) plainFooterConfiguration;
@end
@protocol UIListContentViewInstanceExports<JSExport, UIContentViewInstanceExports_>
@property (readonly,nonatomic,strong) UILayoutGuide * secondaryTextLayoutGuide;
@property (copy,nonatomic) UIListContentConfiguration * configuration;
@property (readonly,nonatomic,strong) UILayoutGuide * textLayoutGuide;
@property (readonly,nonatomic,strong) UILayoutGuide * imageLayoutGuide;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
JSExportAs(initWithConfiguration,
-(id) jsinitWithConfiguration: (UIListContentConfiguration *) configuration );
@end
@protocol UIListContentViewClassExports<JSExport, UIContentViewClassExports_>
@end
#pragma clang diagnostic pop