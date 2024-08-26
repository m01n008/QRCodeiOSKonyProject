#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_ThirdParty_NSObject_KonyKVOWrapper_symbols(JSContext*);
@protocol NSObjectKonyKVOWrapperCategoryInstanceExports<JSExport>
-(void) konyRemoveObserver: (NSObject *) observer forKeyPath: (NSString *) keyPath ;
-(void) konyAddObserver: (NSObject *) observer forKeyPath: (NSString *) keyPath options: (NSKeyValueObservingOptions) options ;
-(void) konyObserveValueForKeyPath: (NSString *) keyPath ofObject: (id) object change: (NSDictionary *) change ;
@end
@protocol NSObjectKonyKVOWrapperCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop