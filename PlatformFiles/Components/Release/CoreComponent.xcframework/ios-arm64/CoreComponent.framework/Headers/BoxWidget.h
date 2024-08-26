//
//  BoxWidget.h
//  VM
//
//  Created by KH206 on 08/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ContainerWidget.h"
#import "Skin.h"
#import "BoxView.h"
#import <UIKit/UIKit.h>
#import "ViewLayoutDelegate.h"
#import "ViewDrawingDelegate.h"
#import "KonyGestureRecognizer.h"
#import "BoxModel.h"
#import "BoxWidgetBase.h"


@interface BoxWidget : BoxWidgetBase<ViewLayoutDelegate,ViewDrawingDelegate>
{

}

@end

