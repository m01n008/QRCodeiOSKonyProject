#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSLock_symbols(JSContext*);
@protocol NSLockInstanceExports<JSExport, NSLockingInstanceExports_>
@property (copy) NSString * name;
-(BOOL) tryLock;
-(BOOL) lockBeforeDate: (NSDate *) limit ;
@end
@protocol NSLockClassExports<JSExport, NSLockingClassExports_>
@end
@protocol NSConditionLockInstanceExports<JSExport, NSLockingInstanceExports_>
@property (readonly) NSInteger condition;
@property (copy) NSString * name;
JSExportAs(initWithCondition,
-(id) jsinitWithCondition: (NSInteger) condition );
-(void) lockWhenCondition: (NSInteger) condition ;
-(BOOL) tryLock;
-(BOOL) tryLockWhenCondition: (NSInteger) condition ;
-(void) unlockWithCondition: (NSInteger) condition ;
-(BOOL) lockBeforeDate: (NSDate *) limit ;
-(BOOL) lockWhenCondition: (NSInteger) condition beforeDate: (NSDate *) limit ;
@end
@protocol NSConditionLockClassExports<JSExport, NSLockingClassExports_>
@end
@protocol NSRecursiveLockInstanceExports<JSExport, NSLockingInstanceExports_>
@property (copy) NSString * name;
-(BOOL) tryLock;
-(BOOL) lockBeforeDate: (NSDate *) limit ;
@end
@protocol NSRecursiveLockClassExports<JSExport, NSLockingClassExports_>
@end
@protocol NSConditionInstanceExports<JSExport, NSLockingInstanceExports_>
@property (copy) NSString * name;
-(void) wait;
-(BOOL) waitUntilDate: (NSDate *) limit ;
-(void) signal;
-(void) broadcast;
@end
@protocol NSConditionClassExports<JSExport, NSLockingClassExports_>
@end
@protocol NSLockingInstanceExports_<JSExport>
-(void) lock;
-(void) unlock;
@end
@protocol NSLockingClassExports_<JSExport>
@end
#pragma clang diagnostic pop