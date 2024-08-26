#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIActivityItemsConfiguration_symbols(JSContext*);
@protocol UIActivityItemsConfigurationInstanceExports<JSExport, UIActivityItemsConfigurationReadingInstanceExports_>
@property (getter=getJsApplicationActivitiesProvider,setter=setJsApplicationActivitiesProvider:) JSValue* jsapplicationActivitiesProvider;
@property (getter=getJsPreviewProvider,setter=setJsPreviewProvider:) JSValue* jspreviewProvider;
@property (getter=getJsPerItemMetadataProvider,setter=setJsPerItemMetadataProvider:) JSValue* jsperItemMetadataProvider;
@property (copy,nonatomic) NSArray * supportedInteractions;
@property (getter=getJsMetadataProvider,setter=setJsMetadataProvider:) JSValue* jsmetadataProvider;
@property (nonatomic,strong) id localObject;
JSExportAs(initWithItemProviders,
-(id) jsinitWithItemProviders: (NSArray *) itemProviders );
JSExportAs(initWithObjects,
-(id) jsinitWithObjects: (NSArray *) objects );
@end
@protocol UIActivityItemsConfigurationClassExports<JSExport, UIActivityItemsConfigurationReadingClassExports_>
+(id) activityItemsConfigurationWithObjects: (NSArray *) objects ;
+(id) activityItemsConfigurationWithItemProviders: (NSArray *) itemProviders ;
@end
#pragma clang diagnostic pop