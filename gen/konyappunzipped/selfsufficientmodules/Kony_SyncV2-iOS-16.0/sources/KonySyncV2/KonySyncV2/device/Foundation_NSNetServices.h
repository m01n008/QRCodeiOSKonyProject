#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSNetServices_symbols(JSContext*);
@protocol NSNetServiceInstanceExports<JSExport>
@property (assign) id delegate;
@property () BOOL includesPeerToPeer;
@property (readonly,copy) NSString * name;
@property (readonly,copy) NSString * type;
@property (readonly,copy) NSString * domain;
@property (readonly,copy) NSString * hostName;
@property (readonly,copy) NSArray * addresses;
@property (readonly) NSInteger port;
JSExportAs(initWithDomainTypeNamePort,
-(id) jsinitWithDomain: (NSString *) domain type: (NSString *) type name: (NSString *) name port: (int) port );
JSExportAs(initWithDomainTypeName,
-(id) jsinitWithDomain: (NSString *) domain type: (NSString *) type name: (NSString *) name );
-(void) scheduleInRunLoop: (NSRunLoop *) aRunLoop forMode: (NSRunLoopMode) mode ;
-(void) removeFromRunLoop: (NSRunLoop *) aRunLoop forMode: (NSRunLoopMode) mode ;
-(void) publish;
-(void) publishWithOptions: (NSNetServiceOptions) options ;
-(void) resolve;
-(void) stop;
-(void) resolveWithTimeout: (NSTimeInterval) timeout ;
-(BOOL) setTXTRecordData: (NSData *) recordData ;
-(NSData *) TXTRecordData;
-(void) startMonitoring;
-(void) stopMonitoring;
@end
@protocol NSNetServiceClassExports<JSExport>
+(NSDictionary *) dictionaryFromTXTRecordData: (NSData *) txtData ;
+(NSData *) dataFromTXTRecordDictionary: (NSDictionary *) txtDictionary ;
@end
@protocol NSNetServiceBrowserInstanceExports<JSExport>
@property (assign) id delegate;
@property () BOOL includesPeerToPeer;
-(id) jsinit;
-(void) scheduleInRunLoop: (NSRunLoop *) aRunLoop forMode: (NSRunLoopMode) mode ;
-(void) removeFromRunLoop: (NSRunLoop *) aRunLoop forMode: (NSRunLoopMode) mode ;
-(void) searchForBrowsableDomains;
-(void) searchForRegistrationDomains;
-(void) searchForServicesOfType: (NSString *) type inDomain: (NSString *) domainString ;
-(void) stop;
@end
@protocol NSNetServiceBrowserClassExports<JSExport>
@end
@protocol NSNetServiceDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) netServiceWillPublish: (NSNetService *) sender ;
-(void) netServiceDidPublish: (NSNetService *) sender ;
-(void) netService: (NSNetService *) sender didNotPublish: (NSDictionary *) errorDict ;
-(void) netServiceWillResolve: (NSNetService *) sender ;
-(void) netServiceDidResolveAddress: (NSNetService *) sender ;
-(void) netService: (NSNetService *) sender didNotResolve: (NSDictionary *) errorDict ;
-(void) netServiceDidStop: (NSNetService *) sender ;
-(void) netService: (NSNetService *) sender didUpdateTXTRecordData: (NSData *) data ;
-(void) netService: (NSNetService *) sender didAcceptConnectionWithInputStream: (NSInputStream *) inputStream outputStream: (NSOutputStream *) outputStream ;
@end
@protocol NSNetServiceDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol NSNetServiceBrowserDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) netServiceBrowserWillSearch: (NSNetServiceBrowser *) browser ;
-(void) netServiceBrowserDidStopSearch: (NSNetServiceBrowser *) browser ;
-(void) netServiceBrowser: (NSNetServiceBrowser *) browser didNotSearch: (NSDictionary *) errorDict ;
-(void) netServiceBrowser: (NSNetServiceBrowser *) browser didFindDomain: (NSString *) domainString moreComing: (BOOL) moreComing ;
-(void) netServiceBrowser: (NSNetServiceBrowser *) browser didFindService: (NSNetService *) service moreComing: (BOOL) moreComing ;
-(void) netServiceBrowser: (NSNetServiceBrowser *) browser didRemoveDomain: (NSString *) domainString moreComing: (BOOL) moreComing ;
-(void) netServiceBrowser: (NSNetServiceBrowser *) browser didRemoveService: (NSNetService *) service moreComing: (BOOL) moreComing ;
@end
@protocol NSNetServiceBrowserDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop