//
//  ContainerWidgetData.h
//  VM
//
//  Created by Shiva on 10/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WidgetModel.h"
#import "SkinModel.h"
#import <pthread.h>

typedef enum
{
    FORM_CREATED = 0,
    FORM_ADDWIDGETS_COMPLETED = 1,
    FORM_INIT_COMPLETED = 2
}FORM_LIFECYCLE_STATE;

@interface ContainerModel : WidgetModel {
    NSMutableArray				*childWidgets;
}

@property (nonatomic, readonly)                 NSMutableArray						*childWidgets;
@property (nonatomic) BOOL shouldGroup;
@property (nonatomic, retain) NSMutableArray *masters;
@property     FORM_LIFECYCLE_STATE state;
@property (nonatomic, retain) CallBack *initializeContainer;
@property (nonatomic, retain) CallBack *addWidgets;
//A boolean to guard additional code in synchronizewidgets method for widget creation.
@property (nonatomic) BOOL useRequireWidgetCreation;
@property mach_port_t token;

- (id)clone:(NSString *)str;
- (WidgetModel*) getWidgetWithId : (NSString*) widgetId;
- (void) addWidgets:(NSArray*) parameters;
-(void) addWidget:(WidgetModel*) childWidgetModel at: (NSNumber*) location;
-(WidgetModel*) removeWidgetAt: (NSNumber*) location;
-(void) removeWidget: (WidgetModel*) childWidgetModel;
-(NSMutableArray*) widgets;
-(float) getRightAndLeftMarginSpace;
-(float) getTopAndBottomMarginSpace;
- (void) destroySubWidgets;
- (void)removeAll;
- (void)callInitOnMasters;
- (void)callAddwidgetsOnMasters;
-(void) tryInitializeContainer;
- (void) performAddWidgets;
- (void)performInit;
-(void) callSelector:(SEL)selector parentToChild:(BOOL)recursionAfterClosure sync:(BOOL)sync;

@end
