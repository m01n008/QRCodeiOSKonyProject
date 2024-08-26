#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSItemProvider_symbols(JSContext*);
@protocol NSItemProviderInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,copy,nonatomic) NSArray * registeredTypeIdentifiers;
JSExportAs(initWithItemTypeIdentifier,
-(id) jsinitWithItem: (id) item typeIdentifier: (NSString *) typeIdentifier );
JSExportAs(initWithContentsOfURL,
-(id) jsinitWithContentsOfURL: (NSURL *) fileURL );
-(BOOL) hasItemConformingToTypeIdentifier: (NSString *) typeIdentifier ;
JSExportAs(loadItemForTypeIdentifierOptionsCompletionHandler,
-(void) jsloadItemForTypeIdentifier: (NSString *) typeIdentifier options: (NSDictionary *) options completionHandler: (JSValue *) completionHandler );
JSExportAs(registerItemForTypeIdentifierLoadHandler,
-(void) jsregisterItemForTypeIdentifier: (NSString *) typeIdentifier loadHandler: (JSValue *) loadHandler );
@end
@protocol NSItemProviderClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol NSItemProviderNSPreviewSupportCategoryInstanceExports<JSExport>
@property (getter=getJsPreviewImageHandler,setter=setJsPreviewImageHandler:) JSValue* jspreviewImageHandler;
JSExportAs(loadPreviewImageWithOptionsCompletionHandler,
-(void) jsloadPreviewImageWithOptions: (NSDictionary *) options completionHandler: (JSValue *) completionHandler );
@end
@protocol NSItemProviderNSPreviewSupportCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop