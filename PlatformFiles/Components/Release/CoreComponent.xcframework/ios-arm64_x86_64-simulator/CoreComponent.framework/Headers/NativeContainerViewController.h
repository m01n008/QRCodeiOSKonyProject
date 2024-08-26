//
//  NativeViewController.h
//  VM
//
//  Created by Snigdha Satapathy on 24/08/15.
//
//

#ifndef VM_NativeViewController_h
#define VM_NativeViewController_h

#import <UIKit/UIKit.h>
#import "WidgetModel.h"
#import "ViewLayoutDelegate.h"
#import "ViewDrawingDelegate.h"

@interface NativeContainerViewController : UIViewController<ViewLayoutDelegate,ViewDrawingDelegate>

-(id) initWithModel:(WidgetModel *)model;
- (void)orientationChanged:(NSNumber*)orientation;

- (void)executeDoLayoutCallback;
- (void) executeCleanup;
@end

#endif
