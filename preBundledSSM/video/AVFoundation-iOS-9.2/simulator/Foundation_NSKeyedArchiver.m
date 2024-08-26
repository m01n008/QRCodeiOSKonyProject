#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSKeyedArchiver (Exports)
-(void) jssetClassName: (NSString *) codedName forClass: (JSValue *) cls 
{
	Class cls_ = objc_getClass([[cls[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	[self setClassName: codedName forClass: cls_ ];
}
-(id) jsinitForWritingWithMutableData: (NSMutableData *) data 
{
	id resultVal__;
	resultVal__ = [[self initForWritingWithMutableData: data ] autorelease];
	return resultVal__;
}
-(NSString *) jsclassNameForClass: (JSValue *) cls 
{
	Class cls_ = objc_getClass([[cls[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	NSString * resultVal__;
	resultVal__ = [self classNameForClass: cls_ ];
	return resultVal__;
}
+(void) jssetClassName: (NSString *) codedName forClass: (JSValue *) cls 
{
	Class cls_ = objc_getClass([[cls[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	[self setClassName: codedName forClass: cls_ ];
}
+(NSString *) jsclassNameForClass: (JSValue *) cls 
{
	Class cls_ = objc_getClass([[cls[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	NSString * resultVal__;
	resultVal__ = [self classNameForClass: cls_ ];
	return resultVal__;
}
@end
@implementation NSKeyedUnarchiver (Exports)
-(void) jssetClass: (JSValue *) cls forClassName: (NSString *) codedName 
{
	Class cls_ = objc_getClass([[cls[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	[self setClass: cls_ forClassName: codedName ];
}
-(id) jsinitForReadingWithData: (NSData *) data 
{
	id resultVal__;
	resultVal__ = [[self initForReadingWithData: data ] autorelease];
	return resultVal__;
}
+(void) jssetClass: (JSValue *) cls forClassName: (NSString *) codedName 
{
	Class cls_ = objc_getClass([[cls[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	[self setClass: cls_ forClassName: codedName ];
}
+(id) jsunarchiveTopLevelObjectWithData: (NSData *) data error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self unarchiveTopLevelObjectWithData: data error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
@implementation NSObject (NSObjectNSKeyedArchiverObjectSubstitutionCategoryExports)
-(JSValue *) getJsClassForKeyedArchiver
{
	return [JSValue valueWithObject: self.classForKeyedArchiver inContext: [JSContext currentContext]];
}
@end
static void addProtocols()
{
	class_addProtocol([NSKeyedArchiver class], @protocol(NSKeyedArchiverInstanceExports));
	class_addProtocol([NSKeyedArchiver class], @protocol(NSKeyedArchiverClassExports));
	class_addProtocol([NSKeyedUnarchiver class], @protocol(NSKeyedUnarchiverInstanceExports));
	class_addProtocol([NSKeyedUnarchiver class], @protocol(NSKeyedUnarchiverClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyedUnarchiverObjectSubstitutionCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyedUnarchiverObjectSubstitutionCategoryClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyedArchiverObjectSubstitutionCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyedArchiverObjectSubstitutionCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSKeyedArchiveRootObjectKey;
	if (p != NULL) context[@"NSKeyedArchiveRootObjectKey"] = NSKeyedArchiveRootObjectKey;
	p = (void*) &NSInvalidArchiveOperationException;
	if (p != NULL) context[@"NSInvalidArchiveOperationException"] = NSInvalidArchiveOperationException;
	p = (void*) &NSInvalidUnarchiveOperationException;
	if (p != NULL) context[@"NSInvalidUnarchiveOperationException"] = NSInvalidUnarchiveOperationException;
}
void Foundation_NSKeyedArchiverProtocols()
{
	(void)@protocol(NSKeyedArchiverDelegate);
	(void)@protocol(NSKeyedUnarchiverDelegate);
}
void load_Foundation_NSKeyedArchiver_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
