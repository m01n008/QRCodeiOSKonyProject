//
//  KonyUI.h
//  VM
//
//  Created by Sathya Vennapusala on 18/11/08.
//  Copyright 2008 KonyLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KonyDS.h"
#import "KonyWrapperDS.h"


@protocol KonyUI

- (NSString*) getWidgetID;

- (BOOL)	isContainer;

- (int)		getContainerWeight;	

- (UIView*) getWidgetView;

// do not override this, if ur class has frame property
- (void)	setViewFrame: (CGRect) rect;

- (int)		getWidgetAlignment;
// has to be calucalted considering the dynamic content
// this will be called during or after layout

- (float)	getPreferredWidth;

// has to be calucalted considering the dynamic content
- (float)	getPreferredHeight;

- (BOOL)	getHExpand;

- (BOOL)	getVExpand;

- (void)	setVisibility:(BOOL) isVisible;

- (void)	setFontColor: (UIColor*) color;

- (void)	setFocus;

- (BOOL)	isVisible;


- (id)	    clone;


-(float) getLeftMargin;


-(float) getRightMargin;


-(float) getTopMargin;


-(float) getBottomMargin;


-(float) getLeftPadding;


-(float) getRightPadding;


-(float) getTopPadding;


-(float) getBottomPadding;

-(void) initMarginsAndPaddings;

- (NSDictionary *)getRuntimeState;

- (void)setRuntimeState:(NSDictionary *)stateHash ;

-(BOOL) isScreenLevelWidget;

- (void)resetIsLayoutDoneOnlyForWidget;

@end

@protocol KonyNetworkCallListener

-(void)networkCallStartingCallbackWithCtx:(id)ctx;

-(void)networkCallEndedCallbackWithCtx:(id)ctx;

@end

@protocol KonyClickListener

-(void) preClick: (id) ctx;
-(void) postClick: (id) ctx;

@end

@protocol KonyClickSender

- (void) registerForClicks: (id) listener withCtx: (id) context;
- (void) unRegisterForClicks: (id) listener withCtx: (id) context;

@end




