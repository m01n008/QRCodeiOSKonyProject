//
//  KonyTouchEvents.h
//  VM
//
//  Created by Girish Haniyamballi on 18/08/14.
//
//

#import <UIKit/UIKit.h>
#import "KonyTouchEventsProtocol.h"

@interface KonyTouchEvents : UITapGestureRecognizer <UIGestureRecognizerDelegate>
{
    id<KonyTouchEventsProtocol> __weak touchDelegate;
}
-(void) setTouchDelegate:(id) obj;
- (id) initWithTouchDelegate:(id) aDelegate;
- (BOOL) isKonyTouchEventsRecognizer;

@end
