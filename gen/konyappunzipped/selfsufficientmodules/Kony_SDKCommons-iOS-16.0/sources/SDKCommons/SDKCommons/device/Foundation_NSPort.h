#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSPort_symbols(JSContext*);
@protocol NSPortInstanceExports<JSExport, NSCopyingInstanceExports_, NSCodingInstanceExports_>
@property (getter=isValid,readonly) BOOL valid;
@property (readonly) NSUInteger reservedSpaceLength;
-(void) invalidate;
-(void) setDelegate: (id) anObject ;
-(id) delegate;
-(void) scheduleInRunLoop: (NSRunLoop *) runLoop forMode: (NSRunLoopMode) mode ;
-(void) removeFromRunLoop: (NSRunLoop *) runLoop forMode: (NSRunLoopMode) mode ;
-(BOOL) sendBeforeDate: (NSDate *) limitDate components: (NSMutableArray *) components from: (NSPort *) receivePort reserved: (NSUInteger) headerSpaceReserved ;
-(BOOL) sendBeforeDate: (NSDate *) limitDate msgid: (NSUInteger) msgID components: (NSMutableArray *) components from: (NSPort *) receivePort reserved: (NSUInteger) headerSpaceReserved ;
@end
@protocol NSPortClassExports<JSExport, NSCopyingClassExports_, NSCodingClassExports_>
+(NSPort *) port;
@end
@protocol NSMachPortInstanceExports<JSExport>
@property (readonly) uint32_t machPort;
JSExportAs(initWithMachPort,
-(id) jsinitWithMachPort: (uint32_t) machPort );
-(void) setDelegate: (id) anObject ;
-(id) delegate;
JSExportAs(initWithMachPortOptions,
-(id) jsinitWithMachPort: (uint32_t) machPort options: (NSMachPortOptions) f );
-(void) scheduleInRunLoop: (NSRunLoop *) runLoop forMode: (NSRunLoopMode) mode ;
-(void) removeFromRunLoop: (NSRunLoop *) runLoop forMode: (NSRunLoopMode) mode ;
@end
@protocol NSMachPortClassExports<JSExport>
+(NSPort *) portWithMachPort: (uint32_t) machPort ;
+(NSPort *) portWithMachPort: (uint32_t) machPort options: (NSMachPortOptions) f ;
@end
@protocol NSMessagePortInstanceExports<JSExport>
@end
@protocol NSMessagePortClassExports<JSExport>
@end
@protocol NSPortDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) handlePortMessage: (NSPortMessage *) message ;
@end
@protocol NSPortDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol NSMachPortDelegateInstanceExports_<JSExport, NSPortDelegateInstanceExports_>
@end
@protocol NSMachPortDelegateClassExports_<JSExport, NSPortDelegateClassExports_>
@end
#pragma clang diagnostic pop