//
//  UserProxy.h
//  VM
//
//  Created by Dhananjay on 14/12/16.
//
//

#import "BaseProxy.h"

@interface UserProxy : BaseProxy
/*
 This property stores arguments in the order of namespace,widgetId and JSArguments which will be used in the changeView API. Hence storing
 */
@property (nonatomic,strong) NSMutableArray *arguments;
/*
 This property stores the views which returned from _kony.mvc.changeView API, which internally loads the viewId.js file and returns the view
 */
@property (nonatomic,strong) NSMutableDictionary *viewCache;

/*
 This property stores the current viewId of a component
 */
@property (nonatomic,strong) NSString *currentViewId;

- (void)changeUserWidgetReferenceView:(NSString *) viewId;
@end
