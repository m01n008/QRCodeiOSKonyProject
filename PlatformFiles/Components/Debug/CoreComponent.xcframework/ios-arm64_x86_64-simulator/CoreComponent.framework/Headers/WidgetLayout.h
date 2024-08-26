//
//  WidgetLayout.h
//  VM
//
//  Created by KH206 on 09/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LayoutModel.h"

@protocol WidgetLayout <NSObject>

@required

- (CGSize) getPreferredSizeForGivenSize: (CGSize) givenSize useCache: (BOOL) useLayoutCache; 
- (CGSize) getPreferredSizeForGivenSize: (CGSize) givenSize;
- (void) setWidgetViewFrame: (CGRect) frame;
- (LayoutModel*) layoutModel;
- (BOOL) isVisible;
- (NSArray*) nonLayoutProperties;
/**
 @brief Checks whether the widget respects safeArea (or) not.
 To change this behaviour, this method should be oveerriden in respective widget class and the changes should be made in that method.
 @return Returns a BOOL value. Default value is YES.
 **/
- (BOOL) respectsSafeArea;
- (BOOL) isScreenLevelWidget;
- (KonyScreenLevelWidgetHeaderRetainMode) getScreenLevelWidgetHeaderRetainMode;
- (void) setHeadersForScreenLevelWidget: (NSArray*) headerList;
- (void) setFootersForScreenLevelWidget: (NSArray*) footerList;
- (KonyWidgetPosition) getPositionTypeForWidget;
@optional

- (NSDictionary*) layoutConstraints;
- (void) willBeginLayout : (NSDictionary*) context;
- (void) didEndLayout : (NSDictionary*) context;

@end
