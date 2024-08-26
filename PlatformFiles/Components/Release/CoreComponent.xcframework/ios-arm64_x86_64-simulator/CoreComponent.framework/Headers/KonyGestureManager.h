//
//  KonyGestureManager.h
//  VM_ipad
//
//  Created by Girish Haniyamballi on 29/04/11.
//  Copyright 2011 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyWrapperDS.h"
#import "KonyTapGesture.h"
#import "CallBack.h"

@interface KonyGestureManager : NSObject {
}

+(NSString*)setGesture:(NSInteger) gestureType forWidget:(Widget*) widget withHandler:(CallBack*) onGestureClosure withParams:(NSMutableDictionary*) setupParams andUniqueID:(NSString*) gestureid;
+(void) setGestureForWidget:(Widget*) widgetView WithInfo:(NSArray*)gestureInfo;

+(void) removeGesture:(id) gestureIdentifier forWidget:(id)widget;

@end
