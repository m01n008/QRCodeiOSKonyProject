//
//  KonyLongPressGesture.h
//  VM_ipad
//
//  Created by Girish Haniyamballi on 01/06/11.
//  Copyright 2011 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyWrapperDS.h"
#import "CallBack.h"

@interface KonyLongPressGesture : UILongPressGestureRecognizer<UIGestureRecognizerDelegate> {
   
    CallBack* longPressHandler;
    Widget* konyWidget;  //widget on which gesture is added
    NSDictionary* gestureSetupParams;
    NSString *gestureID;

}
@property(nonatomic,retain) NSDictionary* gestureSetupParams;
@property(nonatomic,retain) CallBack* longPressHandler;
@property(nonatomic,retain)  NSString *gestureID;

-(id) initWithWidget:(id) widget withClosure:(CallBack*)handler Params:(NSMutableDictionary*) setupParams ;

-(IBAction)gestureCallBack:(UILongPressGestureRecognizer *)sender ;

-(NSInteger) getKonyGestureType;

@end
