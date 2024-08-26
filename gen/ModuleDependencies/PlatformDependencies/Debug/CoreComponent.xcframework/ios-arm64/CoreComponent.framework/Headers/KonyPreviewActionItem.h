//
//  KonyPreviewActionItem.h
//  VM
//
//  Created by Mahesh/KH1128 on 06/01/16.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#ifndef KonyPreviewAction_h
#define KonyPreviewAction_h

#define PREVIEW_ACTION_TYPE     @"type"
#define PREVIEW_ACTION_TITLE    @"title"
#define PREVIEW_ACTION_STYLE    @"style"
#define PREVIEW_ACTION_CALLBACK @"onPreviewAction"
#define PREVIEW_ACTION_ACTIONS  @"actions"

#define isUIPreviewActionStyle(style)   ((style >= UIPreviewActionStyleDefault) && (style <= UIPreviewActionStyleDestructive))
#define isPreviewActionType(type)       ((type >= PreviewActionTypeIndividual) && (type <= PreviewActionTypeGroup))

@interface KonyPreviewActionItem : NSObject

+ (id <UIPreviewActionItem>)actionItemWithPreviewAction:(NSDictionary *)previewAction;

@end

#endif /* KonyPreviewAction_h */
