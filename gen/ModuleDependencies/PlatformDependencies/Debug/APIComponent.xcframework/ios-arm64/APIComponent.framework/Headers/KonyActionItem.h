//
//  KonyActionItem.h
//  VM
//
//  Created by Saianuhya Kodimela on 07/01/17.
//
//

#import <Foundation/Foundation.h>
#import <CoreComponent/KonyTypes.h>
#import "ActionSheetModel.h"
#import <CoreComponent/CallBack.h>

@interface KonyActionItem : NSObject
{
    NSMutableArray *actionItemCallbackArgs;
    CallBack *actionIemCallback;
}

@property (nonatomic, retain) UIAlertAction *actionItem;

- (id)initWithTitle:(NSString *)title style:(KonyActionItemStyle)style handler:(CallBack *)handler;
- (void)setActionItemCallbackWith:(ActionSheetModel *)actionSheetModel andActionItem:(id)jsActionItem;

- (BOOL)enabled;
- (void)setEnabled:(BOOL)enabled;
- (NSString *)title;
- (NSInteger)style;

@end
