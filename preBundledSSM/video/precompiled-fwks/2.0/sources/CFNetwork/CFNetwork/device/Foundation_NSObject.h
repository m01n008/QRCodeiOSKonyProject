#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSObject_symbols(JSContext*);
@protocol NSObjectInstanceExports<JSExport, NSObjectInstanceExports_>
JSExportAs(forwardingTargetForSelector,
-(id) jsforwardingTargetForSelector: (NSString *) aSelector );
-(void) finalize;
-(id) jsmutableCopy;
JSExportAs(methodSignatureForSelector,
-(NSMethodSignature *) jsmethodSignatureForSelector: (NSString *) aSelector );
-(id) jsinit;
-(void) forwardInvocation: (NSInvocation *) anInvocation ;
-(void) dealloc;
JSExportAs(doesNotRecognizeSelector,
-(void) jsdoesNotRecognizeSelector: (NSString *) aSelector );
-(id) jscopy;
@end
@protocol NSObjectClassExports<JSExport, NSObjectClassExports_>
+(void) load;
+(id) alloc;
+(NSUInteger) hash;
+(NSString *) description;
JSExportAs(instancesRespondToSelector,
+(BOOL) jsinstancesRespondToSelector: (NSString *) aSelector );
+(NSString *) debugDescription;
+(BOOL) conformsToProtocol: (Protocol *) protocol ;
+(id) superclass;
JSExportAs(resolveInstanceMethod,
+(BOOL) jsresolveInstanceMethod: (NSString *) sel );
JSExportAs(resolveClassMethod,
+(BOOL) jsresolveClassMethod: (NSString *) sel );
JSExportAs(isSubclassOfClass,
+(BOOL) jsisSubclassOfClass: (JSValue *) aClass );
+(void) initialize;
+(id) jsnew;
+(id) class;
JSExportAs(instanceMethodSignatureForSelector,
+(NSMethodSignature *) jsinstanceMethodSignatureForSelector: (NSString *) aSelector );
@end
@protocol NSObjectInstanceExports_<JSExport>
@property (readonly,copy) NSString * debugDescription;
@property (readonly) NSUInteger hash;
@property (readonly,getter=getJsSuperclass) JSValue* jssuperclass;
@property (readonly,copy) NSString * description;
JSExportAs(performSelectorWithObjectWithObject,
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 );
JSExportAs(performSelectorWithObject,
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object );
-(NSUInteger) retainCount;
JSExportAs(respondsToSelector,
-(BOOL) jsrespondsToSelector: (NSString *) aSelector );
JSExportAs(isKindOfClass,
-(BOOL) jsisKindOfClass: (JSValue *) aClass );
-(id) self;
-(BOOL) isEqual: (id) object ;
JSExportAs(performSelector,
-(id) jsperformSelector: (NSString *) aSelector );
-(BOOL) conformsToProtocol: (Protocol *) aProtocol ;
JSExportAs(isMemberOfClass,
-(BOOL) jsisMemberOfClass: (JSValue *) aClass );
-(void) release;
-(id) retain;
-(id) autorelease;
-(id) class;
-(BOOL) isProxy;
@end
@protocol NSObjectClassExports_<JSExport>
@end
#pragma clang diagnostic pop