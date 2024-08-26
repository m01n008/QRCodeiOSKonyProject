//
//  KonyTouchEventsProtocol.h
//  VM
//
//  Created by Girish Haniyamballi on 18/08/14.
//
//

#import <Foundation/Foundation.h>

@protocol KonyTouchEventsProtocol <NSObject>
- (void)onTouchStarted:(CGPoint) touchPoint andForce:(NSNumber *)force;
- (void)onTouchMoved:(CGPoint) touchPoint  andForce:(NSNumber *)force;
- (void)onTouchEnded:(CGPoint) touchPoint  andForce:(NSNumber *)force;
@optional
- (void)onTouchCancelled:(CGPoint)touchePoint andForce:(NSNumber *)force;
#if DEBUGINFO
- (void)onTouch:(CGPoint)touchPoint;
#endif
@end
