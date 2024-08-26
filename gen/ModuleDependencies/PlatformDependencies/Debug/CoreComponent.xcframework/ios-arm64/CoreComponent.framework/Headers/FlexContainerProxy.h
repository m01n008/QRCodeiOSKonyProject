//
//  FlexContainerProxy.h
//  VM
//
//  Created by Rajeeva's on 07/06/14.
//
//

#import "BoxProxy.h"

@interface FlexContainerProxy : BoxProxy

- (void)forceLayout;
- (void)setDefaultUnit:(FlexLayoutDisplayUnit)defaultUnit;
- (void)removeAll;
- (void)destroy;

@end
