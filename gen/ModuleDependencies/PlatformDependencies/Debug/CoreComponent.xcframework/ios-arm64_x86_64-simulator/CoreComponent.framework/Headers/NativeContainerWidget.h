//
//  NativeContainerWidget.h
//  VM
//
//  Created by Snigdha on 4/8/2015
//

#import <UIKit/UIKit.h>
#import "Widget.h"
#import "KonyTypes.h"
#import "ViewLayoutDelegate.h"
#import "ViewDrawingDelegate.h"
#import "NativeContainerViewController.h"

@interface NativeContainerWidget : Widget
{
    NativeContainerViewController *nativeContainerViewController;
}
@property (nonatomic, retain) NativeContainerViewController   *nativeContainerViewController;
-(void) createNativeContainerView;

@end
