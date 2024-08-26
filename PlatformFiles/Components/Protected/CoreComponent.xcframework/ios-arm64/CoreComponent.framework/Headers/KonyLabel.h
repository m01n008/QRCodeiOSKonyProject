//
//  KonyLabel.h
//  VM
//
//  Created by KH078 on 06/03/14.
//
//

/* 
    Important Note:
    ~~~~~~~~~~~~~~
    Ripped off this code from the Label Widget. I had no other way to achieve this in NeXt.
    The widget's view code CANNOT be reused. Same is the case with any widget not just the Label Widget.
 */

#import <UIKit/UIKit.h>

//Forward Classes
@class LabelSkin;
@class LabelModel;

//Forward Protocols
@protocol ViewDrawingDelegate;

@interface KonyLabel : UILabel


@property (nonatomic, weak) id delegate;
@property (nonatomic, assign) BOOL textMultiGradientColor;
@property (nonatomic, retain) LabelModel *widgetModel;
@property (nonatomic, retain) NSString *skinID;

-(id)initWithFrame:(CGRect)frame text:(NSString *)text andSkinID:(NSString *)skinID;

@end
