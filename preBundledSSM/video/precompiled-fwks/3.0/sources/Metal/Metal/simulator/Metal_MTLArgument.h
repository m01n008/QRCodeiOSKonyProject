#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLArgument_symbols(JSContext*);
@protocol MTLPointerTypeInstanceExports<JSExport>
@property (readonly) MTLArgumentAccess access;
@property (readonly) BOOL elementIsArgumentBuffer;
@property (readonly) MTLDataType elementType;
@property (readonly) NSUInteger dataSize;
@property (readonly) NSUInteger alignment;
-(MTLArrayType *) elementArrayType;
-(MTLStructType *) elementStructType;
@end
@protocol MTLPointerTypeClassExports<JSExport>
@end
@protocol MTLTypeInstanceExports<JSExport>
@property (readonly) MTLDataType dataType;
@end
@protocol MTLTypeClassExports<JSExport>
@end
@protocol MTLArrayTypeInstanceExports<JSExport>
@property (readonly) NSUInteger stride;
@property (readonly) MTLDataType elementType;
@property (readonly) NSUInteger arrayLength;
@property (readonly) NSUInteger argumentIndexStride;
-(MTLTextureReferenceType *) elementTextureReferenceType;
-(MTLArrayType *) elementArrayType;
-(MTLStructType *) elementStructType;
-(MTLPointerType *) elementPointerType;
@end
@protocol MTLArrayTypeClassExports<JSExport>
@end
@protocol MTLArgumentInstanceExports<JSExport>
@property (readonly) MTLDataType bufferDataType;
@property (readonly) NSUInteger index;
@property (readonly) NSString * name;
@property (readonly) MTLDataType textureDataType;
@property (readonly) NSUInteger threadgroupMemoryAlignment;
@property (readonly) MTLTextureType textureType;
@property (readonly) NSUInteger bufferAlignment;
@property (readonly) NSUInteger bufferDataSize;
@property (readonly) MTLArgumentAccess access;
@property (readonly) MTLPointerType * bufferPointerType;
@property (readonly) NSUInteger arrayLength;
@property (readonly) NSUInteger threadgroupMemoryDataSize;
@property (getter=isActive,readonly) BOOL active;
@property (readonly) BOOL isDepthTexture;
@property (readonly) MTLArgumentType type;
@property (readonly) MTLStructType * bufferStructType;
@end
@protocol MTLArgumentClassExports<JSExport>
@end
@protocol MTLTextureReferenceTypeInstanceExports<JSExport>
@property (readonly) MTLArgumentAccess access;
@property (readonly) MTLTextureType textureType;
@property (readonly) BOOL isDepthTexture;
@property (readonly) MTLDataType textureDataType;
@end
@protocol MTLTextureReferenceTypeClassExports<JSExport>
@end
@protocol MTLStructTypeInstanceExports<JSExport>
@property (readonly) NSArray * members;
-(MTLStructMember *) memberByName: (NSString *) name ;
@end
@protocol MTLStructTypeClassExports<JSExport>
@end
@protocol MTLStructMemberInstanceExports<JSExport>
@property (readonly) MTLDataType dataType;
@property (readonly) NSUInteger argumentIndex;
@property (readonly) NSString * name;
@property (readonly) NSUInteger offset;
-(MTLStructType *) structType;
-(MTLTextureReferenceType *) textureReferenceType;
-(MTLArrayType *) arrayType;
-(MTLPointerType *) pointerType;
@end
@protocol MTLStructMemberClassExports<JSExport>
@end
#pragma clang diagnostic pop