//
//  KonyTapGestureRecognizer.h
//  VM
//
//  Created by KH1244 on 09/05/13.
//
//

#import <UIKit/UIKit.h>
#import "KonyGestureProtocol.h"

@interface KonyTapGestureRecognizer : UITapGestureRecognizer

@property (nonatomic,assign) KonyGestureType gestureType;

@end
