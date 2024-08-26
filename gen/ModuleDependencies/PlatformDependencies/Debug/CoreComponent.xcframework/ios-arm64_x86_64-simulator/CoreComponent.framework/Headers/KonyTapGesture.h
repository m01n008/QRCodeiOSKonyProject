//
//  KonyTapGesture.h
//  VM_ipad
//
//  Created by Girish Haniyamballi on 30/05/11.
//  Copyright 2011 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyWrapperDS.h"
#import "CallBack.h"
@interface KonyTapGesture : UITapGestureRecognizer<UIGestureRecognizerDelegate> {
    
        CallBack* tapHandler;
        Widget* konyWidget;  //widget on which gesture is added
        NSDictionary* gestureSetupParams;
        NSString *gestureID;
}

@property(nonatomic,retain) CallBack* tapHandler;
@property(nonatomic,retain) NSDictionary* gestureSetupParams;
@property(nonatomic,retain)  NSString *gestureID;
-(id) initWithWidget:(id) widget withClosure:(CallBack*)handler Params:(NSDictionary*) setupParams;

-(IBAction)gestureCallBack:(UITapGestureRecognizer *)sender ;

-(NSInteger) getKonyGestureType;

@end
