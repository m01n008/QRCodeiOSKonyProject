//
//  KonyTitleBarButton.h
//  VM
//
//  Created by KH206 on 08/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    KonyTitleBarButtonTypeNone		= 0,
    KonyTitleBarButtonTypeText		= 1,
	KonyTitleBarButtonTypeButton	= 2,
    KonyTitleBarButtonTypeImage		= 3
} KonyTitleBarButtonType;


@interface KonyTitleBarButton : UIButton
{
	UIColor *customBgColor;
	BOOL	leftPointing;
	BOOL	withBackGroundImage;
    BOOL    hasAssociatedClosure;
    BOOL    showPreviousFormTitle;
}

@property (nonatomic, retain) UIColor *customBgColor;
@property BOOL leftPointing;
@property BOOL withBackGroundImage;
@property BOOL hasAssociatedClosure;
@property BOOL showPreviousFormTitle;

@end