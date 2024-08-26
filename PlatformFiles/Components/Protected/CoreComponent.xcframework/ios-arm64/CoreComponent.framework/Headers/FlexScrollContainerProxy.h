//
//  FlexContainerProxy.h
//  VM
//
//  Created by Girish Haniyamballi on 12/07/14.
//
//

#import "FlexContainerProxy.h"

@interface FlexScrollContainerProxy : FlexContainerProxy

- (void)scrollToEndWithAnimation:(BOOL) animate;
- (void)setContentOffset:(NSDictionary*) contentOffset withAnimation:(BOOL) animate;
- (void) scrollToWidget: (BaseProxy*) subWidgetProxy withAnimation:(BOOL)animation;
- (void)setZoomScale:(NSNumber*) zoomScale withAnimation:(BOOL) animate;
- (void)zoomToRect:(NSDictionary*) rectToZoom withAnimation:(BOOL) animate;

@end
