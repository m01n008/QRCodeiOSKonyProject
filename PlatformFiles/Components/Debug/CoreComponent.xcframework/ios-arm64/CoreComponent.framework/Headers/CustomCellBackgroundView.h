//
//  CustomCellBackgroundView.h
//  VM
//
//  Created by Sunil Phani Manne on 18/05/10.
//  Copyright 2010 Kony Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Skin.h"

#define ROUND_SIZE 6.0
#define SEPARATOR_THICKNESS 1.0

typedef enum
{
    CustomCellBackgroundViewPositionTop, 
    CustomCellBackgroundViewPositionMiddle, 
    CustomCellBackgroundViewPositionBottom,
    CustomCellBackgroundViewPositionSingle
} CustomCellBackgroundViewPosition;

@interface CustomCellBackgroundView : UIView {
    UIColor * borderColor;
	UIColor *separatorColor;
    UIColor *fillColor;
	float borderWidth;
    float seperatorThickness;
	BOOL isGrouped;
	BOOL isGradient;
    BOOL isMSGradient;
    BOOL isMSGBorder;
    NSArray *clrs;
    NSArray *locs;
    CGFloat gradAngle;
    NSArray *clrsBorder;
    NSArray *locsBorder;
    CGFloat gradAngleBorder;
	BOOL isSplit;
	BOOL isImage;
	UIColor* topFillColor;
	UIColor* bottomFillColor;
	NSString* bgImage;
   CustomCellBackgroundViewPosition position;
    BOOL adjustDrawingWithinBoundsOfCellNormalBackgroundView;
    CGFloat cornerRadius;
}

@property(nonatomic, retain) UIColor *fillColor, *separatorColor;
@property(nonatomic, assign) CustomCellBackgroundViewPosition position;
@property(nonatomic, assign) float borderWidth;
@property(nonatomic, assign)CGFloat gradAngle;
@property(nonatomic, assign)CGFloat gradAngleBorder;
@property(nonatomic, assign) float seperatorThickness;
@property(nonatomic, assign) BOOL isGrouped;
@property(nonatomic, retain) UIColor* topFillColor, *bottomFillColor;
@property(nonatomic, assign) BOOL isGradient;
@property(nonatomic, assign) BOOL isMSGradient;
@property(nonatomic, assign) BOOL isMSGBorder;
@property(nonatomic, assign) BOOL isSplit;
@property(nonatomic, assign) BOOL isImage;
@property(nonatomic, retain) NSString* bgImage;
@property(nonatomic, retain) NSArray *clrs;
@property(nonatomic, retain) NSArray *locs;
@property(nonatomic, retain) NSArray *clrsBorder;
@property(nonatomic, retain) NSArray *locsBorder;
@property(nonatomic, retain) UIColor *borderColor;
@property(nonatomic, assign) CGFloat cornerRadius; // @saurabh FW3479 : Created new property which will hold the cornerRadius for borderStyle = KonyWidgetBorderStyleCustomRoundedCorner.
@property (nonatomic) BOOL adjustDrawingWithinBoundsOfCellNormalBackgroundView;


- (CGMutablePathRef) newBorderPathForCell: (CGContextRef) c forRect: (CGRect) rect;
- (void) applySkin: (Skin*) aSkin;
//Instance method -getTableViewCell not found
-(UITableViewCell*) getTableViewCell;
@end
