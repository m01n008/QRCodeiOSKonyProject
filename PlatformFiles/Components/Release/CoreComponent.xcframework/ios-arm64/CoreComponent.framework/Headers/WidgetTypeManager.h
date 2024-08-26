//
//  WidgetTypeManager.h
//  VM
//
//  Created by Amba on 25/01/13.
//
//

#import <Foundation/Foundation.h>
#import "KonyManager.h"
#import "KonyTypes.h"

@interface WidgetTypeManager : KonyManager {
@private
    NSMutableDictionary *widgetTypeStringMap;
}

- (void) setString:(NSString*)widgetTypeString forWidgetType: (KonyWidgetType) widgetType;
- (NSString*) stringForWidgetType: (KonyWidgetType) widgetType;

@end
