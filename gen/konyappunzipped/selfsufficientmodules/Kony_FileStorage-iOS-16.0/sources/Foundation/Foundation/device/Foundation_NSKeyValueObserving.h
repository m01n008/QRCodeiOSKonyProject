#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSKeyValueObserving_symbols(JSContext*);
@protocol NSObjectNSKeyValueObservingCategoryInstanceExports<JSExport>
@end
@protocol NSObjectNSKeyValueObservingCategoryClassExports<JSExport>
@end
@protocol NSObjectNSKeyValueObserverRegistrationCategoryInstanceExports<JSExport>
-(void) removeObserver: (NSObject *) observer forKeyPath: (NSString *) keyPath ;
@end
@protocol NSObjectNSKeyValueObserverRegistrationCategoryClassExports<JSExport>
@end
@protocol NSArrayNSKeyValueObserverRegistrationCategoryInstanceExports<JSExport>
-(void) removeObserver: (NSObject *) observer fromObjectsAtIndexes: (NSIndexSet *) indexes forKeyPath: (NSString *) keyPath ;
-(void) removeObserver: (NSObject *) observer forKeyPath: (NSString *) keyPath ;
@end
@protocol NSArrayNSKeyValueObserverRegistrationCategoryClassExports<JSExport>
@end
@protocol NSOrderedSetNSKeyValueObserverRegistrationCategoryInstanceExports<JSExport>
-(void) removeObserver: (NSObject *) observer forKeyPath: (NSString *) keyPath ;
@end
@protocol NSOrderedSetNSKeyValueObserverRegistrationCategoryClassExports<JSExport>
@end
@protocol NSSetNSKeyValueObserverRegistrationCategoryInstanceExports<JSExport>
-(void) removeObserver: (NSObject *) observer forKeyPath: (NSString *) keyPath ;
@end
@protocol NSSetNSKeyValueObserverRegistrationCategoryClassExports<JSExport>
@end
@protocol NSObjectNSKeyValueObserverNotificationCategoryInstanceExports<JSExport>
-(void) willChangeValueForKey: (NSString *) key ;
-(void) didChangeValueForKey: (NSString *) key ;
-(void) willChange: (NSKeyValueChange) changeKind valuesAtIndexes: (NSIndexSet *) indexes forKey: (NSString *) key ;
-(void) didChange: (NSKeyValueChange) changeKind valuesAtIndexes: (NSIndexSet *) indexes forKey: (NSString *) key ;
-(void) willChangeValueForKey: (NSString *) key withSetMutation: (NSKeyValueSetMutationKind) mutationKind usingObjects: (NSSet *) objects ;
-(void) didChangeValueForKey: (NSString *) key withSetMutation: (NSKeyValueSetMutationKind) mutationKind usingObjects: (NSSet *) objects ;
@end
@protocol NSObjectNSKeyValueObserverNotificationCategoryClassExports<JSExport>
@end
@protocol NSObjectNSKeyValueObservingCustomizationCategoryInstanceExports<JSExport>
@end
@protocol NSObjectNSKeyValueObservingCustomizationCategoryClassExports<JSExport>
+(NSSet *) keyPathsForValuesAffectingValueForKey: (NSString *) key ;
+(BOOL) automaticallyNotifiesObserversForKey: (NSString *) key ;
@end
#pragma clang diagnostic pop