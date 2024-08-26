#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSItemProvider_symbols(JSContext*);
@protocol NSItemProviderInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,copy,atomic) NSArray * registeredTypeIdentifiers;
@property (copy,atomic) NSString * suggestedName;
-(id) jsinit;
JSExportAs(registerDataRepresentationForTypeIdentifierVisibilityLoadHandler,
-(void) jsregisterDataRepresentationForTypeIdentifier: (NSString *) typeIdentifier visibility: (NSItemProviderRepresentationVisibility) visibility loadHandler: (JSValue *) loadHandler );
JSExportAs(registerFileRepresentationForTypeIdentifierFileOptionsVisibilityLoadHandler,
-(void) jsregisterFileRepresentationForTypeIdentifier: (NSString *) typeIdentifier fileOptions: (NSItemProviderFileOptions) fileOptions visibility: (NSItemProviderRepresentationVisibility) visibility loadHandler: (JSValue *) loadHandler );
-(NSArray *) registeredTypeIdentifiersWithFileOptions: (NSItemProviderFileOptions) fileOptions ;
-(BOOL) hasItemConformingToTypeIdentifier: (NSString *) typeIdentifier ;
-(BOOL) hasRepresentationConformingToTypeIdentifier: (NSString *) typeIdentifier fileOptions: (NSItemProviderFileOptions) fileOptions ;
JSExportAs(loadDataRepresentationForTypeIdentifierCompletionHandler,
-(NSProgress *) jsloadDataRepresentationForTypeIdentifier: (NSString *) typeIdentifier completionHandler: (JSValue *) completionHandler );
JSExportAs(loadFileRepresentationForTypeIdentifierCompletionHandler,
-(NSProgress *) jsloadFileRepresentationForTypeIdentifier: (NSString *) typeIdentifier completionHandler: (JSValue *) completionHandler );
JSExportAs(loadInPlaceFileRepresentationForTypeIdentifierCompletionHandler,
-(NSProgress *) jsloadInPlaceFileRepresentationForTypeIdentifier: (NSString *) typeIdentifier completionHandler: (JSValue *) completionHandler );
JSExportAs(initWithObject,
-(id) jsinitWithObject: (id) object );
-(void) registerObject: (id) object visibility: (NSItemProviderRepresentationVisibility) visibility ;
JSExportAs(registerObjectOfClassVisibilityLoadHandler,
-(void) jsregisterObjectOfClass: (JSValue *) aClass visibility: (NSItemProviderRepresentationVisibility) visibility loadHandler: (JSValue *) loadHandler );
JSExportAs(canLoadObjectOfClass,
-(BOOL) jscanLoadObjectOfClass: (JSValue *) aClass );
JSExportAs(loadObjectOfClassCompletionHandler,
-(NSProgress *) jsloadObjectOfClass: (JSValue *) aClass completionHandler: (JSValue *) completionHandler );
JSExportAs(initWithItemTypeIdentifier,
-(id) jsinitWithItem: (id) item typeIdentifier: (NSString *) typeIdentifier );
JSExportAs(initWithContentsOfURL,
-(id) jsinitWithContentsOfURL: (NSURL *) fileURL );
JSExportAs(registerItemForTypeIdentifierLoadHandler,
-(void) jsregisterItemForTypeIdentifier: (NSString *) typeIdentifier loadHandler: (JSValue *) loadHandler );
JSExportAs(loadItemForTypeIdentifierOptionsCompletionHandler,
-(void) jsloadItemForTypeIdentifier: (NSString *) typeIdentifier options: (NSDictionary *) options completionHandler: (JSValue *) completionHandler );
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
@protocol NSItemProviderWritingInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,copy,nonatomic) NSArray * writableTypeIdentifiersForItemProvider;
-(NSItemProviderRepresentationVisibility) itemProviderVisibilityForRepresentationWithTypeIdentifier: (NSString *) typeIdentifier ;
JSExportAs(loadDataWithTypeIdentifierForItemProviderCompletionHandler,
-(NSProgress *) jsloadDataWithTypeIdentifier: (NSString *) typeIdentifier forItemProviderCompletionHandler: (JSValue *) completionHandler );
@end
@protocol NSItemProviderWritingClassExports_<JSExport, NSObjectClassExports_>
+(NSItemProviderRepresentationVisibility) itemProviderVisibilityForRepresentationWithTypeIdentifier: (NSString *) typeIdentifier ;
+(NSArray *) writableTypeIdentifiersForItemProvider;
@end
@protocol NSItemProviderReadingInstanceExports_<JSExport, NSObjectInstanceExports_>
@end
@protocol NSItemProviderReadingClassExports_<JSExport, NSObjectClassExports_>
JSExportAs(objectWithItemProviderDataTypeIdentifierError,
+(id) jsobjectWithItemProviderData: (NSData *) data typeIdentifier: (NSString *) typeIdentifier error: (JSValue *) outError );
+(NSArray *) readableTypeIdentifiersForItemProvider;
@end
#pragma clang diagnostic pop