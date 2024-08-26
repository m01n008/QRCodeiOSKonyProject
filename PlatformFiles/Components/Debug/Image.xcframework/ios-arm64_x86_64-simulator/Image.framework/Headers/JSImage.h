//
//  JSImage.h
//  VM
//
//  Created by Sunil Nimmagadda on 17/03/12.
//  Copyright (c) 2012 Kony Labs. All rights reserved.
//

#import <CoreComponent/RuntimeObject.h>
#import <CoreComponent/JSWidget.h>
#import "ImageProxy.h"

@interface JSImage : JSWidget
/** @method addOverlayWidgets
 *  @brief This method adds the overlay widgets on top of image Widget. Widgets will only be added if zoomEnabled property is true on image widget.
 *  @param Array of widgets to be added
 *  @return nil.
 **/
- (void) addOverlayWidgets:(NSArray*)widgets;
/** @method removeOverlayWidgets
 *  @brief This method removes overlay widgets given in the list.
 *  @param Array of widget references to be removed
 *  @return nil.
 **/
- (void) removeOverlayWidgets:(NSArray*)widgets;
@end
