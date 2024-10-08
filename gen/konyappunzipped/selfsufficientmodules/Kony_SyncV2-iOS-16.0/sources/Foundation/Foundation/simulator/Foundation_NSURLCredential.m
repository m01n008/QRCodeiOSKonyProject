#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSURLCredential (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation NSURLCredential (NSURLCredentialNSInternetPasswordCategoryExports)
-(id) jsinitWithUser: (NSString *) user password: (NSString *) password persistence: (NSURLCredentialPersistence) persistence 
{
	id resultVal__;
	resultVal__ = [[self initWithUser: user password: password persistence: persistence ] autorelease];
	return resultVal__;
}
@end
@implementation NSURLCredential (NSURLCredentialNSClientCertificateCategoryExports)
-(id) jsinitWithIdentity: (id) identity certificates: (NSArray *) certArray persistence: (NSURLCredentialPersistence) persistence 
{
	id resultVal__;
	resultVal__ = [[self initWithIdentity: identity certificates: certArray persistence: persistence ] autorelease];
	return resultVal__;
}
@end
@implementation NSURLCredential (NSURLCredentialNSServerTrustCategoryExports)
-(id) jsinitWithTrust: (id) trust 
{
	id resultVal__;
	resultVal__ = [[self initWithTrust: trust ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSURLCredential class], @protocol(NSURLCredentialInstanceExports));
	class_addProtocol([NSURLCredential class], @protocol(NSURLCredentialClassExports));
	class_addProtocol([NSURLCredential class], @protocol(NSURLCredentialNSInternetPasswordCategoryInstanceExports));
	class_addProtocol([NSURLCredential class], @protocol(NSURLCredentialNSInternetPasswordCategoryClassExports));
	class_addProtocol([NSURLCredential class], @protocol(NSURLCredentialNSClientCertificateCategoryInstanceExports));
	class_addProtocol([NSURLCredential class], @protocol(NSURLCredentialNSClientCertificateCategoryClassExports));
	class_addProtocol([NSURLCredential class], @protocol(NSURLCredentialNSServerTrustCategoryInstanceExports));
	class_addProtocol([NSURLCredential class], @protocol(NSURLCredentialNSServerTrustCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{

	context[@"NSURLCredentialPersistenceNone"] = @0UL;
	context[@"NSURLCredentialPersistenceForSession"] = @1UL;
	context[@"NSURLCredentialPersistencePermanent"] = @2UL;
	context[@"NSURLCredentialPersistenceSynchronizable"] = @3UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSURLCredential_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
