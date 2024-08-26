#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURL_symbols(JSContext*);
@protocol NSURLInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly,copy) NSData * dataRepresentation;
@property (readonly,copy) NSString * absoluteString;
@property (readonly,copy) NSString * relativeString;
@property (readonly,copy) NSURL * baseURL;
@property (readonly,copy) NSURL * absoluteURL;
@property (readonly,copy) NSString * scheme;
@property (readonly,copy) NSString * resourceSpecifier;
@property (readonly,copy) NSString * host;
@property (readonly,copy) NSNumber * port;
@property (readonly,copy) NSString * user;
@property (readonly,copy) NSString * password;
@property (readonly,copy) NSString * path;
@property (readonly,copy) NSString * fragment;
@property (readonly,copy) NSString * parameterString;
@property (readonly,copy) NSString * query;
@property (readonly,copy) NSString * relativePath;
@property (readonly) BOOL hasDirectoryPath;
@property (getter=isFileURL,readonly) BOOL fileURL;
@property (readonly,copy) NSURL * standardizedURL;
@property (readonly,copy) NSURL * filePathURL;
JSExportAs(initWithSchemeHostPath,
-(id) jsinitWithScheme: (NSString *) scheme host: (NSString *) host path: (NSString *) path );
JSExportAs(initFileURLWithPathIsDirectoryRelativeToURL,
-(id) jsinitFileURLWithPath: (NSString *) path isDirectory: (BOOL) isDir relativeToURL: (NSURL *) baseURL );
JSExportAs(initFileURLWithPathRelativeToURL,
-(id) jsinitFileURLWithPath: (NSString *) path relativeToURL: (NSURL *) baseURL );
JSExportAs(initFileURLWithPathIsDirectory,
-(id) jsinitFileURLWithPath: (NSString *) path isDirectory: (BOOL) isDir );
JSExportAs(initFileURLWithPath,
-(id) jsinitFileURLWithPath: (NSString *) path );
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) URLString );
JSExportAs(initWithStringRelativeToURL,
-(id) jsinitWithString: (NSString *) URLString relativeToURL: (NSURL *) baseURL );
JSExportAs(initWithDataRepresentationRelativeToURL,
-(id) jsinitWithDataRepresentation: (NSData *) data relativeToURL: (NSURL *) baseURL );
JSExportAs(initAbsoluteURLWithDataRepresentationRelativeToURL,
-(id) jsinitAbsoluteURLWithDataRepresentation: (NSData *) data relativeToURL: (NSURL *) baseURL );
JSExportAs(checkResourceIsReachableAndReturnError,
-(BOOL) jscheckResourceIsReachableAndReturnError: (JSValue *) error );
-(BOOL) isFileReferenceURL;
-(NSURL *) fileReferenceURL;
JSExportAs(resourceValuesForKeysError,
-(NSDictionary *) jsresourceValuesForKeys: (NSArray *) keys error: (JSValue *) error );
JSExportAs(setResourceValueForKeyError,
-(BOOL) jssetResourceValue: (id) value forKey: (NSURLResourceKey) key error: (JSValue *) error );
JSExportAs(setResourceValuesError,
-(BOOL) jssetResourceValues: (NSDictionary *) keyedValues error: (JSValue *) error );
-(void) removeCachedResourceValueForKey: (NSURLResourceKey) key ;
-(void) removeAllCachedResourceValues;
-(void) setTemporaryResourceValue: (id) value forKey: (NSURLResourceKey) key ;
JSExportAs(bookmarkDataWithOptionsIncludingResourceValuesForKeysRelativeToURLError,
-(NSData *) jsbookmarkDataWithOptions: (NSURLBookmarkCreationOptions) options includingResourceValuesForKeys: (NSArray *) keys relativeToURL: (NSURL *) relativeURL error: (JSValue *) error );
-(BOOL) startAccessingSecurityScopedResource;
-(void) stopAccessingSecurityScopedResource;
@end
@protocol NSURLClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
+(NSURL *) fileURLWithPath: (NSString *) path isDirectory: (BOOL) isDir relativeToURL: (NSURL *) baseURL ;
+(NSURL *) fileURLWithPath: (NSString *) path relativeToURL: (NSURL *) baseURL ;
+(NSURL *) fileURLWithPath: (NSString *) path isDirectory: (BOOL) isDir ;
+(NSURL *) fileURLWithPath: (NSString *) path ;
+(id) URLWithString: (NSString *) URLString ;
+(id) URLWithString: (NSString *) URLString relativeToURL: (NSURL *) baseURL ;
+(NSURL *) URLWithDataRepresentation: (NSData *) data relativeToURL: (NSURL *) baseURL ;
+(NSURL *) absoluteURLWithDataRepresentation: (NSData *) data relativeToURL: (NSURL *) baseURL ;
+(NSDictionary *) resourceValuesForKeys: (NSArray *) keys fromBookmarkData: (NSData *) bookmarkData ;
JSExportAs(writeBookmarkDataToURLOptionsError,
+(BOOL) jswriteBookmarkData: (NSData *) bookmarkData toURL: (NSURL *) bookmarkFileURL options: (NSURLBookmarkFileCreationOptions) options error: (JSValue *) error );
JSExportAs(bookmarkDataWithContentsOfURLError,
+(NSData *) jsbookmarkDataWithContentsOfURL: (NSURL *) bookmarkFileURL error: (JSValue *) error );
JSExportAs(URLByResolvingAliasFileAtURLOptionsError,
+(id) jsURLByResolvingAliasFileAtURL: (NSURL *) url options: (NSURLBookmarkResolutionOptions) options error: (JSValue *) error );
@end
@protocol NSURLNSPromisedItemsCategoryInstanceExports<JSExport>
JSExportAs(promisedItemResourceValuesForKeysError,
-(NSDictionary *) jspromisedItemResourceValuesForKeys: (NSArray *) keys error: (JSValue *) error );
JSExportAs(checkPromisedItemIsReachableAndReturnError,
-(BOOL) jscheckPromisedItemIsReachableAndReturnError: (JSValue *) error );
@end
@protocol NSURLNSPromisedItemsCategoryClassExports<JSExport>
@end
@protocol NSURLNSItemProviderCategoryInstanceExports<JSExport, NSItemProviderReadingInstanceExports_, NSItemProviderWritingInstanceExports_>
@end
@protocol NSURLNSItemProviderCategoryClassExports<JSExport, NSItemProviderReadingClassExports_, NSItemProviderWritingClassExports_>
@end
@protocol NSURLQueryItemInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly) NSString * name;
@property (readonly) NSString * value;
JSExportAs(initWithNameValue,
-(id) jsinitWithName: (NSString *) name value: (NSString *) value );
@end
@protocol NSURLQueryItemClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
+(id) queryItemWithName: (NSString *) name value: (NSString *) value ;
@end
@protocol NSURLComponentsInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,copy) NSURL * URL;
@property (readonly,copy) NSString * string;
@property (copy) NSString * scheme;
@property (copy) NSString * user;
@property (copy) NSString * password;
@property (copy) NSString * host;
@property (copy) NSNumber * port;
@property (copy) NSString * path;
@property (copy) NSString * query;
@property (copy) NSString * fragment;
@property (copy) NSString * percentEncodedUser;
@property (copy) NSString * percentEncodedPassword;
@property (copy) NSString * percentEncodedHost;
@property (copy) NSString * percentEncodedPath;
@property (copy) NSString * percentEncodedQuery;
@property (copy) NSString * percentEncodedFragment;
@property (copy) NSString * encodedHost;
@property (readonly) NSRange rangeOfScheme;
@property (readonly) NSRange rangeOfUser;
@property (readonly) NSRange rangeOfPassword;
@property (readonly) NSRange rangeOfHost;
@property (readonly) NSRange rangeOfPort;
@property (readonly) NSRange rangeOfPath;
@property (readonly) NSRange rangeOfQuery;
@property (readonly) NSRange rangeOfFragment;
@property (copy) NSArray * queryItems;
@property (copy) NSArray * percentEncodedQueryItems;
-(id) jsinit;
JSExportAs(initWithURLResolvingAgainstBaseURL,
-(id) jsinitWithURL: (NSURL *) url resolvingAgainstBaseURL: (BOOL) resolve );
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) URLString );
-(NSURL *) URLRelativeToURL: (NSURL *) baseURL ;
@end
@protocol NSURLComponentsClassExports<JSExport, NSCopyingClassExports_>
+(id) componentsWithURL: (NSURL *) url resolvingAgainstBaseURL: (BOOL) resolve ;
+(id) componentsWithString: (NSString *) URLString ;
@end
@protocol NSCharacterSetNSURLUtilitiesCategoryInstanceExports<JSExport>
@end
@protocol NSCharacterSetNSURLUtilitiesCategoryClassExports<JSExport>
+(NSCharacterSet *) URLUserAllowedCharacterSet;
+(NSCharacterSet *) URLPasswordAllowedCharacterSet;
+(NSCharacterSet *) URLHostAllowedCharacterSet;
+(NSCharacterSet *) URLPathAllowedCharacterSet;
+(NSCharacterSet *) URLQueryAllowedCharacterSet;
+(NSCharacterSet *) URLFragmentAllowedCharacterSet;
@end
@protocol NSStringNSURLUtilitiesCategoryInstanceExports<JSExport>
@property (readonly,copy) NSString * stringByRemovingPercentEncoding;
-(NSString *) stringByAddingPercentEncodingWithAllowedCharacters: (NSCharacterSet *) allowedCharacters ;
-(NSString *) stringByAddingPercentEscapesUsingEncoding: (NSStringEncoding) enc ;
-(NSString *) stringByReplacingPercentEscapesUsingEncoding: (NSStringEncoding) enc ;
@end
@protocol NSStringNSURLUtilitiesCategoryClassExports<JSExport>
@end
@protocol NSURLNSURLPathUtilitiesCategoryInstanceExports<JSExport>
@property (readonly,copy) NSArray * pathComponents;
@property (readonly,copy) NSString * lastPathComponent;
@property (readonly,copy) NSString * pathExtension;
@property (readonly,copy) NSURL * URLByDeletingLastPathComponent;
@property (readonly,copy) NSURL * URLByDeletingPathExtension;
@property (readonly,copy) NSURL * URLByStandardizingPath;
@property (readonly,copy) NSURL * URLByResolvingSymlinksInPath;
-(NSURL *) URLByAppendingPathComponent: (NSString *) pathComponent ;
-(NSURL *) URLByAppendingPathComponent: (NSString *) pathComponent isDirectory: (BOOL) isDirectory ;
-(NSURL *) URLByAppendingPathExtension: (NSString *) pathExtension ;
@end
@protocol NSURLNSURLPathUtilitiesCategoryClassExports<JSExport>
+(NSURL *) fileURLWithPathComponents: (NSArray *) components ;
@end
@protocol NSFileSecurityInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol NSFileSecurityClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop