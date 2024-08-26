//
//  JSObject.h
//  VM
//
//  Created by Amba on 14/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import "RuntimeObject.h"
#import "KonyTypes.h"

#define JSOBJECT_SELECTOR @"initWithValue:"

@protocol SupportedWidgetType <NSObject>
@required
+ (KonyWidgetType)supportedWidgetType;
@end

@protocol SetUPJSWrapper <NSObject>
@required
+ (void)setUpJSWrapper;
@end



@interface JSObject : RuntimeObject {
    id value;
}

@property (nonatomic, retain) id value;

-(NSString *) jsTypeName;

-(id) initWithValue:(id) value_;
-(NSString *) toString;

@end
