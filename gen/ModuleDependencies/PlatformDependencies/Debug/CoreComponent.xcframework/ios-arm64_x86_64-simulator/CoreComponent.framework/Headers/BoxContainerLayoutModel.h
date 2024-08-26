//
//  BoxContainerLayoutModel.h
//  VM
//
//  Created by KH206 on 20/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BoxLayoutModel.h"

@interface BoxContainerLayoutModel : BoxLayoutModel
{
    KonyContainerOrientation	orientation;
	BOOL						percentLayout;
    KonyWidgetLayoutDirection	widgetDirection;
}

@property (readwrite)           KonyContainerOrientation	orientation;
@property (readwrite) BOOL      percentLayout;
@property (readwrite)           KonyWidgetLayoutDirection	widgetDirection;

@end
