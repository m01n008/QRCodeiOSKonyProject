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
@property (readwrite,copy,nonatomic) NSDictionary * preprocessorMacros;
@property (readwrite,nonatomic) BOOL fastMathEnabled;
@property (readwrite,nonatomic) MTLLanguageVersion languageVersion;
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
-(id) newArgumentEncoderWithBufferIndex: (NSUInteger) bufferIndex ;
@end
@protocol MTLFunctionClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol MTLLibraryInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (readonly) NSArray * functionNames;
@property (copy,atomic) NSString * label;
-(id) newFunctionWithName: (NSString *) functionName ;
JSExportAs(newFunctionWithNameConstantValuesCompletionHandler,
-(void) jsnewFunctionWithName: (NSString *) name constantValues: (MTLFunctionConstantValues *) constantValues completionHandler: (JSValue *) completionHandler );
JSExportAs(newFunctionWithNameConstantValuesError,
-(id) jsnewFunctionWithName: (NSString *) name constantValues: (MTLFunctionConstantValues *) constantValues error: (JSValue *) error );
@end
@protocol MTLLibraryClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop