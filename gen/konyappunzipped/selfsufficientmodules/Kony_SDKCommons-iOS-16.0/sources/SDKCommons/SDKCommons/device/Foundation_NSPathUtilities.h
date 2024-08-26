#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSPathUtilities_symbols(JSContext*);
@protocol NSStringNSStringPathExtensionsCategoryInstanceExports<JSExport>
@property (readonly,copy) NSArray * pathComponents;
@property (getter=isAbsolutePath,readonly) BOOL absolutePath;
@property (readonly,copy) NSString * lastPathComponent;
@property (readonly,copy) NSString * stringByDeletingLastPathComponent;
@property (readonly,copy) NSString * pathExtension;
@property (readonly,copy) NSString * stringByDeletingPathExtension;
@property (readonly,copy) NSString * stringByAbbreviatingWithTildeInPath;
@property (readonly,copy) NSString * stringByExpandingTildeInPath;
@property (readonly,copy) NSString * stringByStandardizingPath;
@property (readonly,copy) NSString * stringByResolvingSymlinksInPath;
-(NSString *) stringByAppendingPathComponent: (NSString *) str ;
-(NSString *) stringByAppendingPathExtension: (NSString *) str ;
-(NSArray *) stringsByAppendingPaths: (NSArray *) paths ;
@end
@protocol NSStringNSStringPathExtensionsCategoryClassExports<JSExport>
+(NSString *) pathWithComponents: (NSArray *) components ;
@end
@protocol NSArrayNSArrayPathExtensionsCategoryInstanceExports<JSExport>
-(NSArray *) pathsMatchingExtensions: (NSArray *) filterTypes ;
@end
@protocol NSArrayNSArrayPathExtensionsCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop