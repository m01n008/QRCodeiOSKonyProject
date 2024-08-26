//
//  FlexLayoutContainer.h
//  VM
//
//  Created by Rajeeva's on 07/06/14.
//
//

#import "BoxWidget.h"
#import "FlexLayoutModel.h"

@interface FlexLayoutContainer : BoxWidget

//Redeclared boxView, widgetModel here to more specific types to avoid unnecessary typecastings in the code!
- (void)executeDoLayoutCallback;
- (BOOL)isAutogrowSupportedForWidgetViewType;
- (NSMutableDictionary *)prepareLayoutOptionsWithAutogrow:(BOOL)autogrow;
/*
   Appviewer-MADPIOS-4578:Implementation of 80% view area for child application inside app viewer.
   As part of this FTR, Flex's will be added to window, when user touches and moves his finger this view will be moved. This variable stores the initial center.
 **/
@property (nonatomic) CGPoint intialCenter;

@end
