//
//  JSWidget.h
//  VM
//
//  Created by KH206 on 01/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "JSObject.h"

@interface JSWidget : JSObject
+(KonyWidgetType) supportedWidgetType;
-(id) proxyObject;
-(void) print:(NSArray*) arguments;
- (void) setEnabled:(NSArray*) enbld;
-(NSString*) toString;

+(void) registerJSWrapperClass:(Class)wrapperClass forWidgetType:(KonyWidgetType)aWidgetType withWidgetTypeString:(NSString *)widgetTypeString;

// Return the registered JSWrapper object for aWidgetType
+(id) jsObjectForWidgetType: (KonyWidgetType)aWidgetType withProxy: (id) proxyObject;

@end
