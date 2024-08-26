//
//  KonyPinchGesture.h
//  VM
//
//  Created by Girish Haniyamballi on 21/05/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "KonyWrapperDS.h"
#import "CallBack.h"


@interface KonyPinchGesture : UIPinchGestureRecognizer<UIGestureRecognizerDelegate> {
    

    CallBack* pinchHandler;
    Widget* konyWidget;  //widget on which gesture is added
    NSDictionary* gestureSetupParams;
    NSString *gestureID;
    BOOL continuousEventsEnabled;    
}

@property(nonatomic,retain) CallBack* pinchHandler;
@property(nonatomic,retain) NSDictionary* gestureSetupParams;
@property(nonatomic,retain)  NSString *gestureID;
-(id) initWithWidget:(id) widget withClosure:(CallBack*)handler Params:(NSDictionary*) setupParams;

-(IBAction)gestureCallBack:(UIPinchGestureRecognizer *)sender ;

-(NSInteger) getKonyGestureType;

@end
