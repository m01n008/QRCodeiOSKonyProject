//
//  LayoutManager.h
//  VM
//
//  Created by KH206 on 26/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "KonyManager.h"
#import "Widget.h"

#define LAYOUT_OPTION_INSETS @"LayoutOptionInsets"
#define LAYOUT_OPTION_RESPECT_SCREEN_LEVEL_WIDGET @"LayoutOptionRespectScreenLevelWidget"
#define LAYOUT_CONTAINER_WEIGHT_MARGINS @"marginsIncludedInWidgetContainerWeight"
#define LAYOUT_OPTION_ANIMATION_PARENT_WIDGET @"ParentWidget"

CGSize CGSizeIntegral(CGSize aSize);
CGRect KCGRectIntegral(CGRect aRect);
@interface LayoutManager : KonyManager

- (CGSize) doLayoutForWidgets:(NSArray *)widgets inContainer: (id)container withLayoutModel:(LayoutModel*) layoutModel andOptions:(NSDictionary *)layoutOptions isSetFrameAndCallDoLayoutEnabled:(BOOL)shouldSetFrameAndCallDoLayout;

- (CGSize) doLayoutForWidgets:(NSArray *)widgets inContainer: (id)container withLayoutModel:(LayoutModel*) layoutModel andOptions:(NSDictionary *)layoutOptions;

- (CGSize) doLayoutForWidgets:(NSArray *)widgets inView: (UIView*)view withLayoutModel:(LayoutModel*) layoutModel andOptions: (NSDictionary*) layoutOptions;
- (BOOL) isLayoutInProgress;

@end
