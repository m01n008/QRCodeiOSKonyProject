//
//  FormController1+PreviewingController.h
//  VM
//
//  Created by Mahesh/KH1128 on 31/12/15.
//
//

#import "FormController1.h"

#define PEEK_FORM       @"peekForm"
#define SOURCE_RECT     @"focusRect"
#define CONTENT_SIZE    @"contentSize"

@interface FormController1 (PreviewingController) <UIViewControllerPreviewingDelegate>

typedef NSMutableDictionary<NSValue *, Widget *> PreviewWidgetTableType;
typedef id<UIViewControllerPreviewing> PreviewingContextType;

// this property maps views to widgets. this is used to retrieve
// widgets based on the view registered for previewing
@property (nonatomic, retain) PreviewWidgetTableType *previewWidgetTable;

- (PreviewingContextType)registerPreviewingForWidget:(Widget *)widget;
- (void)unregisterPreviewingForWidget:(Widget *)widget;

@end