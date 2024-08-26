#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UITraitCollection_symbols(JSContext*);
@protocol UITraitCollectionDynamicAppearanceCategoryInstanceExports<JSExport>
-(BOOL) hasDifferentColorAppearanceComparedToTraitCollection: (UITraitCollection *) traitCollection ;
@end
@protocol UITraitCollectionDynamicAppearanceCategoryClassExports<JSExport>
@end
@protocol UITraitCollectionImageConfigurationCategoryInstanceExports<JSExport>
@property (readonly,nonatomic,strong) UIImageConfiguration * imageConfiguration;
@end
@protocol UITraitCollectionImageConfigurationCategoryClassExports<JSExport>
@end
@protocol UITraitCollectionInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic) UIUserInterfaceLevel userInterfaceLevel;
@property (readonly,nonatomic) UIAccessibilityContrast accessibilityContrast;
@property (readonly,nonatomic) UIForceTouchCapability forceTouchCapability;
@property (readonly,nonatomic) UITraitEnvironmentLayoutDirection layoutDirection;
@property (readonly,nonatomic) UIUserInterfaceSizeClass verticalSizeClass;
@property (readonly,nonatomic) UIUserInterfaceIdiom userInterfaceIdiom;
@property (readonly,nonatomic) UIUserInterfaceSizeClass horizontalSizeClass;
@property (readonly,nonatomic) UIDisplayGamut displayGamut;
@property (readonly,nonatomic) UIUserInterfaceStyle userInterfaceStyle;
@property (readonly,nonatomic) UIUserInterfaceActiveAppearance activeAppearance;
@property (readonly,nonatomic) CGFloat displayScale;
@property (readonly,copy,nonatomic) UIContentSizeCategory preferredContentSizeCategory;
@property (readonly,nonatomic) UILegibilityWeight legibilityWeight;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(BOOL) containsTraitsInCollection: (UITraitCollection *) trait ;
-(id) jsinit;
@end
@protocol UITraitCollectionClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(UITraitCollection *) traitCollectionWithLayoutDirection: (UITraitEnvironmentLayoutDirection) layoutDirection ;
+(UITraitCollection *) traitCollectionWithTraitsFromCollections: (NSArray *) traitCollections ;
+(UITraitCollection *) traitCollectionWithDisplayScale: (CGFloat) scale ;
+(UITraitCollection *) traitCollectionWithUserInterfaceStyle: (UIUserInterfaceStyle) userInterfaceStyle ;
+(UITraitCollection *) traitCollectionWithUserInterfaceLevel: (UIUserInterfaceLevel) userInterfaceLevel ;
+(UITraitCollection *) traitCollectionWithForceTouchCapability: (UIForceTouchCapability) capability ;
+(UITraitCollection *) traitCollectionWithAccessibilityContrast: (UIAccessibilityContrast) accessibilityContrast ;
+(UITraitCollection *) traitCollectionWithUserInterfaceIdiom: (UIUserInterfaceIdiom) idiom ;
+(UITraitCollection *) traitCollectionWithLegibilityWeight: (UILegibilityWeight) legibilityWeight ;
+(UITraitCollection *) traitCollectionWithHorizontalSizeClass: (UIUserInterfaceSizeClass) horizontalSizeClass ;
+(UITraitCollection *) traitCollectionWithVerticalSizeClass: (UIUserInterfaceSizeClass) verticalSizeClass ;
+(UITraitCollection *) traitCollectionWithDisplayGamut: (UIDisplayGamut) displayGamut ;
+(UITraitCollection *) traitCollectionWithActiveAppearance: (UIUserInterfaceActiveAppearance) userInterfaceActiveAppearance ;
+(UITraitCollection *) traitCollectionWithPreferredContentSizeCategory: (UIContentSizeCategory) preferredContentSizeCategory ;
@end
@protocol UITraitCollectionCurrentTraitCollectionCategoryInstanceExports<JSExport>
JSExportAs(performAsCurrentTraitCollection,
-(void) jsperformAsCurrentTraitCollection: (JSValue *) actions );
@end
@protocol UITraitCollectionCurrentTraitCollectionCategoryClassExports<JSExport>
+(void) setCurrentTraitCollection: (UITraitCollection *) currentTraitCollection ;
+(UITraitCollection *) currentTraitCollection;
@end
@protocol UITraitEnvironmentInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,nonatomic) UITraitCollection * traitCollection;
-(void) traitCollectionDidChange: (UITraitCollection *) previousTraitCollection ;
@end
@protocol UITraitEnvironmentClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop