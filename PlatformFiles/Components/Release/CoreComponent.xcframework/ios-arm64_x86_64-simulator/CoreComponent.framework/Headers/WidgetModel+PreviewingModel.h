//
//  WidgetModel+PreviewingModel.h
//  VM
//
//  Created by Mahesh/KH1128 on 31/12/15.
//
//

#import "WidgetModel.h"

/*
 * a category to store model context for peek and pop for a widget
 */
@interface WidgetModel (PreviewingModel)

//js callbacks to fetch peek & pop info
@property (nonatomic, retain) CallBack *onPeek;
@property (nonatomic, retain) CallBack *onPop;

- (void)registerForPeekAndPop;
- (void)unregisterForPeekAndPop;
- (CallBack *)onPeek;
- (void)setOnPeek:(CallBack *)onPeek;
- (CallBack *)onPop;
- (void)setOnPop:(CallBack *)onPop;

@end
