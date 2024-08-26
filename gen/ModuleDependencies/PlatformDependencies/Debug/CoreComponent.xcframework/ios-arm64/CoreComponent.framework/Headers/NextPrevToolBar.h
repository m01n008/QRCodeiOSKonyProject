//
//  NextPrevToolBar.h
//  VM
//
//  Created by Sathya Vennapusala on 12/06/09.
//  Copyright 2009 KonyLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "KonyInputAccessoryView.h"

#define NEXTPREVTOOLBAR_PREV_KEY			@"platform.nextprevtoolbar.previous"
#define NEXTPREVTOOLBAR_NEXT_KEY			@"platform.nextprevtoolbar.next"
#define NEXTPREVTOOLBAR_DONE_KEY			@"platform.nextprevtoolbar.done"


#define NEXTPREVTOOLBAR_PREV_DEFAULT_VALUE	@"Previous"
#define NEXTPREVTOOLBAR_NEXT_DEFAULT_VALUE	@"Next"
#define NEXTPREVTOOLBAR_DONE_DEFAULT_VALUE	@"Done"

@interface NextPrevToolBar: NSObject<KonyInputAccessoryViewProtocol>
{
    KonyInputAccessoryViewTypes type;
}

@property (readwrite) UIToolbar* toolBar;
@property (readwrite, assign) Widget<WheelWidgetProtocol> *activeWidget;
@property (readwrite) UISegmentedControl* prevNextSegControl;
@property (nonatomic) NSMutableDictionary* widgetContent;

- (id) initToolBar;
-(UIView*) getWidgetView;
-(CGFloat) getNextPrevToolBarHeight;
+(NextPrevToolBar*) getSharedNextPrevToolBar;
-(void) reloadView;

-(void) onSelection: (id) sender;
- (id) initToolBar;
-(void) setToolBar;
//- (void) managePreviousNextButtons: (id) currentWidget inRootContainer:(UIScrollView*) rootView;
- (void) initWidgetContent;

-(void) setDoneButtonText:(NSString*) aText;
-(void) hideDoneButton;

@end
