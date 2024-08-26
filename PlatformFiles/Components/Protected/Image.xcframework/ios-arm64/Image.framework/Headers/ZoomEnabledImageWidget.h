//
//  ZoomEnabledImageWidget.h
//  Image
//
//  Created by Sneha Kolukuluri on 11/12/2018.
//  Copyright © 2018 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageWidget.h"
#import <CoreComponent/Widget.h>

@interface ZoomEnabledImageWidget : ImageWidget <UIScrollViewDelegate>
{
    NSDictionary *zoomValue;
    BOOL setImageFrame;
    UIScrollView *zoomImageContainer;
    NSMutableArray *widgetsToLayout;
}

@property (nonatomic) NSMutableArray *overlayWidgetList;
- (void) addOverlayWidgets:(NSArray*)overlayWidgets;
- (void) removeOverlayWidgets:(NSArray*)widgets;
@end


@interface GestureDelegate : NSObject

@property (nonatomic) Widget *widget;
@property (nonatomic) ImageWidget *parentImageWidget;

- (void)longPressDetected:(UILongPressGestureRecognizer*)sender;

@end
