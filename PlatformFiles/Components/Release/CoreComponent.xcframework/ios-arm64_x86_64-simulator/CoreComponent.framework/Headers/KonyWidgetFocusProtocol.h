//
//  KonyWidgetFocusProtocol.h
//  VM
//
//  Created by Shiva on 19/12/12.
//
//

#import <Foundation/Foundation.h>

@protocol KonyWidgetFocusProtocol <NSObject>
@optional
- (UIView*)viewToFocusInWidget;
- (UIView*)cellViewToFocusInWidget;
/*this method should return the  preview context info such as
 *selected row & section indices along with row view frame rect.
 *the applicable widgets can implement this method*/
- (NSDictionary *)getContextInfoForPreviewTouchAtLocation:(CGPoint)location;

@end
