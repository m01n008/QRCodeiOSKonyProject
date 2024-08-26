//
//  Widget+Widget_Hierarchy.h
//  VM
//
//  Created by KH206 on 26/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Widget.h"


@interface Widget (WidgetHierarchy)

@property (nonatomic, readwrite, assign, getter = getParent, setter = setParent:) Widget* parentWidget;

@end
