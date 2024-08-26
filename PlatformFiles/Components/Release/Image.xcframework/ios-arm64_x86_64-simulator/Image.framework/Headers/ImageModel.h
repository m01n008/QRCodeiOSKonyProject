//
//  ImageModel.h
//  VM
//
//  Created by Sunil Nimmagadda on 21/02/12.
//  Copyright (c) 2012 Kony Labs. All rights reserved.
//

#import <CoreComponent/WidgetModel.h>
#import <CoreComponent/KonyWrapperDS.h>
#import <CoreComponent/RawBytes.h>


@class KonyImage;
@interface ImageModel : WidgetModel
{
@public
    id src;
    /* IphProps */
    id imagewhenfailed;
    id imagewhendownloading;
    NSNumber *scalemode;
    NSString *ondownloadcomplete;
    NSString *progressindicatorcolor;
    NSNumber *glossyeffect;
    NSString *downloadprogressindicator;
    NSString *base64;
    RawBytes  *rawbytes;
    NSNumber *referenceheight;
    NSNumber *referencewidth;
    BOOL newConstructor;
    ImageData *imageData;
    KonyImage *konyImage;
    URLImageState  urlImageState;
    NSNumber *zoomValue;
    BOOL zoomEnabled;
}
@property (nonatomic, retain) id src;
@property (nonatomic, retain) id imagewhenfailed;
@property (nonatomic, retain) id imagewhendownloading;
@property (nonatomic ,retain) NSNumber *scalemode;
@property (nonatomic, retain) NSString *ondownloadcomplete;
@property (nonatomic, retain) NSString *progressindicatorcolor;
@property (nonatomic, retain) NSNumber *glossyeffect;
@property (nonatomic, retain) NSString *downloadprogressindicator;
@property (nonatomic, retain) NSString *base64;
@property (nonatomic, retain) RawBytes *rawbytes;
@property (nonatomic, retain) NSNumber *referenceheight;
@property (nonatomic, retain) NSNumber *referencewidth;
@property (nonatomic, assign) BOOL newConstructor;
@property (nonatomic, retain) ImageData *imageData;
@property (nonatomic, retain) NSString *focusSrc;
@property (nonatomic, retain) KonyImage *konyImage;
@property (nonatomic, retain) NSDictionary *tintConfig;
@property (nonatomic, retain) NSDictionary *cacheConfig;
@property (nonatomic) URLImageState  urlImageState;
@property (nonatomic, readwrite) NSNumber *zoomValue;
@property (nonatomic, readwrite) BOOL zoomEnabled;
@property (nonatomic, readwrite) NSMutableArray *overlayWidgetModels;
- (Widget*) createWidget;
- (id) copyWithZone:(NSZone *)zone;
-(id) initWithConstructor:(BOOL) newConstructor_;
- (void)setURLImageStateUtil:(URLImageState)flag;
- (void) addOverlayWidgets:(NSArray*)widgets;
- (void) removeOverlayWidgets:(NSArray*)widgets;
- (void) setZoomValuePrivate:(NSNumber*)value;
@end
