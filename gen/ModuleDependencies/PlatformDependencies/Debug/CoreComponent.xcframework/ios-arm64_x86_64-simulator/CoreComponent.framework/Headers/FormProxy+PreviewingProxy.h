//
//  FormProxy+PreviewingProxy.h
//  VM
//
//  Created by KH1128 on 31/12/15.
//
//

#import "FormProxy.h"

@interface FormProxy (PreviewingProxy)

- (void)setPreviewActions:(NSArray<id <UIPreviewActionItem>> *)previewActions;
    
@end
