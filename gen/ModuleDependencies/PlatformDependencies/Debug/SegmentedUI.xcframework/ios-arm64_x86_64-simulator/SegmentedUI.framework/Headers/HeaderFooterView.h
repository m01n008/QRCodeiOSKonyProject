//
//  HeaderFooterView.h
//  VM
//
//  Created by KH206 on 09/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeaderFooterView : UIView

@property (readwrite, weak) NSArray* widgetList;

-(id) initWithFrame: (CGRect) rect withWidgetList:(NSArray*) wdList;

- (CGSize) getPreferredSizeForGivenSize:(CGSize) givenSize;

-(float) caluclateHeightWithWidth:(float) width;

@end
