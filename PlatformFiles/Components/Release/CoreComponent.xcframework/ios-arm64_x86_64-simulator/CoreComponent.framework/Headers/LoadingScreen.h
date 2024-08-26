//
//  LoadingScreen.h
//  VM
//
//  Created by Shiva on 01/03/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GenericSkin.h"

#define DEFAULT_SEPERATOR_HEIGHT 30
#define DEFAULT_PADDING 10
#define DEFAULT_TRANSPERANCY 0.2
#define WIDGET_DISABLE_INDICATOR_TAG 102120
#define WIDGET_DISABLE_INDICATOR_DEFAULTMARGIN 10



@interface WidgetDisableIndicator : UIView {
	
	UILabel *label;
	UIActivityIndicatorView *actvityView;
	BOOL fullScreenMode;
	GenericSkin *skin;

	UIColor *viewBGColor;
    float separatorHeight;
    BOOL shouldShowLabelInBottom;
    NSDictionary* info;
	
}

@property (nonatomic, assign) float separatorHeight;
@property (nonatomic, assign) BOOL shouldShowLabelInBottom;
@property (nonatomic, retain) NSDictionary* info;


- (void) applySkin : (GenericSkin*) skin;

- (id) initWithInfo:(NSDictionary *) anInfo;
- (CGSize) getPreferredSizeForWidth : (CGFloat) width;
- (void) adjustViewsForContentSize :  (CGSize) prefSize;
- (void) initialize: (NSDictionary*) anInfo;
- (void) reAdjustForCurrentScreenDimensions;
- (void) clean;

@end



@interface LoadingScreen : UIView
{
    id attributes;
}

@property (nonatomic, readwrite, retain) id attributes;

- (void) showWithAttrs : (NSDictionary*) attr;

- (void) show;

- (void) dismiss;

- (void) dismissLoadingScreenView;

@end
