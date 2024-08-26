//
//  KonyPanGesture.h
//  VM
//
//  Created by Girish Haniyamballi on 22/05/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyWrapperDS.h"
#import "CallBack.h"

@interface KonyPanGesture : UIPanGestureRecognizer<UIGestureRecognizerDelegate> {
    
    
    CallBack* panHandler;
    Widget* konyWidget;  //widget on which gesture is added
    NSDictionary* gestureSetupParams;
    NSString *gestureID;
    BOOL continuousEventsEnabled;
    BOOL enableEdgeDetection;
}
@property(nonatomic,retain) CallBack* panHandler;
@property(nonatomic,retain) NSDictionary* gestureSetupParams;
@property(nonatomic,retain)  NSString *gestureID;
-(id) initWithWidget:(id) widget withClosure:(CallBack*)handler Params:(NSDictionary*) setupParams;

-(IBAction)gestureCallBack:(UITapGestureRecognizer *)sender ;

-(NSInteger) getKonyGestureType;

@end
