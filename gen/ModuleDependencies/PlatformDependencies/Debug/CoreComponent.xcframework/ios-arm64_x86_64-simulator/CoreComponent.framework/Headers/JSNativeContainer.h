//
//  JSNativeContainer.h
//  VM
//
//  Created by Snigdha on 4/8/2015.
//
//

#import "JSWidget.h"

@interface JSNativeContainer : JSWidget{

}

- (UIView*) getContainerView;
-(void) setValue:(id)jsvalue forJSProperty:(NSString *)jsproperty;
- (id) valueForJSProperty:(NSString *)jsproperty;


@end
