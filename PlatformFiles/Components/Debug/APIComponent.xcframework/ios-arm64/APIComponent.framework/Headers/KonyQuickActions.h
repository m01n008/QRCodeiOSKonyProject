//
//  KonyQuickActions.h
//  VM
//
//  Created by Mahesh/KH1128 on 18/12/15.
//
//

#ifndef KonyQuickActions_h
#define KonyQuickActions_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CallBack;
@class KonyQuickActionItem;

/*
 * a singleton class that provides interface to add, access dynamic app shortcut items.
 * internally, it maintains a list of quick action items(KonyQuickActionItem).
 */
@interface KonyQuickActions : NSObject

@property (nonatomic, retain) NSMutableArray<KonyQuickActionItem *> *quickActionItems;

+ (KonyQuickActions*)sharedInstance;

- (BOOL)addDynamicQuickActionItem:(NSDictionary*)quickActionItem;
- (NSArray*)getDynamicQuickActionItems;
- (void)setAppShortcutItems;
- (void)removeAllQuickActionItems;
- (NSDictionary*)createQuickActionItemFromShortcutItem:(UIApplicationShortcutItem*)shortcutItem;

@end

#endif /* KonyQuickActions_h */
