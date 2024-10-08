#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSHTTPCookie (Exports)
-(id) jsinitWithProperties: (NSDictionary *) properties 
{
	id resultVal__;
	resultVal__ = [[self initWithProperties: properties ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSHTTPCookie class], @protocol(NSHTTPCookieInstanceExports));
	class_addProtocol([NSHTTPCookie class], @protocol(NSHTTPCookieClassExports));
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
	p = (void*) &NSHTTPCookieName;
	if (p != NULL) context[@"NSHTTPCookieName"] = NSHTTPCookieName;
	p = (void*) &NSHTTPCookieValue;
	if (p != NULL) context[@"NSHTTPCookieValue"] = NSHTTPCookieValue;
	p = (void*) &NSHTTPCookieOriginURL;
	if (p != NULL) context[@"NSHTTPCookieOriginURL"] = NSHTTPCookieOriginURL;
	p = (void*) &NSHTTPCookieVersion;
	if (p != NULL) context[@"NSHTTPCookieVersion"] = NSHTTPCookieVersion;
	p = (void*) &NSHTTPCookieDomain;
	if (p != NULL) context[@"NSHTTPCookieDomain"] = NSHTTPCookieDomain;
	p = (void*) &NSHTTPCookiePath;
	if (p != NULL) context[@"NSHTTPCookiePath"] = NSHTTPCookiePath;
	p = (void*) &NSHTTPCookieSecure;
	if (p != NULL) context[@"NSHTTPCookieSecure"] = NSHTTPCookieSecure;
	p = (void*) &NSHTTPCookieExpires;
	if (p != NULL) context[@"NSHTTPCookieExpires"] = NSHTTPCookieExpires;
	p = (void*) &NSHTTPCookieComment;
	if (p != NULL) context[@"NSHTTPCookieComment"] = NSHTTPCookieComment;
	p = (void*) &NSHTTPCookieCommentURL;
	if (p != NULL) context[@"NSHTTPCookieCommentURL"] = NSHTTPCookieCommentURL;
	p = (void*) &NSHTTPCookieDiscard;
	if (p != NULL) context[@"NSHTTPCookieDiscard"] = NSHTTPCookieDiscard;
	p = (void*) &NSHTTPCookieMaximumAge;
	if (p != NULL) context[@"NSHTTPCookieMaximumAge"] = NSHTTPCookieMaximumAge;
	p = (void*) &NSHTTPCookiePort;
	if (p != NULL) context[@"NSHTTPCookiePort"] = NSHTTPCookiePort;
	p = (void*) &NSHTTPCookieSameSitePolicy;
	if (p != NULL) context[@"NSHTTPCookieSameSitePolicy"] = NSHTTPCookieSameSitePolicy;
	p = (void*) &NSHTTPCookieSameSiteLax;
	if (p != NULL) context[@"NSHTTPCookieSameSiteLax"] = NSHTTPCookieSameSiteLax;
	p = (void*) &NSHTTPCookieSameSiteStrict;
	if (p != NULL) context[@"NSHTTPCookieSameSiteStrict"] = NSHTTPCookieSameSiteStrict;
}
void load_Foundation_NSHTTPCookie_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
