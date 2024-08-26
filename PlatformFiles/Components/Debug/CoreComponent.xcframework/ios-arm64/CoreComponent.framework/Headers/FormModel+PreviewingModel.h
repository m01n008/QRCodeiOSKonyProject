//
//  FormModel+PreviewingModel.h
//  VM
//
//  Created by Mahesh/KH1128 on 31/12/15.
//
//

#import "FormModel.h"

@interface FormModel (PreviewingModel)

//preview actions
@property (nonatomic, retain) NSArray<id <UIPreviewActionItem>> *previewActions;

- (NSArray<id <UIPreviewActionItem>> *)previewActions;
- (void)setPreviewActions:(NSArray<id <UIPreviewActionItem>> *)previewActions;

@end
