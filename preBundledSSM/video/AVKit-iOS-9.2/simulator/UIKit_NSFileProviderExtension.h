#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_NSFileProviderExtension_symbols(JSContext*);
@protocol NSFileProviderExtensionInstanceExports<JSExport>
-(NSString *) providerIdentifier;
JSExportAs(startProvidingItemAtURLCompletionHandler,
-(void) jsstartProvidingItemAtURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
-(NSURL *) documentStorageURL;
JSExportAs(providePlaceholderAtURLCompletionHandler,
-(void) jsprovidePlaceholderAtURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
-(NSURL *) URLForItemWithPersistentIdentifier: (NSString *) identifier ;
-(void) itemChangedAtURL: (NSURL *) url ;
-(void) stopProvidingItemAtURL: (NSURL *) url ;
-(NSString *) persistentIdentifierForItemAtURL: (NSURL *) url ;
@end
@protocol NSFileProviderExtensionClassExports<JSExport>
+(NSURL *) placeholderURLForURL: (NSURL *) url ;
JSExportAs(writePlaceholderAtURLWithMetadataError,
+(BOOL) jswritePlaceholderAtURL: (NSURL *) placeholderURL withMetadata: (NSDictionary *) metadata error: (JSValue *) error );
@end
#pragma clang diagnostic pop