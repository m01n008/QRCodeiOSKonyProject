//
//  KonyPhoneService.h
//  VM
//
//  Created by Aravind Perumal on 12/29/08.
//  Copyright 2008 Konylabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreComponent/KonyWrapperDS.h>
#import "AddressBook/AddressBook.h"
#import <MessageUI/MFMailComposeViewController.h>

@class CallBack;

@interface KonyTelephony : NSObject 
{
	NSString*	strNumber;
	NSURL*		urlNumber;
	NSString*	smsBody;
	
	NSMutableDictionary* widgetContent;
	
}

@property(nonatomic, retain)  NSString*	strNumber;
@property(nonatomic, retain)  NSURL*	urlNumber;
@property(nonatomic, copy)  NSString*	smsBody;

-(id) initWithNumber:(NSString*) number;
-(id) initWithNumber:(NSString*) number withText:(NSString*) text;
-(void) dialNow;
-(BOOL) sendSMS;
- (void) initWidgetContent;
@end

@interface MailComposer : MFMailComposeViewController {
	
}
@end


@interface KonyMail : NSObject<MFMailComposeViewControllerDelegate>

{
	BOOL wasMailOpened;
	
	NSArray * to;
	NSArray* cc;
	NSArray* bcc;
	NSString* sub;
	NSString* body;
	BOOL isBodyHTML;
	NSArray* attchmnts;
}
@property (readwrite,assign) NSConditionLock * lock;
@property (nonatomic,assign) BOOL wasMailOpened;
@property (nonatomic) NSString* errMsg;
@property (nonatomic) NSNumber* errCode;

@property (nonatomic,retain) NSArray* to;
@property (nonatomic,retain) NSArray* cc;
@property (nonatomic,retain) NSArray* bcc;
@property (nonatomic,retain) NSString* sub;
@property (nonatomic,retain) NSString* body;
@property (nonatomic,assign) BOOL isBodyHTML;
@property (nonatomic,retain) NSArray* attchmnts;


-(void) composeMail;
-(void) releaseLock;
-(BOOL) validateEmail:(NSArray*) emailList;
-(void) setErrorCode:(uint16) eCode errorMsg:(NSString *) eMessage;
-(void) setDataError : (NSString *) eMsg;

@end

/*
@interface GeoLocationManger : NSObject
{
	KonyLocationFinder      *currentObj;
}

@property (nonatomic, assign) KonyLocationFinder *currentObj;

+ (GeoLocationManger*) sharedInstance;
-(void) addObject:(id) anObject;
-(void) removeCurrentObject;

@end
 */

