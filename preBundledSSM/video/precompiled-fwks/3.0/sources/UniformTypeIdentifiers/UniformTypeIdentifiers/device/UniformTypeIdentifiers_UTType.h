#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UniformTypeIdentifiers_UTType_symbols(JSContext*);
@protocol UTTypeConformanceCategoryInstanceExports<JSExport>
@property (readonly) NSSet * supertypes;
-(BOOL) isSubtypeOfType: (UTType *) type ;
-(BOOL) conformsToType: (UTType *) type ;
-(BOOL) isSupertypeOfType: (UTType *) type ;
@end
@protocol UTTypeConformanceCategoryClassExports<JSExport>
@end
@protocol UTTypeUTTagSpecificationCategoryInstanceExports<JSExport>
@property (readonly) NSDictionary * tags;
@end
@protocol UTTypeUTTagSpecificationCategoryClassExports<JSExport>
+(NSArray *) typesWithTag: (NSString *) tag tagClass: (NSString *) tagClass conformingToType: (UTType *) supertype ;
+(id) typeWithTag: (NSString *) tag tagClass: (NSString *) tagClass conformingToType: (UTType *) supertype ;
@end
@protocol UTTypeInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (getter=isDeclared,readonly) BOOL declared;
@property (readonly) NSString * preferredMIMEType;
@property (readonly) NSString * localizedDescription;
@property (getter=isDynamic,readonly) BOOL dynamic;
@property (readonly) NSString * preferredFilenameExtension;
@property (readonly) NSURL * referenceURL;
@property (readonly) NSNumber * version;
@property (getter=isPublicType,readonly) BOOL publicType;
@property (readonly) NSString * identifier;
@end
@protocol UTTypeClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(id) typeWithFilenameExtension: (NSString *) filenameExtension conformingToType: (UTType *) supertype ;
+(id) typeWithIdentifier: (NSString *) identifier ;
+(id) typeWithMIMEType: (NSString *) mimeType ;
+(id) typeWithFilenameExtension: (NSString *) filenameExtension ;
+(id) typeWithMIMEType: (NSString *) mimeType conformingToType: (UTType *) supertype ;
@end
@protocol UTTypeLocalConstantsCategoryInstanceExports<JSExport>
@end
@protocol UTTypeLocalConstantsCategoryClassExports<JSExport>
+(UTType *) importedTypeWithIdentifier: (NSString *) identifier conformingToType: (UTType *) parentType ;
+(UTType *) exportedTypeWithIdentifier: (NSString *) identifier ;
+(UTType *) importedTypeWithIdentifier: (NSString *) identifier ;
+(UTType *) exportedTypeWithIdentifier: (NSString *) identifier conformingToType: (UTType *) parentType ;
@end
#pragma clang diagnostic pop