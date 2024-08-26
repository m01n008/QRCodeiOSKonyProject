#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UICollectionViewItemRegistration_symbols(JSContext*);
@protocol UICollectionViewSupplementaryRegistrationInstanceExports<JSExport>
@property (readonly,getter=getJsSupplementaryClass) JSValue* jssupplementaryClass;
@property (readonly,getter=getJsConfigurationHandler) JSValue* jsconfigurationHandler;
@property (readonly,nonatomic) UINib * supplementaryNib;
@property (readonly,nonatomic) NSString * elementKind;
@end
@protocol UICollectionViewSupplementaryRegistrationClassExports<JSExport>
JSExportAs(registrationWithSupplementaryNibElementKindConfigurationHandler,
+(id) jsregistrationWithSupplementaryNib: (UINib *) supplementaryNib elementKind: (NSString *) elementKind configurationHandler: (JSValue *) configurationHandler );
JSExportAs(registrationWithSupplementaryClassElementKindConfigurationHandler,
+(id) jsregistrationWithSupplementaryClass: (JSValue *) supplementaryClass elementKind: (NSString *) elementKind configurationHandler: (JSValue *) configurationHandler );
@end
@protocol UICollectionViewCellRegistrationInstanceExports<JSExport>
@property (readonly,nonatomic) UINib * cellNib;
@property (readonly,getter=getJsConfigurationHandler) JSValue* jsconfigurationHandler;
@property (readonly,getter=getJsCellClass) JSValue* jscellClass;
@end
@protocol UICollectionViewCellRegistrationClassExports<JSExport>
JSExportAs(registrationWithCellNibConfigurationHandler,
+(id) jsregistrationWithCellNib: (UINib *) cellNib configurationHandler: (JSValue *) configurationHandler );
JSExportAs(registrationWithCellClassConfigurationHandler,
+(id) jsregistrationWithCellClass: (JSValue *) cellClass configurationHandler: (JSValue *) configurationHandler );
@end
#pragma clang diagnostic pop