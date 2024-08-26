//
//  KonySwipeGesture.h
//  VM_ipad
//
//  Created by Girish Haniyamballi on 01/06/11.
//  Copyright 2011 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyWrapperDS.h"
#import "CallBack.h"

@interface KonySwipeGesture : UISwipeGestureRecognizer <UIGestureRecognizerDelegate>{
  
    CallBack* swipeHandler;
    Widget* konyWidget;  //widget on which gesture is added
    NSMutableDictionary* gestureSetupParams;
    NSString *gestureID;
    BOOL shouldRecognizeSimultaneously;
}
@property(nonatomic,retain) NSMutableDictionary* gestureSetupParams;
@property(nonatomic,retain) CallBack* swipeHandler;
@property(nonatomic,retain)  NSString *gestureID;

-(id) initWithWidget:(id) widget withClosure:(CallBack*)handler Params:(NSMutableDictionary*) setupParams;

-(IBAction)gestureCallBack:(UISwipeGestureRecognizer *)sender ;

-(NSInteger) getKonyGestureType;

@end
