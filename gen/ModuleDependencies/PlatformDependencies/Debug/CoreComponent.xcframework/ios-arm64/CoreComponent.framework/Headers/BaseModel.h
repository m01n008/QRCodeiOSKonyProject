//
//  BaseModel.h
//  VM
//
//  Created by KH206 on 20/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObservingProxy.h"
#import "ObservableObject.h"

@class Widget;
@interface BaseModel : ObservableObject //NSObject //ObservableObject
{
    ObservingProxy *observingProxy;
    void *observersInfo;
}

- (void) registerForModelUpdates : (id) observer;

- (void) registerObserver: (id) observer forProperties: (NSArray*) properties;
- (void) removeObserver: (id) observer;
- (void) removeObserver: (id) observer forProperties: (NSArray*) props;
- (id)    getAssociatedWidget;
-(BOOL) isWidgetBelongsToModel:(Widget*) aWidget;
-(id)    getActiveAssociatedWidget;
- (NSMutableArray*) getAssociatedWidgets;
-(NSMutableDictionary*) getClassPropertyList;
-(void)removeObservers;
#if DEBUG_ENABLE_OBJECT_PROFILING
+ (long int) getObjectCount;
#endif
@end
