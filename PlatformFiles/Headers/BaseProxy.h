
#import <Foundation/Foundation.h>

@class WidgetModel;

@interface BaseProxy : NSObject {

@protected
    WidgetModel *model_;
}

@property (nonatomic, readonly) WidgetModel *model;

@end

