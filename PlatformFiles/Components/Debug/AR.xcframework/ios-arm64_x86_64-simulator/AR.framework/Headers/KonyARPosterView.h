//
//  KonyARPosterView.h
//  AR
//
//  Created by Aravind Macharla on 07/11/19.
//  Copyright © 2019 Kony. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KonyARSkin.h"
@import CoreComponent.Widget;

@interface KonyARPosterView : UIView

@property(nonatomic,strong) UILabel *arLabel;
-(void)setARLabelAttributesFor:(Widget *)arViewWidget;
- (void) applySkin: (KonyARSkin*) aSkin;

@end
