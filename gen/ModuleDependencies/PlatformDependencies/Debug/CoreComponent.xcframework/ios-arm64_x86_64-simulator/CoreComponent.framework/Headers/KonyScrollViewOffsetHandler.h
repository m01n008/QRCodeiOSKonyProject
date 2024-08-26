//
//  KonyScrollViewOffsetHandler.h
//  VM
//
//  Created by Krishna Kiran Kasturi on 25/01/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Widget.h"
#import "ContainerWidget.h"

/**
 *  Any widget that is a Container (contains other widgets) and capable of scrolling.
 *  Note: All screen level widgets are KonyScrollContainers (Capable of scrolling).
 */
@protocol KonyScrollContainer <NSObject>

@required

/** returns view which handles scroll for a given widget, nil if there is none */
-(UIView*) scrollView;

/** amount by which view has to scroll */
-(void) setContentOffset:(CGPoint) aPoint animated:(BOOL)animated;

/** returns origin of bounds for the view (contentOffset)   */
-(CGPoint) contentOffset;

/** returns ConentSize for UIScrollViews and frame size other wise. */
-(CGSize) contentSize;


/** Returns whether the scrollContainer can scroll horizontally or not */
- (BOOL) canScrollHorizontally;

/** Returns whether the scrollContainer can scroll vertically or not */
- (BOOL) canScrollVertically;

-(void) setDefaultContentBottomInset: (CGFloat) bottom;

@end

/**
 *	@Brief	This class hanldes offset calculations throuhout the application for various scroll views.
 *
 *	@Note This is implemented as singleton (created at app init and destroyed at app exit). This is responsible for 
 *	providing offset related API for all (Kony)ScrollViews, i.e., Form,KonyPopup. This has collaboration with KonyForms and KonyPopup (scroll views)
 *	
 */
@interface KonyScrollViewOffsetHandler : NSObject {
	
}

+(id) getSharedOffsetHandler;
-(CGPoint) validateOffset:(CGPoint)offset forRootContainer:(ContainerWidget<KonyScrollContainer>*) aRootContainer
               rootWidget:(ContainerWidget<KonyScrollContainer>*)aRootWidget;
-(void) bringWidgetToViewport:(id) aWidget inScrollContainers:(NSArray *)aScrollContainers
            withRootContainer:(Widget<KonyScrollContainer>*) aRootContainer options:(NSDictionary*) aOptions effectiveOffsets:(NSMutableArray*) offsetChanges;

@end
