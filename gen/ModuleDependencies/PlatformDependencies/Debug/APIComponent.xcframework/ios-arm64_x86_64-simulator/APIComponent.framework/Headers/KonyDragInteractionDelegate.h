//
//  KonyDragInteractionDelegate.h
//  KRelease
//
//  Created by Saianuhya Kodimela on 20/09/17.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/Widget.h>

@interface KonyDragInteractionDelegate : NSObject

- (id)initWithWidget:(Widget *)widget andCallbackDict:(NSDictionary *)callbackDict;
- (void)removeInteractionToWidget:(Widget *)widget;
- (void)setAllowsSimultaneousRecognitionDuringLift:(BOOL)value;
- (void)setEnabled:(BOOL)value;

@end
