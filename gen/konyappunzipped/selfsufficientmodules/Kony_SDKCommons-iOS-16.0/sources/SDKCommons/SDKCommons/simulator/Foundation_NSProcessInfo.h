#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSProcessInfo_symbols(JSContext*);
@interface JSValue (Foundation_NSProcessInfo)
+(JSValue*) valueWithNSOperatingSystemVersion: (NSOperatingSystemVersion) s inContext: (JSContext*) context;
-(NSOperatingSystemVersion) toNSOperatingSystemVersion;
@end
@protocol NSProcessInfoInstanceExports<JSExport>
@property (readonly,copy) NSDictionary * environment;
@property (readonly,copy) NSArray * arguments;
@property (readonly,copy) NSString * hostName;
@property (copy) NSString * processName;
@property (readonly) int processIdentifier;
@property (readonly,copy) NSString * globallyUniqueString;
@property (readonly,copy) NSString * operatingSystemVersionString;
@property (readonly) NSOperatingSystemVersion operatingSystemVersion;
@property (readonly) NSUInteger processorCount;
@property (readonly) NSUInteger activeProcessorCount;
@property (readonly) unsigned long long physicalMemory;
@property (readonly) NSTimeInterval systemUptime;
-(NSUInteger) operatingSystem;
-(NSString *) operatingSystemName;
-(BOOL) isOperatingSystemAtLeastVersion: (NSOperatingSystemVersion) version ;
@end
@protocol NSProcessInfoClassExports<JSExport>
+(NSProcessInfo *) processInfo;
@end
@protocol NSProcessInfoNSProcessInfoActivityCategoryInstanceExports<JSExport>
-(id) beginActivityWithOptions: (NSActivityOptions) options reason: (NSString *) reason ;
-(void) endActivity: (id) activity ;
JSExportAs(performActivityWithOptionsReasonUsingBlock,
-(void) jsperformActivityWithOptions: (NSActivityOptions) options reason: (NSString *) reason usingBlock: (JSValue *) block );
JSExportAs(performExpiringActivityWithReasonUsingBlock,
-(void) jsperformExpiringActivityWithReason: (NSString *) reason usingBlock: (JSValue *) block );
@end
@protocol NSProcessInfoNSProcessInfoActivityCategoryClassExports<JSExport>
@end
@protocol NSProcessInfoNSUserInformationCategoryInstanceExports<JSExport>
@end
@protocol NSProcessInfoNSUserInformationCategoryClassExports<JSExport>
@end
@protocol NSProcessInfoNSProcessInfoThermalStateCategoryInstanceExports<JSExport>
@property (readonly) NSProcessInfoThermalState thermalState;
@end
@protocol NSProcessInfoNSProcessInfoThermalStateCategoryClassExports<JSExport>
@end
@protocol NSProcessInfoNSProcessInfoPowerStateCategoryInstanceExports<JSExport>
@property (getter=isLowPowerModeEnabled,readonly) BOOL lowPowerModeEnabled;
@end
@protocol NSProcessInfoNSProcessInfoPowerStateCategoryClassExports<JSExport>
@end
@protocol NSProcessInfoNSProcessInfoPlatformCategoryInstanceExports<JSExport>
@property (getter=isMacCatalystApp,readonly) BOOL macCatalystApp;
@property (getter=isiOSAppOnMac,readonly) BOOL iOSAppOnMac;
@end
@protocol NSProcessInfoNSProcessInfoPlatformCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop