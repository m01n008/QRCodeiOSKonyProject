
#import "JSUtil.h"

#import "Runtime.h"


#import "JSBinarydataFFIAPI.h"

#import "JSKonyLoggerFFIAPI.h"

#import "JSKonyLoggerInitializeLoggerFFIClass.h"

#import "JSQRCodeFFIiOSFFIAPI.h"

#import "JSSSOFFIFFIAPI.h"


    
NSMutableDictionary *appMetaData;
    
@interface JSApplication_QRPOC : NSObject
@end

@implementation JSApplication_QRPOC

+(NSMutableDictionary *) setAppMetaData
{
    appMetaData = [[NSMutableDictionary alloc] initWithCapacity:10];
    NSMutableDictionary *versionsDict = [NSMutableDictionary dictionaryWithCapacity:10];

	[appMetaData setObject: @"3821326712412380" forKey: @"sltk"];
	[appMetaData setObject: @"2024082613023838" forKey: @"ival"];
	[appMetaData setObject: @"QRPOC" forKey: @"appName"];
	[appMetaData setObject: @"1.0.0" forKey: @"appVersion"];
	[appMetaData setObject: @"QRPOC" forKey: @"appID"];
	[appMetaData setObject: @"KonyLabs" forKey: @"vendor"];
	[appMetaData setObject: [NSNumber numberWithInt:20240100000] forKey: @"platformVersion"];
	[appMetaData setObject: @"" forKey: @"logoResourceID"];
	[appMetaData setObject: [NSNumber numberWithInt:0] forKey: @"isMVCMode"];
	[appMetaData setObject: @"" forKey: @"DefaultLocale"];
	[appMetaData setObject: [NSArray arrayWithObjects:@"K4C9S0V89DS9W", nil] forKey: @"startupFiles"];
	[versionsDict setObject: @"202404.0.0.v202402211447" forKey: @"iOS_Plugin"];
	[versionsDict setObject: @"202404.0.0.v202402271515" forKey: @"MobileFabric_Client_SDK"];
	[versionsDict setObject: @"9.4.29.v202307191105" forKey: @"Android"];
	[versionsDict setObject: @"202404.0.0.v202402211432" forKey: @"Kony_Reference_Architecture"];
	[versionsDict setObject: @"202401.0.0.v202311271218" forKey: @"Kony_Studio"];
	[appMetaData setObject: @"202404.0.0.v202402211447" forKey: @"iOS_Plugin"];
	[appMetaData setObject: @"" forKey: @"splashanimationduration"];
	[appMetaData setObject: @"false" forKey: @"splashvideointerruptible"];
	[appMetaData setObject: @"true" forKey: @"splashstoryboardenabled"];
	[appMetaData setObject: @"false" forKey: @"splashindicator"];
    [appMetaData setObject:versionsDict forKey: @"pluginversions"];

    return appMetaData;
}

+(void) registerFFIAPIs:(Runtime *)rt
{

	// Register the FFI APIs with the JS Runtime
	[rt registerClassAsStaticAPI:[JSBinarydataFFIAPI class]];
	[rt registerClassAsStaticAPI:[JSKonyLoggerFFIAPI class]];
	[rt registerClass:[JSKonyLoggerInitializeLoggerFFIClass class]];
	[rt registerClassAsStaticAPI:[JSQRCodeFFIiOSFFIAPI class]];
	[rt registerClassAsStaticAPI:[JSSSOFFIFFIAPI class]];
}

@end
    
void execute()
{

}
