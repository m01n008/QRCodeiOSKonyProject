//
//  LabelWidet.h
//  VM
//
//  Created by KH206 on 08/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Widget.h"
#import "WidgetModel.h"
#import "LabelSkin.h"
#import "KonyWrapperDS.h"
#import "ViewDrawingDelegate.h"
#import "KonyTextInputTypes.h"
#import "KonyHighlightHandler.h"
#import <UIKit/UIKit.h>

@class  LabelWidet;

@protocol LabelCopyable <NSObject>

@required
-(BOOL) isCopyable;

@end

@interface KonyCustomLabel : UILabel  

@property (nonatomic, weak) id delegate;
@property BOOL textMultiGradientColor;

-(void) onMenuControllerHidden:(id)sender;

@end

@interface UKonyLabel : NSObject

@property (nonatomic,retain) KonyCustomLabel *iLabel;

@end


@interface LabelWidet : Widget <ViewDrawingDelegate,PasteBoardProtocol,LabelCopyable,KonyHighlightProtocol>
{

@private
	UKonyLabel *uLabel; 
}


- (NSUInteger)getNumberOfLines;
@property (nonatomic,retain) UILongPressGestureRecognizer *longPressGestureRecognizer;

@end

