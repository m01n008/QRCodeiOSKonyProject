//
//  PhoneServiceHelpers.h
//  APIComponent
//
//  Created by Aravind Macharla on 12/04/18.
//  Copyright © 2018 Kony Labs. All rights reserved.
//

#ifndef PhoneServiceHelpers_h
#define PhoneServiceHelpers_h


#endif /* PhoneServiceHelpers_h */

#define phoneError  @"PhoneError"

#define PHONEWIDGET_ALERT_TITLE_KEY @"platform.phonewidget.alert.title"
#define PHONEWIDGET_ALERT_MSG_KEY @"platform.phonewidget.alert.msg"
#define PHONEWIDGET_ALERT_CANCEL_KEY @"platform.phonewidget.alert.cancel"
#define PHONEWIDGET_ALERT_OK_KEY @"platform.phonewidget.alert.ok"

#define PHONEWIDGET_ALERT_TITLE_DEFAULT_VALUE @"Confirmation"
#define PHONEWIDGET_ALERT_MSG_DEFAULT_VALUE [strNumber stringByReplacingOccurrencesOfString: @"tel:" withString: @""]
#define PHONEWIDGET_ALERT_CANCEL_DEFAULT_VALUE @"Cancel"
#define PHONEWIDGET_ALERT_OK_DEFAULT_VALUE @"Call"

BOOL    konySendSMS(NSString *number, NSString* text);
void    konyDial(NSString* number);
KonyOpenMailOutParam* konyOpenMail( NSArray *to, NSArray *cc, NSArray * bcc, NSString *subject, NSString * body, BOOL isBodyHtml, NSArray * attachments );
//BUG FIX 79365:Changing id widgetInvoker to NSMutableDictionary PSP
KonyMediaGalleryOutParam* konyOpenMediaGallery(CallBack *onMediaSelect, NSDictionary *queryContext ,NSMutableDictionary* PSP);
void konyOpenMediaGalleryForiOS7Above(CallBack *onMediaSelect, NSDictionary *queryContext, id widgetInvoker);
