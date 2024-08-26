#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSObject_symbols(JSContext*);
@protocol NSObjectInstanceExports<JSExport, NSObjectInstanceExports_>
-(id) jsinit;
-(void) dealloc;
-(void) finalize;
-(id) jscopy;
-(id) jsmutableCopy;
JSExportAs(doesNotRecognizeSelector,
-(void) jsdoesNotRecognizeSelector: (NSString *) aSelector );
JSExportAs(forwardingTargetForSelector,
-(id) jsforwardingTargetForSelector: (NSString *) aSelector );
-(void) forwardInvocation: (NSInvocation *) anInvocation ;
JSExportAs(methodSignatureForSelector,
-(NSMethodSignature *) jsmethodSignatureForSelector: (NSString *) aSelector );
@end
@protocol NSObjectClassExports<JSExport, NSObjectClassExports_>
+(void) load;
+(void) initialize;
+(id) jsnew;
+(id) alloc;
JSExportAs(instancesRespondToSelector,
+(BOOL) jsinstancesRespondToSelector: (NSString *) aSelector );
+(BOOL) conformsToProtocol: (Protocol *) protocol ;
JSExportAs(instanceMethodSignatureForSelector,
+(NSMethodSignature *) jsinstanceMethodSignatureForSelector: (NSString *) aSelector );
JSExportAs(isSubclassOfClass,
+(BOOL) jsisSubclassOfClass: (JSValue *) aClass );
JSExportAs(resolveClassMethod,
+(BOOL) jsresolveClassMethod: (NSString *) sel );
JSExportAs(resolveInstanceMethod,
+(BOOL) jsresolveInstanceMethod: (NSString *) sel );
+(NSUInteger) hash;
+(id) superclass;
+(id) class;
+(NSString *) description;
+(NSString *) debugDescription;
@end
@protocol NSObjectInstanceExports_<JSExport>
@property (readonly) NSUInteger hash;
@property (readonly,getter=getJsSuperclass) JSValue* jssuperclass;
@property (readonly,copy) NSString * description;
@property (readonly,copy) NSString * debugDescription;
-(BOOL) isEqual: (id) object ;
-(id) class;
-(id) self;
JSExportAs(performSelector,
-(id) jsperformSelector: (NSString *) aSelector );
JSExportAs(performSelectorWithObject,
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object );
JSExportAs(performSelectorWithObjectWithObject,
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 );
-(BOOL) isProxy;
JSExportAs(isKindOfClass,
-(BOOL) jsisKindOfClass: (JSValue *) aClass );
JSExportAs(isMemberOfClass,
-(BOOL) jsisMemberOfClass: (JSValue *) aClass );
-(BOOL) conformsToProtocol: (Protocol *) aProtocol ;
JSExportAs(respondsToSelector,
-(BOOL) jsrespondsToSelector: (NSString *) aSelector );
-(id) retain;
-(void) release;
-(id) autorelease;
-(NSUInteger) retainCount;
@end
@protocol NSObjectClassExports_<JSExport>
@end
#pragma clang diagnostic pop