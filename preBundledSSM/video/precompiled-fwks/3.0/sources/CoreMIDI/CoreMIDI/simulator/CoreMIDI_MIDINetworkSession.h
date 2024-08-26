#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreMIDI_MIDINetworkSession_symbols(JSContext*);
@protocol MIDINetworkSessionInstanceExports<JSExport>
@property (readonly,nonatomic) NSUInteger networkPort;
@property (readonly,nonatomic) NSString * networkName;
@property (getter=isEnabled,nonatomic) BOOL enabled;
@property (nonatomic) MIDINetworkConnectionPolicy connectionPolicy;
@property (readonly,nonatomic) NSString * localName;
-(NSSet *) connections;
-(BOOL) addContact: (MIDINetworkHost *) contact ;
-(BOOL) addConnection: (MIDINetworkConnection *) connection ;
-(MIDIEndpointRef) sourceEndpoint;
-(BOOL) removeConnection: (MIDINetworkConnection *) connection ;
-(NSSet *) contacts;
-(BOOL) removeContact: (MIDINetworkHost *) contact ;
-(MIDIEndpointRef) destinationEndpoint;
@end
@protocol MIDINetworkSessionClassExports<JSExport>
+(MIDINetworkSession *) defaultSession;
@end
@protocol MIDINetworkConnectionInstanceExports<JSExport>
@property (readonly,nonatomic) MIDINetworkHost * host;
@end
@protocol MIDINetworkConnectionClassExports<JSExport>
+(id) connectionWithHost: (MIDINetworkHost *) host ;
@end
@protocol MIDINetworkHostInstanceExports<JSExport>
@property (readonly,nonatomic) NSUInteger port;
@property (readonly,nonatomic) NSString * netServiceName;
@property (readonly,nonatomic) NSString * name;
@property (readonly,nonatomic) NSString * netServiceDomain;
@property (readonly,nonatomic) NSString * address;
-(BOOL) hasSameAddressAs: (MIDINetworkHost *) other ;
@end
@protocol MIDINetworkHostClassExports<JSExport>
+(id) hostWithName: (NSString *) name netService: (NSNetService *) netService ;
+(id) hostWithName: (NSString *) name netServiceName: (NSString *) netServiceName netServiceDomain: (NSString *) netServiceDomain ;
+(id) hostWithName: (NSString *) name address: (NSString *) address port: (NSUInteger) port ;
@end
#pragma clang diagnostic pop