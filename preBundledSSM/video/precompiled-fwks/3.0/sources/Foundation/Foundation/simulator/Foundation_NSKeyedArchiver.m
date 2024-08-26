#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
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
-(id) jsinitForReadingFromData: (NSData *) data error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [[self initForReadingFromData: data error: &error_ ] autorelease];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
+(void) jssetClass: (JSValue *) cls forClassName: (NSString *) codedName 
{
	Class cls_ = objc_getClass([[cls[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	[self setClass: cls_ forClassName: codedName ];
}
+(NSDictionary *) jsunarchivedDictionaryWithKeysOfClasses: (NSSet *) keyClasses objectsOfClasses: (NSSet *) valueClasses fromData: (NSData *) data error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSDictionary * resultVal__;
	resultVal__ = [self unarchivedDictionaryWithKeysOfClasses: keyClasses objectsOfClasses: valueClasses fromData: data error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
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
+(id) jsunarchivedObjectOfClass: (JSValue *) cls fromData: (NSData *) data error: (JSValue *) error 
{
	Class cls_ = objc_getClass([[cls[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self unarchivedObjectOfClass: cls_ fromData: data error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(NSDictionary *) jsunarchivedDictionaryWithKeysOfClass: (JSValue *) keyCls objectsOfClass: (JSValue *) valueCls fromData: (NSData *) data error: (JSValue *) error 
{
	Class keyCls_ = objc_getClass([[keyCls[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	Class valueCls_ = objc_getClass([[valueCls[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	NSError* error_ = nil;
	NSDictionary * resultVal__;
	resultVal__ = [self unarchivedDictionaryWithKeysOfClass: keyCls_ objectsOfClass: valueCls_ fromData: data error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(id) jsunarchivedObjectOfClasses: (NSSet *) classes fromData: (NSData *) data error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self unarchivedObjectOfClasses: classes fromData: data error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(NSArray *) jsunarchivedArrayOfObjectsOfClasses: (NSSet *) classes fromData: (NSData *) data error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSArray * resultVal__;
	resultVal__ = [self unarchivedArrayOfObjectsOfClasses: classes fromData: data error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
+(NSArray *) jsunarchivedArrayOfObjectsOfClass: (JSValue *) cls fromData: (NSData *) data error: (JSValue *) error 
{
	Class cls_ = objc_getClass([[cls[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	NSError* error_ = nil;
	NSArray * resultVal__;
	resultVal__ = [self unarchivedArrayOfObjectsOfClass: cls_ fromData: data error: &error_ ];
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
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(NSString *) jsclassNameForClass: (JSValue *) cls 
{
	Class cls_ = objc_getClass([[cls[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	NSString * resultVal__;
	resultVal__ = [self classNameForClass: cls_ ];
	return resultVal__;
}
-(id) jsinitRequiringSecureCoding: (BOOL) requiresSecureCoding 
{
	id resultVal__;
	resultVal__ = [[self initRequiringSecureCoding: requiresSecureCoding ] autorelease];
	return resultVal__;
}
+(NSData *) jsarchivedDataWithRootObject: (id) object requiringSecureCoding: (BOOL) requiresSecureCoding error: (JSValue *) error 
{
	NSError* error_ = nil;
	NSData * resultVal__;
	resultVal__ = [self archivedDataWithRootObject: object requiringSecureCoding: requiresSecureCoding error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
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
static void addProtocols()
{
	class_addProtocol([NSKeyedUnarchiver class], @protocol(NSKeyedUnarchiverInstanceExports));
	class_addProtocol([NSKeyedUnarchiver class], @protocol(NSKeyedUnarchiverClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyedUnarchiverObjectSubstitutionCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyedUnarchiverObjectSubstitutionCategoryClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyedArchiverObjectSubstitutionCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSKeyedArchiverObjectSubstitutionCategoryClassExports));
	class_addProtocol([NSKeyedArchiver class], @protocol(NSKeyedArchiverInstanceExports));
	class_addProtocol([NSKeyedArchiver class], @protocol(NSKeyedArchiverClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSInvalidArchiveOperationException;
	if (p != NULL) context[@"NSInvalidArchiveOperationException"] = NSInvalidArchiveOperationException;
	p = (void*) &NSKeyedArchiveRootObjectKey;
	if (p != NULL) context[@"NSKeyedArchiveRootObjectKey"] = NSKeyedArchiveRootObjectKey;
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
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
