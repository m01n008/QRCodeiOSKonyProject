//
//  JSSegmentedUI.h
//  VM
//
//  Created by KH206 on 04/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/JSWidget.h>

@class KeyFrameAnimationModel;

@interface JSOldSegmentedUI : JSWidget
{
    
}
- (id) suiProxyClass;

- (void) addAt:  (NSArray *)arguments;
- (void) setData: (NSArray *)arguments;
- (void) setDataWithSections: (NSArray *)arguments;
- (void) addAll:  (NSArray *)arguments;
- (void) removeAt: (NSArray *)arguments;
- (void) setDataAt: (NSArray *)arguments;
- (void) setRetainSelection: (NSArray *)arguments;
- (void) clearSelection: (NSArray *)arguments;

- (KeyFrameAnimationModel *)prepareAndReturnAnimationModelUsingConfig:(NSDictionary *)config;

- (BOOL)isCellVisibleAtRowIndex:(NSNumber *)rowIndex andSectionIndex:(NSNumber *)sectionIndex;

@end
