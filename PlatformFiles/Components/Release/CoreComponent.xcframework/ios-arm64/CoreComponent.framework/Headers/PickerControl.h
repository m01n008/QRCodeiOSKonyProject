//
//  PickerControl.h
//  VM
//
//  Created by Sathya Vennapusala on 07/01/09.
//  Copyright 2009 KonyLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KonyWrapperDS.h"

#define PICKERCONTRL_IMG_BTN_DEFAULT_WIDTH 20
#define PICKERCONTRL_IMG_BTN_DEFAULT_HEIGHT 33
#define PICKERCONTRL_IMG_BTN_BG_TRANSPARENCY 0.3

@interface PickerControl : UIView <WheelViewProtocol>
{
	@public
		Skin *skin;
		Skin *focusSkin;
		Skin *currentSkin;
		float imageWidth;
		NSString* widgetUsingThis;
        BOOL isActive;
}

@property (nonatomic, readwrite) UIButton *titleBut;
@property (nonatomic, readwrite, assign) float imageWidth;
@property (nonatomic, readwrite) UIButton * imgBut;
@property (nonatomic, readwrite) id  pickerWidget;
@property (nonatomic, retain) Skin *skin;
@property (nonatomic, retain) Skin *focusSkin;
@property (nonatomic, retain) Skin *currentSkin;
@property (nonatomic, retain)	NSString* widgetUsingThis;
@property (nonatomic, readwrite) BOOL isActive;

@property (nonatomic, retain) UIView *inputView;
@property (nonatomic, retain) UIView *inputAccessoryView;

- (id) initWithPickerWidget: (id) pickerWidget_ skin:(Skin *) skin_ focusSkin:(Skin *) focusSkin_;
- (id) initWithPickerWidget: (id) pickerWidget_ skin:(Skin *) skin_ focusSkin:(Skin *) focusSkin_ image: (UIImage*) image;
- (void) setViewFrame:(CGRect) rect;
- (void) setTitle: (NSString*) title;
- (NSString*) getTitle;

- (void)refreshPickerControl;
- (void)updateSkinsForBtn;
- (void) applySkin:(Skin*) aSkin;

@end
