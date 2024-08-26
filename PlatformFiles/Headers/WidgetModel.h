
#import "KonyTypes.h"

@interface WidgetModel : NSObject {
    
    KonyWidgetType			widgetType;
}

@property (nonatomic)			KonyWidgetType		widgetType;

// Widget private state methods
- (void) setNonModelStateValue:(id)value forKey:(NSString *)key;
- (id) getNonModelStateValueForKey:(NSString *)key;

@end

