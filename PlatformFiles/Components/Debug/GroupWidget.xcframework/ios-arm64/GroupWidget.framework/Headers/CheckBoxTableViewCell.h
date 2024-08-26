//
//  CheckBoxTableViewCell.h
//  VM
//
//  Created by KH206 on 07/08/14.
//
//

#import <UIKit/UIKit.h>
#import <CoreComponent/ViewDrawingDelegate.h>
#import <CoreComponent/Skin.h>

@interface CheckBoxTableViewCell : UITableViewCell
{
	BOOL isInGroupMode;
	CGRect labelFrame;
    NSString *checkMarkStyle;
    id model;
}

@property (readwrite, assign, nonatomic) BOOL isInGroupMode;
@property (nonatomic, assign) CGRect labelFrame;
@property (nonatomic, weak) id<ViewDrawingDelegate> drawingDelegate;
@property (readonly, retain, nonatomic) NSString *checkMarkStyle;
@property (nonatomic, assign) id model;

-(void) applySkin: (Skin*) aSkin;
@end


