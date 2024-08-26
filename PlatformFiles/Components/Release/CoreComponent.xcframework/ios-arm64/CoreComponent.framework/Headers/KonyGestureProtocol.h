//
//  KonyGestureProtocol.h
//  BasicTouch
//
//  Created by Shiva on 01/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum GestureTypes {
	KONYGESTURE_SINGLETAP = 0,
	KONYGESTURE_FOCUSHANDLER
} KonyGestureType;

@protocol KonyGestureProtocol <NSObject>

@optional

	- (BOOL) shouldNotifyFocusEvents;
	- (UIEdgeInsets) edgeInsetsForFocus;
	- (void) touchInFocus;
	- (void) touchOutOfFocus;
@required
	- (BOOL) shouldHandleGesture: (KonyGestureType) gesture;
	- (void) gestureRecognized: (KonyGestureType) gesture withInfo : (NSDictionary *) info;

@end
