#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSFilePresenter_symbols(JSContext*);
@protocol NSFilePresenterInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,copy) NSURL * presentedItemURL;
@property (readonly,retain) NSOperationQueue * presentedItemOperationQueue;
@property (readonly,strong) NSSet * observedPresentedItemUbiquityAttributes;
JSExportAs(relinquishPresentedItemToReader,
-(void) jsrelinquishPresentedItemToReader: (JSValue *) reader );
JSExportAs(relinquishPresentedItemToWriter,
-(void) jsrelinquishPresentedItemToWriter: (JSValue *) writer );
JSExportAs(savePresentedItemChangesWithCompletionHandler,
-(void) jssavePresentedItemChangesWithCompletionHandler: (JSValue *) completionHandler );
JSExportAs(accommodatePresentedItemDeletionWithCompletionHandler,
-(void) jsaccommodatePresentedItemDeletionWithCompletionHandler: (JSValue *) completionHandler );
-(void) presentedItemDidMoveToURL: (NSURL *) newURL ;
-(void) presentedItemDidChange;
-(void) presentedItemDidChangeUbiquityAttributes: (NSSet *) attributes ;
-(void) presentedItemDidGainVersion: (NSFileVersion *) version ;
-(void) presentedItemDidLoseVersion: (NSFileVersion *) version ;
-(void) presentedItemDidResolveConflictVersion: (NSFileVersion *) version ;
JSExportAs(accommodatePresentedSubitemDeletionAtURLCompletionHandler,
-(void) jsaccommodatePresentedSubitemDeletionAtURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
-(void) presentedSubitemDidAppearAtURL: (NSURL *) url ;
-(void) presentedSubitemAtURL: (NSURL *) oldURL didMoveToURL: (NSURL *) newURL ;
-(void) presentedSubitemDidChangeAtURL: (NSURL *) url ;
-(void) presentedSubitemAtURL: (NSURL *) url didGainVersion: (NSFileVersion *) version ;
-(void) presentedSubitemAtURL: (NSURL *) url didLoseVersion: (NSFileVersion *) version ;
-(void) presentedSubitemAtURL: (NSURL *) url didResolveConflictVersion: (NSFileVersion *) version ;
@end
@protocol NSFilePresenterClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop