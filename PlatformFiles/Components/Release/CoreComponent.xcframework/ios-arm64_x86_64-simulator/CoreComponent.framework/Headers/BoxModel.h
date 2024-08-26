//
//  KonyBoxData.h
//  VM
//
//  Created by Shiva on 15/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContainerModel.h"

@interface BoxModel : ContainerModel {
	
	int							spacing;
	NSString                    *focusSkinID;
	NSString					*percent;
	BOOL                        requiredParallelExecution;
	NSString					*header;
	NSString					*footer;
    NSString                    *bgImage;
    NSNumber                    *position;
    BOOL                        fixedHeightRow;
    BOOL                        isMaster;
    KonyWidgetSkinExtracionMode skinExtractionMode;
    id                          preshow;
    id                          postshow;
    id                          onhide;
}

@property (readwrite)			int							spacing;
@property (readwrite, retain)	NSString                    *focusSkinID;
@property (readwrite, retain)	NSString                    *percent;
@property (readwrite)           BOOL                        requiredParallelExecution;
@property (readwrite, retain)	NSString                    *header;
@property (readwrite, retain)	NSString                    *footer;
@property (readwrite, retain)	NSString                    *bgImage;
@property (readwrite, retain)	CallBack                  *onClick;
@property (readwrite, retain)	NSNumber                    *position;
@property (readwrite)           BOOL                        fixedHeightRow ;
@property (readwrite)           BOOL                        isMaster ;
@property (nonatomic)           KonyWidgetSkinExtracionMode skinExtractionMode;
@property (nonatomic)           BOOL                        isASegTemplate;
@property (nonatomic)           BOOL                        isAMapTemplate;
@property (nonatomic)           BOOL                        isACalendaerCellTemplate;
@property (nonatomic, retain)   NSString                    *highlightedSkinID;
@property (nonatomic, retain)  id                           preshow;
@property (nonatomic, retain)  id                           postshow;
@property (nonatomic, retain)  id                           onhide;

@end

