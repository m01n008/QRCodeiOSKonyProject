#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIColor (Exports)
-(UIColor *) jsinitWithPatternImage: (UIImage *) image 
{
	UIColor * resultVal__;
	resultVal__ = [[self initWithPatternImage: image ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(UIColor *) jsinitWithHue: (CGFloat) hue saturation: (CGFloat) saturation brightness: (CGFloat) brightness alpha: (CGFloat) alpha 
{
	UIColor * resultVal__;
	resultVal__ = [[self initWithHue: hue saturation: saturation brightness: brightness alpha: alpha ] autorelease];
	return resultVal__;
}
-(UIColor *) jsinitWithRed: (CGFloat) red green: (CGFloat) green blue: (CGFloat) blue alpha: (CGFloat) alpha 
{
	UIColor * resultVal__;
	resultVal__ = [[self initWithRed: red green: green blue: blue alpha: alpha ] autorelease];
	return resultVal__;
}
-(UIColor *) jsinitWithCIColor: (CIColor *) ciColor 
{
	UIColor * resultVal__;
	resultVal__ = [[self initWithCIColor: ciColor ] autorelease];
	return resultVal__;
}
-(UIColor *) jsinitWithWhite: (CGFloat) white alpha: (CGFloat) alpha 
{
	UIColor * resultVal__;
	resultVal__ = [[self initWithWhite: white alpha: alpha ] autorelease];
	return resultVal__;
}
-(UIColor *) jsinitWithCGColor: (id) cgColor 
{
	UIColor * resultVal__;
	resultVal__ = [[self initWithCGColor: cgColor ] autorelease];
	return resultVal__;
}
@end
@implementation CIColor (CIColorUIKitAdditionsCategoryExports)
-(id) jsinitWithColor: (UIColor *) color 
{
	id resultVal__;
	resultVal__ = [[self initWithColor: color ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIColor class], @protocol(UIColorInstanceExports));
	class_addProtocol([UIColor class], @protocol(UIColorClassExports));
	class_addProtocol([CIColor class], @protocol(CIColorUIKitAdditionsCategoryInstanceExports));
	class_addProtocol([CIColor class], @protocol(CIColorUIKitAdditionsCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIColor_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
