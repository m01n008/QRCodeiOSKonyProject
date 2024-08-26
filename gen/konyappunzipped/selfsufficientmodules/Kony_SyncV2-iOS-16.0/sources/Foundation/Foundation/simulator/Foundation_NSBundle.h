#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSBundle_symbols(JSContext*);
@protocol NSBundleInstanceExports<JSExport>
@property (getter=isLoaded,readonly) BOOL loaded;
@property (readonly,copy) NSURL * bundleURL;
@property (readonly,copy) NSURL * resourceURL;
@property (readonly,copy) NSURL * executableURL;
@property (readonly,copy) NSURL * privateFrameworksURL;
@property (readonly,copy) NSURL * sharedFrameworksURL;
@property (readonly,copy) NSURL * sharedSupportURL;
@property (readonly,copy) NSURL * builtInPlugInsURL;
@property (readonly,copy) NSURL * appStoreReceiptURL;
@property (readonly,copy) NSString * bundlePath;
@property (readonly,copy) NSString * resourcePath;
@property (readonly,copy) NSString * executablePath;
@property (readonly,copy) NSString * privateFrameworksPath;
@property (readonly,copy) NSString * sharedFrameworksPath;
@property (readonly,copy) NSString * sharedSupportPath;
@property (readonly,copy) NSString * builtInPlugInsPath;
@property (readonly,copy) NSString * bundleIdentifier;
@property (readonly,copy) NSDictionary * infoDictionary;
@property (readonly,copy) NSDictionary * localizedInfoDictionary;
@property (readonly,getter=getJsPrincipalClass) JSValue* jsprincipalClass;
@property (readonly,copy) NSArray * preferredLocalizations;
@property (readonly,copy) NSArray * localizations;
@property (readonly,copy) NSString * developmentLocalization;
@property (readonly,copy) NSArray * executableArchitectures;
JSExportAs(initWithPath,
-(id) jsinitWithPath: (NSString *) path );
JSExportAs(initWithURL,
-(id) jsinitWithURL: (NSURL *) url );
-(BOOL) load;
-(BOOL) unload;
JSExportAs(preflightAndReturnError,
-(BOOL) jspreflightAndReturnError: (JSValue *) error );
JSExportAs(loadAndReturnError,
-(BOOL) jsloadAndReturnError: (JSValue *) error );
-(NSURL *) URLForAuxiliaryExecutable: (NSString *) executableName ;
-(NSString *) pathForAuxiliaryExecutable: (NSString *) executableName ;
-(NSURL *) URLForResource: (NSString *) name withExtension: (NSString *) ext ;
-(NSURL *) URLForResource: (NSString *) name withExtension: (NSString *) ext subdirectory: (NSString *) subpath ;
-(NSURL *) URLForResource: (NSString *) name withExtension: (NSString *) ext subdirectory: (NSString *) subpath localization: (NSString *) localizationName ;
-(NSArray *) URLsForResourcesWithExtension: (NSString *) ext subdirectory: (NSString *) subpath ;
-(NSArray *) URLsForResourcesWithExtension: (NSString *) ext subdirectory: (NSString *) subpath localization: (NSString *) localizationName ;
-(NSString *) pathForResource: (NSString *) name ofType: (NSString *) ext ;
-(NSString *) pathForResource: (NSString *) name ofType: (NSString *) ext inDirectory: (NSString *) subpath ;
-(NSString *) pathForResource: (NSString *) name ofType: (NSString *) ext inDirectory: (NSString *) subpath forLocalization: (NSString *) localizationName ;
-(NSArray *) pathsForResourcesOfType: (NSString *) ext inDirectory: (NSString *) subpath ;
-(NSArray *) pathsForResourcesOfType: (NSString *) ext inDirectory: (NSString *) subpath forLocalization: (NSString *) localizationName ;
-(NSString *) localizedStringForKey: (NSString *) key value: (NSString *) value table: (NSString *) tableName ;
-(NSAttributedString *) localizedAttributedStringForKey: (NSString *) key value: (NSString *) value table: (NSString *) tableName ;
-(id) objectForInfoDictionaryKey: (NSString *) key ;
-(id) classNamed: (NSString *) className ;
@end
@protocol NSBundleClassExports<JSExport>
+(id) bundleWithPath: (NSString *) path ;
+(id) bundleWithURL: (NSURL *) url ;
JSExportAs(bundleForClass,
+(NSBundle *) jsbundleForClass: (JSValue *) aClass );
+(NSBundle *) bundleWithIdentifier: (NSString *) identifier ;
+(NSURL *) URLForResource: (NSString *) name withExtension: (NSString *) ext subdirectory: (NSString *) subpath inBundleWithURL: (NSURL *) bundleURL ;
+(NSArray *) URLsForResourcesWithExtension: (NSString *) ext subdirectory: (NSString *) subpath inBundleWithURL: (NSURL *) bundleURL ;
+(NSString *) pathForResource: (NSString *) name ofType: (NSString *) ext inDirectory: (NSString *) bundlePath ;
+(NSArray *) pathsForResourcesOfType: (NSString *) ext inDirectory: (NSString *) bundlePath ;
+(NSArray *) preferredLocalizationsFromArray: (NSArray *) localizationsArray ;
+(NSArray *) preferredLocalizationsFromArray: (NSArray *) localizationsArray forPreferences: (NSArray *) preferencesArray ;
+(NSBundle *) mainBundle;
+(NSArray *) allBundles;
+(NSArray *) allFrameworks;
@end
@protocol NSStringNSBundleExtensionMethodsCategoryInstanceExports<JSExport>
-(NSString *) variantFittingPresentationWidth: (NSInteger) width ;
@end
@protocol NSStringNSBundleExtensionMethodsCategoryClassExports<JSExport>
@end
@protocol NSBundleResourceRequestInstanceExports<JSExport, NSProgressReportingInstanceExports_>
@property () double loadingPriority;
@property (readonly,copy) NSSet * tags;
@property (readonly,strong) NSBundle * bundle;
@property (readonly,strong) NSProgress * progress;
JSExportAs(initWithTags,
-(id) jsinitWithTags: (NSSet *) tags );
JSExportAs(initWithTagsBundle,
-(id) jsinitWithTags: (NSSet *) tags bundle: (NSBundle *) bundle );
JSExportAs(beginAccessingResourcesWithCompletionHandler,
-(void) jsbeginAccessingResourcesWithCompletionHandler: (JSValue *) completionHandler );
JSExportAs(conditionallyBeginAccessingResourcesWithCompletionHandler,
-(void) jsconditionallyBeginAccessingResourcesWithCompletionHandler: (JSValue *) completionHandler );
-(void) endAccessingResources;
@end
@protocol NSBundleResourceRequestClassExports<JSExport, NSProgressReportingClassExports_>
@end
@protocol NSBundleNSBundleResourceRequestAdditionsCategoryInstanceExports<JSExport>
-(void) setPreservationPriority: (double) priority forTags: (NSSet *) tags ;
-(double) preservationPriorityForTag: (NSString *) tag ;
@end
@protocol NSBundleNSBundleResourceRequestAdditionsCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop