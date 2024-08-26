#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UICellConfigurationState_symbols(JSContext*);
@protocol UICellConfigurationStateInstanceExports<JSExport>
@property (getter=isSwiped,nonatomic) BOOL swiped;
@property (getter=isExpanded,nonatomic) BOOL expanded;
@property (nonatomic) UICellConfigurationDropState cellDropState;
@property (getter=isReordering,nonatomic) BOOL reordering;
@property (getter=isEditing,nonatomic) BOOL editing;
@property (nonatomic) UICellConfigurationDragState cellDragState;
@end
@protocol UICellConfigurationStateClassExports<JSExport>
@end
#pragma clang diagnostic pop