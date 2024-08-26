//
//  AlertModel.h
//  VM
//
//  Created by KH206 on 18/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CallBack.h"
#import "KonyTypes.h"

@interface AlertModel : NSObject
{
    NSString*		message;     
	CallBack*		alertHandler;
	KonyAlertType	alertType;   
	NSString*		yesLabel;    
	NSString*		noLabel; 
    NSString*		title;
	NSString*		alertIcon;
}

@property (nonatomic, retain) NSString* message;
@property (nonatomic, retain) NSString* yesLabel;
@property (nonatomic, retain) NSString* noLabel;
@property (nonatomic, retain) NSString* title;
@property (nonatomic, retain) CallBack* alertHandler;
@property (nonatomic)         KonyAlertType alertType;
@property (nonatomic, retain) NSString* alertIcon;

+(id) createAlertWidget: (NSDictionary*) config;

@end
