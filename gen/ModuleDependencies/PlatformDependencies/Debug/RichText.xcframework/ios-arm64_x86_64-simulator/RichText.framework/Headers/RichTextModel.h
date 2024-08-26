//
//  RichTextModel.h
//  VM
//
//  Created by Sunil Phani Manne on 3/30/12.
//  Copyright (c) 2012 Sunil Phani Manne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>

@class CallBack;

@interface RichTextModel : WidgetModel {
    NSString *text;
	NSNumber *wrapping;
    KonyWidgetContentAlignment contentAlignment;
    CallBack *onClick;
    NSURL *lastActionLink;
    NSString* linkSkin;
}

@property (nonatomic, retain) NSString* text;
@property (nonatomic, retain) NSNumber* wrapping;
@property (nonatomic, assign) KonyWidgetContentAlignment contentAlignment;
@property (nonatomic, retain) CallBack *onClick;
@property (nonatomic, retain) NSURL *lastActionLink;
@property (nonatomic, retain) NSString *linkSkin;
@property (nonatomic) BOOL appendsHTTPForHyperLinks;
#if DEBUGINFO
@property (nonatomic) CGSize contentSizeOfText;
#endif

@end
