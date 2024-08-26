//
//  ObservableObject.h
//  VM
//
//  Created by Uday Bheema on 11/08/12.
//  Copyright (c) 2012 KONY SOLUTIONS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjCPropertyInfo.h"

@interface ObservableObject : NSObject
{
    NSMutableArray *observerList;
}

- (void) registerObserver:(id) observerObj;
- (void) deRegister:(id) observerObj;
- (void) propertyUpdatedWithNewValue:(id)newValue andOldVlue:(id)oldValue withPropertyInfo:(ObjCPropertyInfo*)propInfo;

- (NSArray*) typeNamesToExcludeFromObservation;
- (NSArray*) excludedPropertiesFromObservation;
- (NSArray*) getAllModelProperties;

- (id) getObservableArrayForKey:(NSString*) key;
@end
