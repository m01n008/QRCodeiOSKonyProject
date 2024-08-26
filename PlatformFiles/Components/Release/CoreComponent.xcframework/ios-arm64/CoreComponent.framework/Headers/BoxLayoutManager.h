//
//  BoxLayoutManager.h
//  VM
//
//  Created by KH206 on 11/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LayoutManager.h"
#import "ContainerWidget.h"

@interface BoxLayoutManager : LayoutManager{
    
    BOOL shouldAnimate;
    
}

@property (atomic) BOOL shouldAnimate;
- (CGSize) getPreferredSizeForGivenSize: (CGSize) givenSize widgetSkin:(Skin*)widgetskin containerWidget:(ContainerWidget*)containerWidget constraits:(NSDictionary*)widgetConstraints respectBorders:(BOOL)respectBorders excludeBorderFromAvblWidth:(BOOL) excludeBorder;//to enhance backward compatibility after making calculations of getPreferredSize for boxLayoutManager..

@end
