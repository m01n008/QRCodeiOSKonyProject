//
//  CalendarProxy.h
//  VM
//
//  Created by KH165 on 14/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/BaseProxy.h>

@interface CalendarProxy : BaseProxy {
    
}

- (void)clear;
- (void)clearData;

-(void) setEnabled:(NSArray*) dates skin :(id) skin enable:(id) enable;
- (void) enableRangeOfDatesWithStartDate:(id) startDate EndDate:(id) endDate WithSkin:(id)skin Enable:(id) enable;
- (void) setEnableAll;
- (void) setDatesSkinForDates:(id)dates WithSkin:(id) skin;
-(void) navigateToPreviousMonth;
-(void) navigateToNextMonth;

-(void) setData:(NSDictionary*)data;
- (void) addAll :(NSDictionary*)data;
- (void) removeDataAt: (NSString*) date;
- (void) removeAll;
- (void) setData: (NSArray*)data forDate: (NSString*) date;
-(void) executeCancelCallback;

@end
