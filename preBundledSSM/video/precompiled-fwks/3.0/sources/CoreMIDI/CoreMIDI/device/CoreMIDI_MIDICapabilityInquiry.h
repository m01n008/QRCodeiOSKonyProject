#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreMIDI_MIDICapabilityInquiry_symbols(JSContext*);
@protocol MIDICIResponderInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * initiators;
@property (readonly,retain,nonatomic) id profileDelegate;
@property (readonly,nonatomic) MIDICIDeviceInfo * deviceInfo;
JSExportAs(initWithDeviceInfoProfileDelegateProfileStatesSupportProperties,
-(id) jsinitWithDeviceInfo: (MIDICIDeviceInfo *) deviceInfo profileDelegate: (id) delegate profileStates: (MIDICIProfileStateList *) profileList supportProperties: (BOOL) propertiesSupported );
-(BOOL) notifyProfile: (MIDICIProfile *) aProfile onChannel: (MIDIChannelNumber) channel isEnabled: (BOOL) enabledState ;
-(void) stop;
-(BOOL) start;
-(BOOL) sendProfile: (MIDICIProfile *) aProfile onChannel: (MIDIChannelNumber) channel profileData: (NSData *) profileSpecificData ;
@end
@protocol MIDICIResponderClassExports<JSExport>
@end
@protocol MIDICISessionInstanceExports<JSExport>
@property (readonly,nonatomic) NSNumber * maxSysExSize;
@property (readonly,nonatomic) MIDICIDeviceInfo * deviceInfo;
@property (readonly,nonatomic) BOOL supportsProfileCapability;
@property (readonly,nonatomic) NSNumber * maxPropertyRequests;
@property (getter=getJsProfileChangedCallback,setter=setJsProfileChangedCallback:) JSValue* jsprofileChangedCallback;
@property (getter=getJsProfileSpecificDataHandler,setter=setJsProfileSpecificDataHandler:) JSValue* jsprofileSpecificDataHandler;
@property (readonly,nonatomic) MIDIEntityRef midiDestination;
@property (readonly,nonatomic) BOOL supportsPropertyCapability;
JSExportAs(disableProfileOnChannelError,
-(BOOL) jsdisableProfile: (MIDICIProfile *) profile onChannel: (MIDIChannelNumber) channel error: (JSValue *) outError );
-(MIDICIProfileState *) profileStateForChannel: (MIDIChannelNumber) channel ;
JSExportAs(enableProfileOnChannelError,
-(BOOL) jsenableProfile: (MIDICIProfile *) profile onChannel: (MIDIChannelNumber) channel error: (JSValue *) outError );
-(BOOL) sendProfile: (MIDICIProfile *) profile onChannel: (MIDIChannelNumber) channel profileData: (NSData *) profileSpecificData ;
JSExportAs(initWithDiscoveredNodeDataReadyHandlerDisconnectHandler,
-(id) jsinitWithDiscoveredNode: (MIDICIDiscoveredNode *) discoveredNode dataReadyHandler: (JSValue *) handler disconnectHandler: (JSValue *) disconnectHandler );
@end
@protocol MIDICISessionClassExports<JSExport>
@end
@protocol MIDICIProfileStateInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic) MIDIChannelNumber midiChannel;
@property (readonly,nonatomic) NSArray * disabledProfiles;
@property (readonly,nonatomic) NSArray * enabledProfiles;
JSExportAs(initWithEnabledProfilesDisabledProfiles,
-(id) jsinitWithEnabledProfiles: (NSArray *) enabled disabledProfiles: (NSArray *) disabled );
JSExportAs(initWithChannelEnabledProfilesDisabledProfiles,
-(id) jsinitWithChannel: (MIDIChannelNumber) midiChannelNum enabledProfiles: (NSArray *) enabled disabledProfiles: (NSArray *) disabled );
@end
@protocol MIDICIProfileStateClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol MIDICIDeviceInfoInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic) NSData * manufacturerID;
@property (readonly,nonatomic) NSData * modelNumber;
@property (readonly,nonatomic) NSData * revisionLevel;
@property (readonly,nonatomic) NSData * family;
@property (readonly,nonatomic) MIDIEndpointRef midiDestination;
JSExportAs(initWithDestinationManufacturerFamilyModelRevision,
-(id) jsinitWithDestination: (MIDIEntityRef) midiDestination manufacturer: (NSData *) manufacturer family: (NSData *) family model: (NSData *) modelNumber revision: (NSData *) revisionLevel );
@end
@protocol MIDICIDeviceInfoClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol MIDICIProfileInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic) NSData * profileID;
@property (readonly,nonatomic) NSString * name;
JSExportAs(initWithData,
-(id) jsinitWithData: (NSData *) data );
JSExportAs(initWithDataName,
-(id) jsinitWithData: (NSData *) data name: (NSString *) inName );
@end
@protocol MIDICIProfileClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol MIDICIDiscoveredNodeInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic) BOOL supportsProperties;
@property (readonly,nonatomic) BOOL supportsProfiles;
@property (readonly,nonatomic) MIDIEntityRef destination;
@property (readonly,nonatomic) MIDICIDeviceInfo * deviceInfo;
@property (readonly,nonatomic) NSNumber * maximumSysExSize;
@end
@protocol MIDICIDiscoveredNodeClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol MIDICIDiscoveryManagerInstanceExports<JSExport>
JSExportAs(discoverWithHandler,
-(void) jsdiscoverWithHandler: (JSValue *) completedHandler );
@end
@protocol MIDICIDiscoveryManagerClassExports<JSExport>
+(MIDICIDiscoveryManager *) sharedInstance;
@end
@protocol MIDICIProfileResponderDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
JSExportAs(initiatorDisconnected,
-(void) jsinitiatorDisconnected: (MIDICIInitiatiorMUID) initiatorMUID );
-(BOOL) willSetProfile: (MIDICIProfile *) aProfile onChannel: (MIDIChannelNumber) channel enabled: (BOOL) shouldEnable ;
-(void) handleDataForProfile: (MIDICIProfile *) aProfile onChannel: (MIDIChannelNumber) channel data: (NSData *) inData ;
-(BOOL) connectInitiator: (MIDICIInitiatiorMUID) initiatorMUID withDeviceInfo: (MIDICIDeviceInfo *) deviceInfo ;
@end
@protocol MIDICIProfileResponderDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop