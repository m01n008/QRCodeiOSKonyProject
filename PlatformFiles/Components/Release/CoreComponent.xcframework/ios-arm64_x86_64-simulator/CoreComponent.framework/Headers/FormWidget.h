//
//  FormWidget.h
//  VM
//
//  Created by KH206 on 08/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContainerWidget.h"
#import "ContainerBackgroundView.h"
#import "ContentView.h"
#import "ViewLayoutDelegate.h"
#import "ViewDrawingDelegate.h"
#import "WheelWidgetHandler.h"
#import "KonyInputAccessoryView.h"
#import "FormModel.h"
#import "RootContainerWidget.h"
#import "QuartzCore/QuartzCore.h"
#import "KonyNotificationCenter.h"

#import "KonyScrollViewOffsetHandler.h"
#import "RootContainerWidgetWithSafeAreaLayout.h"

@interface FormWidget : RootContainerWidgetWithSafeAreaLayout <KonyScrollContainer>
{
    BOOL userInteractionBeforeEvent;
    CGRect prevFormFrame;
    NSValue *offsetValue;
    NSInteger activityIndicatorViewCount;
    unsigned int currentPage;
    BOOL isInitialisedWithContentOffset;
}

//Redeclared widgetModel. This avoids unnecessary typecastings in the code!
@property (nonatomic, readonly)  FormModel *widgetModel;
@end
