#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation CIImage (CIImageUIKitAdditionsCategoryExports)
-(id) jsinitWithImage: (UIImage *) image options: (NSDictionary *) options 
{
	id resultVal__;
	resultVal__ = [[self initWithImage: image options: options ] autorelease];
	return resultVal__;
}
-(id) jsinitWithImage: (UIImage *) image 
{
	id resultVal__;
	resultVal__ = [[self initWithImage: image ] autorelease];
	return resultVal__;
}
@end
@implementation UIImage (Exports)
-(id) jsinitWithCGImage: (id) cgImage scale: (CGFloat) scale orientation: (UIImageOrientation) orientation 
{
	id resultVal__;
	resultVal__ = [[self initWithCGImage: cgImage scale: scale orientation: orientation ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithData: (NSData *) data 
{
	id resultVal__;
	resultVal__ = [[self initWithData: data ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCIImage: (CIImage *) ciImage scale: (CGFloat) scale orientation: (UIImageOrientation) orientation 
{
	id resultVal__;
	resultVal__ = [[self initWithCIImage: ciImage scale: scale orientation: orientation ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCIImage: (CIImage *) ciImage 
{
	id resultVal__;
	resultVal__ = [[self initWithCIImage: ciImage ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCGImage: (id) cgImage 
{
	id resultVal__;
	resultVal__ = [[self initWithCGImage: cgImage ] autorelease];
	return resultVal__;
}
-(id) jsinitWithContentsOfFile: (NSString *) path 
{
	id resultVal__;
	resultVal__ = [[self initWithContentsOfFile: path ] autorelease];
	return resultVal__;
}
-(id) jsinitWithData: (NSData *) data scale: (CGFloat) scale 
{
	id resultVal__;
	resultVal__ = [[self initWithData: data scale: scale ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIImage class], @protocol(UIImageUIImageDeprecatedCategoryInstanceExports));
	class_addProtocol([UIImage class], @protocol(UIImageUIImageDeprecatedCategoryClassExports));
	class_addProtocol([CIImage class], @protocol(CIImageUIKitAdditionsCategoryInstanceExports));
	class_addProtocol([CIImage class], @protocol(CIImageUIKitAdditionsCategoryClassExports));
	class_addProtocol([UIImage class], @protocol(UIImageInstanceExports));
	class_addProtocol([UIImage class], @protocol(UIImageClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIImageOrientationUp"] = @0;
	context[@"UIImageOrientationDown"] = @1;
	context[@"UIImageOrientationLeft"] = @2;
	context[@"UIImageOrientationRight"] = @3;
	context[@"UIImageOrientationUpMirrored"] = @4;
	context[@"UIImageOrientationDownMirrored"] = @5;
	context[@"UIImageOrientationLeftMirrored"] = @6;
	context[@"UIImageOrientationRightMirrored"] = @7;

	context[@"UIImageResizingModeTile"] = @0;
	context[@"UIImageResizingModeStretch"] = @1;

	context[@"UIImageRenderingModeAutomatic"] = @0;
	context[@"UIImageRenderingModeAlwaysOriginal"] = @1;
	context[@"UIImageRenderingModeAlwaysTemplate"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIImage_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
