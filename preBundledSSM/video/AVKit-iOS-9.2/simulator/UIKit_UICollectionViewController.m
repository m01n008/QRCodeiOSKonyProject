#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UICollectionViewController (Exports)
-(void) jscollectionView: (UICollectionView *) collectionView performAction: (NSString *) action forItemAtIndexPath: (NSIndexPath *) indexPath withSender: (id) sender 
{
	SEL action_ = NSSelectorFromString(action);
	[self collectionView: collectionView performAction: action_ forItemAtIndexPath: indexPath withSender: sender ];
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsinitWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil 
{
	id resultVal__;
	resultVal__ = [[self initWithNibName: nibNameOrNil bundle: nibBundleOrNil ] autorelease];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(BOOL) jscollectionView: (UICollectionView *) collectionView canPerformAction: (NSString *) action forItemAtIndexPath: (NSIndexPath *) indexPath withSender: (id) sender 
{
	SEL action_ = NSSelectorFromString(action);
	BOOL resultVal__;
	resultVal__ = [self collectionView: collectionView canPerformAction: action_ forItemAtIndexPath: indexPath withSender: sender ];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsinitWithCollectionViewLayout: (UICollectionViewLayout *) layout 
{
	id resultVal__;
	resultVal__ = [[self initWithCollectionViewLayout: layout ] autorelease];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
static void addProtocols()
{
	class_addProtocol([UICollectionViewController class], @protocol(UICollectionViewControllerInstanceExports));
	class_addProtocol([UICollectionViewController class], @protocol(UICollectionViewControllerClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UICollectionViewController_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
