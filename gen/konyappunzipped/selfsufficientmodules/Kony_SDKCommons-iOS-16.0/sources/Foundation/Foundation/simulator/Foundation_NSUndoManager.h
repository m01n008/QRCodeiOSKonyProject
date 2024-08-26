#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSUndoManager_symbols(JSContext*);
@protocol NSUndoManagerInstanceExports<JSExport>
@property (readonly) NSInteger groupingLevel;
@property (getter=isUndoRegistrationEnabled,readonly) BOOL undoRegistrationEnabled;
@property () BOOL groupsByEvent;
@property () NSUInteger levelsOfUndo;
@property (copy) NSArray * runLoopModes;
@property (readonly) BOOL canUndo;
@property (readonly) BOOL canRedo;
@property (getter=isUndoing,readonly) BOOL undoing;
@property (getter=isRedoing,readonly) BOOL redoing;
@property (readonly) BOOL undoActionIsDiscardable;
@property (readonly) BOOL redoActionIsDiscardable;
@property (readonly,copy) NSString * undoActionName;
@property (readonly,copy) NSString * redoActionName;
@property (readonly,copy) NSString * undoMenuItemTitle;
@property (readonly,copy) NSString * redoMenuItemTitle;
-(void) beginUndoGrouping;
-(void) endUndoGrouping;
-(void) disableUndoRegistration;
-(void) enableUndoRegistration;
-(void) undo;
-(void) redo;
-(void) undoNestedGroup;
-(void) removeAllActions;
-(void) removeAllActionsWithTarget: (id) target ;
JSExportAs(registerUndoWithTargetSelectorObject,
-(void) jsregisterUndoWithTarget: (id) target selector: (NSString *) selector object: (id) anObject );
-(id) prepareWithInvocationTarget: (id) target ;
JSExportAs(registerUndoWithTargetHandler,
-(void) jsregisterUndoWithTarget: (id) target handler: (JSValue *) undoHandler );
-(void) setActionIsDiscardable: (BOOL) discardable ;
-(void) setActionName: (NSString *) actionName ;
-(NSString *) undoMenuTitleForUndoActionName: (NSString *) actionName ;
-(NSString *) redoMenuTitleForUndoActionName: (NSString *) actionName ;
@end
@protocol NSUndoManagerClassExports<JSExport>
@end
#pragma clang diagnostic pop