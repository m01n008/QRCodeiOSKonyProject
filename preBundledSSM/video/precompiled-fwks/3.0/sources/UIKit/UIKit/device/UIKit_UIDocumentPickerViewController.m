#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIDocumentPickerViewController (Exports)
-(id) jsinitForExportingURLs: (NSArray *) urls asCopy: (BOOL) asCopy 
{
	id resultVal__;
	resultVal__ = [[self initForExportingURLs: urls asCopy: asCopy ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithURLs: (NSArray *) urls inMode: (UIDocumentPickerMode) mode 
{
	id resultVal__;
	resultVal__ = [[self initWithURLs: urls inMode: mode ] autorelease];
	return resultVal__;
}
-(id) jsinitWithDocumentTypes: (NSArray *) allowedUTIs inMode: (UIDocumentPickerMode) mode 
{
	id resultVal__;
	resultVal__ = [[self initWithDocumentTypes: allowedUTIs inMode: mode ] autorelease];
	return resultVal__;
}
-(id) jsinitForOpeningContentTypes: (NSArray *) contentTypes asCopy: (BOOL) asCopy 
{
	id resultVal__;
	resultVal__ = [[self initForOpeningContentTypes: contentTypes asCopy: asCopy ] autorelease];
	return resultVal__;
}
-(id) jsinitForExportingURLs: (NSArray *) urls 
{
	id resultVal__;
	resultVal__ = [[self initForExportingURLs: urls ] autorelease];
	return resultVal__;
}
-(id) jsinitForOpeningContentTypes: (NSArray *) contentTypes 
{
	id resultVal__;
	resultVal__ = [[self initForOpeningContentTypes: contentTypes ] autorelease];
	return resultVal__;
}
-(id) jsinitWithURL: (NSURL *) url inMode: (UIDocumentPickerMode) mode 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: url inMode: mode ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIDocumentPickerViewController class], @protocol(UIDocumentPickerViewControllerInstanceExports));
	class_addProtocol([UIDocumentPickerViewController class], @protocol(UIDocumentPickerViewControllerClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIDocumentPickerModeImport"] = @0U;
	context[@"UIDocumentPickerModeOpen"] = @1U;
	context[@"UIDocumentPickerModeExportToService"] = @2U;
	context[@"UIDocumentPickerModeMoveToService"] = @3U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void UIKit_UIDocumentPickerViewControllerProtocols()
{
	(void)@protocol(UIDocumentPickerDelegate);
}
void load_UIKit_UIDocumentPickerViewController_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
