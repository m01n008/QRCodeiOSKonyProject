//
//  CWIWidget.h
//  VM
//
//  Created by Amba Babjee Dhanisetti on 19/08/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CWIWidget <NSObject>

@required

- (id) initWithEventDelegate: (id) eventDelegate withKonyEnvironment:(id) env;

// View releated methods
- (UIView*) getWidgetView;

- (CGSize) getPreferredSizeForGivenSize: (CGSize) givenSize;
- (void) setWidgetViewFrame: (CGRect) frame;


@optional

// Model updates
- (void) modelUpdatedForProperty:(NSString*) propertyName  withOldValue:(id) oValue newValue:(id) nValue;

// Layout related methods
- (void) willBeginLayout;
- (void) didEndLayout;

// Widget lifecycle events
- (void) didCreateWidget;
- (void) willDestroyWidget;

@end


// KonyEnvironment
/***
1. Forcing the Layout
    -(void) forceLayout;
 
2. Model exposing - Key Value compliant (valueForKey:,setValue:forKey:) - to access properties in model
    KonyEnvironmentInstace.model - access the mapped properties
 
3. model class : save/get private data methods
    - (void) setNonModelStateValue:(id)value forKey:(NSString *)key;
    - (id) getNonModelStateValueForKey:(NSString *)key;

***/
