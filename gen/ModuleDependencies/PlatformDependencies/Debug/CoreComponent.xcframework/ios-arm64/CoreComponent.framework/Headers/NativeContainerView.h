//
//  NativeContainerView.h
//  VM
//
//  Created by Snigdha Satapathy on 13/09/15.
//
//

#ifndef VM_NativeContainerView_h
#define VM_NativeContainerView_h

#import <UIKit/UIKit.h>
#import "ViewDrawingDelegate.h"
#import "ViewLayoutDelegate.h"

@interface NativeContainerView : UIView

@property(weak,readwrite, nonatomic) id<ViewLayoutDelegate> layoutDelegate;
@property(weak,readwrite, nonatomic) id<ViewDrawingDelegate> drawingDelegate;

-(id)initWithLayOutDelegate:(id<ViewLayoutDelegate>) lDelegate andDrawingDelegate:(id<ViewDrawingDelegate>) dDelegate;

@end

#endif
