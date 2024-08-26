#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSXPCConnection_symbols(JSContext*);
@protocol NSXPCConnectionInstanceExports<JSExport, NSXPCProxyCreatingInstanceExports_>
@property (readonly,copy) NSString * serviceName;
@property (readonly,retain) NSXPCListenerEndpoint * endpoint;
@property (retain) NSXPCInterface * exportedInterface;
@property (retain) id exportedObject;
@property (retain) NSXPCInterface * remoteObjectInterface;
@property (readonly,retain) id remoteObjectProxy;
@property (getter=getJsInterruptionHandler,setter=setJsInterruptionHandler:) JSValue* jsinterruptionHandler;
@property (getter=getJsInvalidationHandler,setter=setJsInvalidationHandler:) JSValue* jsinvalidationHandler;
@property (readonly) au_asid_t auditSessionIdentifier;
@property (readonly) pid_t processIdentifier;
@property (readonly) uid_t effectiveUserIdentifier;
@property (readonly) gid_t effectiveGroupIdentifier;
JSExportAs(initWithListenerEndpoint,
-(id) jsinitWithListenerEndpoint: (NSXPCListenerEndpoint *) endpoint );
JSExportAs(remoteObjectProxyWithErrorHandler,
-(id) jsremoteObjectProxyWithErrorHandler: (JSValue *) handler );
JSExportAs(synchronousRemoteObjectProxyWithErrorHandler,
-(id) jssynchronousRemoteObjectProxyWithErrorHandler: (JSValue *) handler );
-(void) resume;
-(void) suspend;
-(void) activate;
-(void) invalidate;
JSExportAs(scheduleSendBarrierBlock,
-(void) jsscheduleSendBarrierBlock: (JSValue *) block );
@end
@protocol NSXPCConnectionClassExports<JSExport, NSXPCProxyCreatingClassExports_>
+(NSXPCConnection *) currentConnection;
@end
@protocol NSXPCListenerInstanceExports<JSExport>
@property (weak) id delegate;
@property (readonly,retain) NSXPCListenerEndpoint * endpoint;
-(void) resume;
-(void) suspend;
-(void) activate;
-(void) invalidate;
@end
@protocol NSXPCListenerClassExports<JSExport>
+(NSXPCListener *) serviceListener;
+(NSXPCListener *) anonymousListener;
@end
@protocol NSXPCInterfaceInstanceExports<JSExport>
@property (assign) Protocol * protocol;
JSExportAs(setClassesForSelectorArgumentIndexOfReply,
-(void) jssetClasses: (NSSet *) classes forSelector: (NSString *) sel argumentIndex: (NSUInteger) arg ofReply: (BOOL) ofReply );
JSExportAs(classesForSelectorArgumentIndexOfReply,
-(NSSet *) jsclassesForSelector: (NSString *) sel argumentIndex: (NSUInteger) arg ofReply: (BOOL) ofReply );
JSExportAs(setInterfaceForSelectorArgumentIndexOfReply,
-(void) jssetInterface: (NSXPCInterface *) ifc forSelector: (NSString *) sel argumentIndex: (NSUInteger) arg ofReply: (BOOL) ofReply );
JSExportAs(interfaceForSelectorArgumentIndexOfReply,
-(NSXPCInterface *) jsinterfaceForSelector: (NSString *) sel argumentIndex: (NSUInteger) arg ofReply: (BOOL) ofReply );
@end
@protocol NSXPCInterfaceClassExports<JSExport>
+(NSXPCInterface *) interfaceWithProtocol: (Protocol *) protocol ;
@end
@protocol NSXPCListenerEndpointInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSXPCListenerEndpointClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol NSXPCCoderInstanceExports<JSExport>
@property (retain) id userInfo;
@property (readonly,strong) NSXPCConnection * connection;
@end
@protocol NSXPCCoderClassExports<JSExport>
@end
@protocol NSXPCProxyCreatingInstanceExports_<JSExport>
-(id) remoteObjectProxy;
JSExportAs(remoteObjectProxyWithErrorHandler,
-(id) jsremoteObjectProxyWithErrorHandler: (JSValue *) handler );
JSExportAs(synchronousRemoteObjectProxyWithErrorHandler,
-(id) jssynchronousRemoteObjectProxyWithErrorHandler: (JSValue *) handler );
@end
@protocol NSXPCProxyCreatingClassExports_<JSExport>
@end
@protocol NSXPCListenerDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(BOOL) listener: (NSXPCListener *) listener shouldAcceptNewConnection: (NSXPCConnection *) newConnection ;
@end
@protocol NSXPCListenerDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop