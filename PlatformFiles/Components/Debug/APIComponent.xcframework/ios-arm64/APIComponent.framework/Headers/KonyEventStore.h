//
//  KonyEventStore.h
//  VM
//
//  Created by Sunil Phani Manne on 05/10/10.
//  Copyright 2010 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/KonyTypes.h>

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 40000 

#import <EventKit/EventKit.h>

#endif

@interface KonyCalendarEvent : NSObject
{
	NSString* summary;
	NSString* startDate;
	NSString* endDate;
	NSNumber* alarm;
	NSString* notes;
	NSString* access;
    CalendarEventRepeatType repeat;
    NSString* endRecurrenceDate;
    NSUInteger interval;
}

@property (nonatomic, retain) NSString* summary;
@property (nonatomic, retain) NSString* startDate;
@property (nonatomic, retain) NSString* endDate;
@property (nonatomic, retain) NSNumber* alarm;
@property (nonatomic, retain) NSString* notes;
@property (nonatomic, retain) NSString* access;
@property (nonatomic, assign) CalendarEventRepeatType repeat;
@property (nonatomic, retain) NSString* endRecurrenceDate;
@property (nonatomic) NSUInteger interval;

@end


@interface KonyEventStore : NSObject {
	
}

+ (NSString*) addEvent: (KonyCalendarEvent*) calEvent;
+ (BOOL) removeEvent: (NSString*) eventID withRemoveOption: (CalendarEventRemove)removeOption;
+ (NSDate*) getDateFromString: (NSString*) dateString withFormat: (NSString*) format;
+(NSString*) getStringFromNSDate:(NSDate*)dateNS;
+(NSNumber*)getAlarmValueFromEKEvent:(EKEvent*)EKEVTObj;
+ (NSArray*) findEventsInEventStoreWithStartDate: (NSString*) startDateStr andEndDate: (NSString*) endDateStr type: (NSString*)type;
@end
