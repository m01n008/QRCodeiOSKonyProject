//
//  KonyApplication.h
//  VM
//
//  Created by Shiva on 28/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyCollection.h"

#define APP_PROP_HEADERS						@"headers"
#define APP_PROP_FOOTERS						@"footers"

@interface WidgetList : NSObject <KonyCollection>
{
	NSMutableDictionary *widgetList;
}

@property (nonatomic, readonly) NSMutableDictionary* widgetList;

@end


@interface KonyApplicationGlobalHeaderFooters : NSObject <KonyCollection> {
	
	WidgetList *headerList;
	WidgetList *footerList;

}

@property (nonatomic, readonly) WidgetList* headerList;
@property (nonatomic, readonly) WidgetList* footerList;

@end
