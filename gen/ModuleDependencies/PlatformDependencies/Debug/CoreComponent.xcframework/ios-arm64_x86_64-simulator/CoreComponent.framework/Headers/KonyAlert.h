//
//  KonyAlert.h
//  VM
//
//  Created by Aravind Perumal on 11/21/08.
//  Copyright 2008 Konylabs. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "AlertModel.h"
#import "KonyTypes.h"
#import "KonyUtil.h"
@class KonyAlert;
@interface AlertExecuter : NSObject
{
@public
	AlertModel* alertDetails;
    KonyAlert* alert;
}

@property (nonatomic, readonly) KonyAlert* alert;
@property (nonatomic) AlertModel* alertDetails;

-(id) initWithAlertDetails: (AlertModel*) aAlertModel;
-(void) execute;

@end

@interface KonyAlert: UIViewController 
{	
	
@public	
	KonyWidgetType widgetType;

@protected	
	AlertModel*		properties;
	CGRect		rectFrame;
	BOOL		isFrameSet;
@private	
	volatile BOOL	isDismissed;
    UIAlertController *alertController;
	//ALERTTYPE		alertType;
	NSCondition * condition;
}


@property (nonatomic, readwrite) CGRect rectFrame;
@property (nonatomic, readwrite, assign) KonyWidgetType widgetType;
@property (readwrite, assign) BOOL isFrameSet;
@property (readwrite, assign) volatile BOOL isDismissed;
@property (nonatomic, retain) UIAlertController *alertController;
@property (readwrite, strong) NSCondition * condition;

- (id)		initWithAttribute : (AlertModel*) attrib  type:(KonyWidgetType) widgetType;
- (void)	decorateAlertMessage;
- (void)	confirmationAlert;
- (void)	informationAction : (KonyAlertType) alertType;

@end

