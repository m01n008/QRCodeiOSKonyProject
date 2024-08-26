//
//  NativeContainerModel.h
//  VM
//
//  Created by Snigdha on 4/8/2015.
//
//

#import "WidgetModel.h"

@interface NativeContainerModel:WidgetModel {
    CallBack        *onLayoutSubviews;
    CallBack        *onViewWillAppear;
    CallBack        *onViewDidAppear;
    CallBack        *onViewWillDisappear;
    CallBack        *onViewDidDisappear;
    CallBack        *onCreated;
    CallBack        *onCleanup;
    CallBack        *onWillMoveToParentViewController;
    CallBack        *onDidMoveToParentViewController;
    CallBack        *onViewWillUnload;
    CallBack        *onViewDidUnload;
    CallBack        *onViewDidLoad;
    CallBack        *onOrientationChange;
    NSDictionary    *nativeContainerJSProperties;
    NSString        *type;

}

@property (nonatomic, retain) CallBack *onLayoutSubviews;
@property (nonatomic, retain) CallBack *onViewWillAppear;
@property (nonatomic, retain) CallBack *onViewDidAppear;
@property (nonatomic, retain) CallBack *onViewWillDisappear;
@property (nonatomic, retain) CallBack *onViewDidDisappear;
@property (nonatomic, retain) CallBack *onCreated;
@property (nonatomic, retain) CallBack *onCleanup;
@property (nonatomic, retain) CallBack *onWillMoveToParentViewController;
@property (nonatomic, retain) CallBack *onDidMoveToParentViewController;
@property (nonatomic, retain) CallBack *onViewWillUnload;
@property (nonatomic, retain) CallBack *onViewDidUnload;
@property (nonatomic, retain) CallBack *onViewDidLoad;
@property (nonatomic, retain) CallBack *onOrientationChange;

@property (nonatomic, retain) NSDictionary   *nativeContainerJSProperties;
@property (nonatomic, retain) NSString* type;


@end
