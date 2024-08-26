#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLLibrary_symbols(JSContext*);
@protocol MTLAttributeInstanceExports<JSExport>
@property (getter=isPatchData,readonly) BOOL patchData;
@property (getter=isPatchControlPointData,readonly) BOOL patchControlPointData;
@property (readonly) NSString * name;
@property (readonly) NSUInteger attributeIndex;
@property (readonly) MTLDataType attributeType;
@property (getter=isActive,readonly) BOOL active;
@end
@protocol MTLAttributeClassExports<JSExport>
@end
@protocol MTLVertexAttributeInstanceExports<JSExport>
@property (getter=isPatchData,readonly) BOOL patchData;
@property (getter=isPatchControlPointData,readonly) BOOL patchControlPointData;
@property (readonly) NSString * name;
@property (readonly) NSUInteger attributeIndex;
@property (readonly) MTLDataType attributeType;
@property (getter=isActive,readonly) BOOL active;
@end
@protocol MTLVertexAttributeClassExports<JSExport>
@end
@protocol MTLCompileOptionsInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readwrite,copy,nonatomic) NSArray * libraries;
@property (readwrite,copy,nonatomic) NSString * installName;
@property (readwrite,nonatomic) BOOL fastMathEnabled;
@property (readwrite,nonatomic) MTLLibraryType libraryType;
@property (readwrite,nonatomic) MTLLanguageVersion languageVersion;
@property (readwrite,copy,nonatomic) NSDictionary * preprocessorMacros;
@property (readwrite,nonatomic) BOOL preserveInvariance;
@end
@protocol MTLCompileOptionsClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLFunctionConstantInstanceExports<JSExport>
@property (readonly) NSUInteger index;
@property (readonly) BOOL required;
@property (readonly) MTLDataType type;
@property (readonly) NSString * name;
@end
@protocol MTLFunctionConstantClassExports<JSExport>
@end
@protocol MTLLibraryInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (readonly) NSString * installName;
@property (readonly) MTLLibraryType type;
@property (readonly) NSArray * functionNames;
@property (copy,atomic) NSString * label;
-(id) newFunctionWithName: (NSString *) functionName ;
JSExportAs(newFunctionWithDescriptorError,
-(id) jsnewFunctionWithDescriptor: (MTLFunctionDescriptor *) descriptor error: (JSValue *) error );
JSExportAs(newIntersectionFunctionWithDescriptorError,
-(id) jsnewIntersectionFunctionWithDescriptor: (MTLIntersectionFunctionDescriptor *) descriptor error: (JSValue *) error );
JSExportAs(newFunctionWithNameConstantValuesCompletionHandler,
-(void) jsnewFunctionWithName: (NSString *) name constantValues: (MTLFunctionConstantValues *) constantValues completionHandler: (JSValue *) completionHandler );
JSExportAs(newFunctionWithDescriptorCompletionHandler,
-(void) jsnewFunctionWithDescriptor: (MTLFunctionDescriptor *) descriptor completionHandler: (JSValue *) completionHandler );
JSExportAs(newFunctionWithNameConstantValuesError,
-(id) jsnewFunctionWithName: (NSString *) name constantValues: (MTLFunctionConstantValues *) constantValues error: (JSValue *) error );
JSExportAs(newIntersectionFunctionWithDescriptorCompletionHandler,
-(void) jsnewIntersectionFunctionWithDescriptor: (MTLIntersectionFunctionDescriptor *) descriptor completionHandler: (JSValue *) completionHandler );
@end
@protocol MTLLibraryClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol MTLFunctionInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) MTLPatchType patchType;
@property (readonly) NSDictionary * functionConstantsDictionary;
@property (readonly) NSString * name;
@property (readonly) NSArray * vertexAttributes;
@property (copy,atomic) NSString * label;
@property (readonly) NSInteger patchControlPointCount;
@property (readonly) NSArray * stageInputAttributes;
@property (readonly) id device;
@property (readonly) MTLFunctionType functionType;
@property (readonly) MTLFunctionOptions options;
-(id) newArgumentEncoderWithBufferIndex: (NSUInteger) bufferIndex ;
@end
@protocol MTLFunctionClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop