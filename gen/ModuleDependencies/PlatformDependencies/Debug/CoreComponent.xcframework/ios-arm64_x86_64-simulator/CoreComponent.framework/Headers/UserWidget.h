//
//  UserWidget.h
//  VM
//
//  Created by Dhananjay on 14/12/16.
//
//

#import "Widget.h"
#import "FlexLayoutContainer.h"

@interface UserWidget : Widget

{
    FlexLayoutContainer *flexLayoutContainer;
}

@property (nonatomic, retain) FlexLayoutContainer *flexLayoutContainer;

- (void)changeUserWidgetReferenceView;

@end
