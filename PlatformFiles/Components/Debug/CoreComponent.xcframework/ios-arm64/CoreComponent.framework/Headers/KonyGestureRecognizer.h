//
//  KonyGestureRecognizer.h
//  BasicTouch
//
//  Created by Shiva on 01/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyGestureProtocol.h"

@interface KonyGestureRecognizer : NSObject

@property (nonatomic, readwrite, weak) id<KonyGestureProtocol> delegate;
@property (nonatomic, readwrite, assign) UIView *view;
@property (nonatomic, readwrite, retain) NSMutableArray *gestureRecognisers;


- (BOOL) isGestureRecognised:(KonyGestureType) gType;
- (NSMutableArray *) getSupportedGestureTypes;
- (void) updateWithTouches: (NSSet *) touches andEvent: (UIEvent *) event;
- (void) reload;

@end


@interface GestureRecognizer : NSObject
{
	UIView *view;
	id<KonyGestureProtocol> __weak delegate;
    KonyGestureType gestureType;
}

@property (nonatomic, assign) KonyGestureType gestureType;
@property (nonatomic, weak) id<KonyGestureProtocol> delegate;

- (id) initWithView : (UIView *) view andDelegate: (id<KonyGestureProtocol>) gestureDelegate;
- (void) updateWithTouches: (NSSet *) touches andEvent: (UIEvent *) event;

@end


@interface KonySingleTapRecognizer : GestureRecognizer
{
}
- (void) handleSingleTap:(UIEvent*)event;
@end


typedef enum FocusState {
	INFOCUS = 0,
	OUTOFFOCUS
} FocusStateType;

@interface KonyFocusHandler : GestureRecognizer
{
	UIEdgeInsets focusEdgeInsets;
	FocusStateType focusState;
	
}

- (void) handleSetFocus;
- (void) handleResetFocus:(BOOL) shoudDelay;
@end

