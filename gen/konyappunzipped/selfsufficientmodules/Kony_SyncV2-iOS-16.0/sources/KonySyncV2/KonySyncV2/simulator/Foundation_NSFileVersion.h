#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSFileVersion_symbols(JSContext*);
@protocol NSFileVersionInstanceExports<JSExport>
@property (readonly,copy) NSURL * URL;
@property (readonly,copy) NSString * localizedName;
@property (readonly,copy) NSString * localizedNameOfSavingComputer;
@property (readonly,copy) NSPersonNameComponents * originatorNameComponents;
@property (readonly,copy) NSDate * modificationDate;
@property (readonly,retain) id persistentIdentifier;
@property (getter=isConflict,readonly) BOOL conflict;
@property (getter=isResolved) BOOL resolved;
@property (readonly) BOOL hasLocalContents;
@property (readonly) BOOL hasThumbnail;
JSExportAs(replaceItemAtURLOptionsError,
-(NSURL *) jsreplaceItemAtURL: (NSURL *) url options: (NSFileVersionReplacingOptions) options error: (JSValue *) error );
JSExportAs(removeAndReturnError,
-(BOOL) jsremoveAndReturnError: (JSValue *) outError );
@end
@protocol NSFileVersionClassExports<JSExport>
+(NSFileVersion *) currentVersionOfItemAtURL: (NSURL *) url ;
+(NSArray *) otherVersionsOfItemAtURL: (NSURL *) url ;
+(NSArray *) unresolvedConflictVersionsOfItemAtURL: (NSURL *) url ;
JSExportAs(getNonlocalVersionsOfItemAtURLCompletionHandler,
+(void) jsgetNonlocalVersionsOfItemAtURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
+(NSFileVersion *) versionOfItemAtURL: (NSURL *) url forPersistentIdentifier: (id) persistentIdentifier ;
JSExportAs(removeOtherVersionsOfItemAtURLError,
+(BOOL) jsremoveOtherVersionsOfItemAtURL: (NSURL *) url error: (JSValue *) outError );
@end
#pragma clang diagnostic pop