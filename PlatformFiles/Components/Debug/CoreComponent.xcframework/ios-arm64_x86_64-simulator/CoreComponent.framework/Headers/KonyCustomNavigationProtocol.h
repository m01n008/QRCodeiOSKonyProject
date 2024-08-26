//
//  KonyCustomNavigationProtocol.h
//  VM
//
//  Created by KH206 on 10/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTitleBarSkin.h"

typedef enum KonyCustomTitleBarLeftViewType
{
    KonyCustomTitleBarLeftViewTypeDefault = 0,
    KonyCustomTitleBarLeftViewTypeCustom = 1,
    KonyCustomNavigationBackButtonTitleTypeNone
} KonyCustomTitleBarLeftViewType;

typedef  enum KonyCustomNavigationBackButtonTitleType
{
    KonyCustomNavigationBackButtonTitleTypeDefault = 0,
    KonyCustomNavigationBackButtonTitleTypeCustom = 1,
    KonyCustomNavigationBackButtonTitleTypePreviousFormTitle
} KonyCustomNavigationBackButtonTitleType;



@protocol KonyCustomNavigationProtocol <NSObject>

- (BOOL) rendersTitleBar;
- (BOOL) titleBarRequiresAnimation;

- (KonyCustomTitleBarLeftViewType) titleBarLeftViewType;
- (KonyCustomNavigationBackButtonTitleType) backButtonTitleType;
- (NSString*) backButtonTitle;
- (id) customTitleBarLeftView;
- (id) customTitleBarRightView;
- (id) customTitleView:(UIInterfaceOrientation)interfaceOrientation;
- (KonyTitleBarSkin*) titleBarSkin;
- (KonyTitleBarSkin*) leftViewSkin;
- (KonyTitleBarSkin*) rightViewSkin;
- (NSString*) titleString;

- (BOOL) hasUpdates;
- (void) willBeginRenderingtitleBar;
- (void) didEndRenderingtitleBar;
- (BOOL) isLeftClosureDefined;

- (void) applyAccessibilityPropsToLeftButton:(NSObject *)anObject;
- (void) applyAccessibilityPropsToRightButton:(NSObject *)anObject;
- (void) applyAccessibilityPropsToTitle:(NSObject *)anObject;

- (UIColor *)fontColorForLeftButton;
- (UIColor *)fontColorForRightButton;

@optional
- (NSNumber *) getContainerWeightForResizingNavBarImage;
- (KonyTitleBarSkin*) titleBarTextSkin;


@end
