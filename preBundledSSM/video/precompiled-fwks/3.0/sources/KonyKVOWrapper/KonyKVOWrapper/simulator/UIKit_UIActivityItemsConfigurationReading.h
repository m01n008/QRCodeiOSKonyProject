#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIActivityItemsConfigurationReading_symbols(JSContext*);
@protocol UIActivityItemsConfigurationReadingInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,copy,nonatomic) NSArray * applicationActivitiesForActivityItemsConfiguration;
@property (readonly,copy,nonatomic) NSArray * itemProvidersForActivityItemsConfiguration;
-(NSItemProvider *) activityItemsConfigurationPreviewForItemAtIndex: (NSInteger) index intent: (UIActivityItemsConfigurationPreviewIntent) intent suggestedSize: (CGSize) suggestedSize ;
-(id) activityItemsConfigurationMetadataForKey: (UIActivityItemsConfigurationMetadataKey) key ;
-(BOOL) activityItemsConfigurationSupportsInteraction: (UIActivityItemsConfigurationInteraction) interaction ;
-(id) activityItemsConfigurationMetadataForItemAtIndex: (NSInteger) index key: (UIActivityItemsConfigurationMetadataKey) key ;
@end
@protocol UIActivityItemsConfigurationReadingClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop