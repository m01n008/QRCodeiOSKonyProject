//
//  CarouselView.h
//  VM
//
//  Created by Uday Bheema on 28/05/12.
//  Copyright (c) 2012 KONY SOLUTIONS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SegmentedUIViewProtocol.h"
#import <CoreComponent/iCarousel.h>
#import <CoreComponent/CustomContentView.h>
#import "KonyWidgetContainerView.h"
#import "SegmentedUIWidget.h"
#import <CoreComponent/KonyGestureProtocol.h>

@interface SUIWithCarouselView : NSObject<iCarouselDataSource, iCarouselDelegate, SegmentedUIViewProtocol, KonyWidgetEventListenerProtocol, KonyGestureProtocol>
{
    KonyGestureRecognizer *gestureRecognizer;
    BOOL wrap;
    BOOL isWidgetDirty;
    iCarouselType viewType;
    float itemHeight;
    float itemWidth;
    NSInteger currentClickedItem;
    uint borderWidth;
    CustomContentView * cView;
    float referenceWidth;
}

@property (nonatomic) iCarousel *segCarousel;
@property (nonatomic) iCarouselType viewType;
@property (nonatomic) BOOL wrap;
@property (nonatomic) BOOL isWidgetDirty;
@property (nonatomic) uint borderWidth;

- (id)  initWithViewType :(SegmentedUIViewType) vType;
- (BOOL) areDelegatesInitialised;
- (float) calculateItemHeightForGivenWidth: (float) givenWidth;
- (void) setDataSource;
- (NSInteger) getAbsoluteIndexForSection:(NSInteger) sectionIndex andRowIndex:(NSInteger) rowIndex;
- (NSIndexPath*) getIndexPathForAbsoluteRowIndex:(NSInteger) rowIndex;
- (iCarouselType) getCarouselTypeForSegmentedUIViewType:(SegmentedUIViewType) vType;
- (NSRange) getRowIndicesForSection:(NSInteger) sectionIndex;
- (Skin*) getSkin:(NSString*) skinId;
- (void) refreshProperties;
- (void) viewConfigUpdated :(NSDictionary*)viewConfig;

@end
