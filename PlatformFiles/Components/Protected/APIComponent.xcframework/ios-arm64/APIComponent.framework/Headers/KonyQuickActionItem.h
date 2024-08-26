//
//  KonyQuickActionItem.h
//  VM
//
//  Created by Mahesh/KH1128 on 21/12/15.
//
//

#ifndef KonyQuickActionItem_h
#define KonyQuickActionItem_h

#import <Foundation/NSObject.h>

#define     TYPE_ID     @"id"
#define     TITLE       @"title"
#define     SUBTITLE    @"subtitle"
#define     ICON        @"icon"
#define     INFO        @"info"

/*
 * a custom class to create UIApplicationShortcutItem objects.
 * it provides interface for quickActionItem config from js side.
 */
@interface KonyQuickActionItem : UIApplicationShortcutItem

//stores the shortcut iconType
@property (nonatomic, assign) UIApplicationShortcutIconType iconType;

- (instancetype)initWithQuickActionItem:(NSDictionary*)quickActionItem;

@end

#endif /* KonyQuickActionItem_h */
