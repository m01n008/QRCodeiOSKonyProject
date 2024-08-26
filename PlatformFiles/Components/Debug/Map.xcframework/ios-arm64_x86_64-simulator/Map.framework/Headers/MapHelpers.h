//
//  MapHelpers.h
//  VM
//
//  Created by Girish Haniyamballi on 14/02/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKMapView.h>
#import "MapModel.h"

//copied from net - http://troybrant.net/blog/2010/01/set-the-zoom-level-of-an-mkmapview/
//
//

@interface MKMapView (ZoomLevel)

- (MKCoordinateSpan)coordinateSpanWithMapView:(MKMapView *)mapView
                             centerCoordinate:(CLLocationCoordinate2D)centerCoordinate
                                 andZoomLevel:(NSUInteger)zoomLevel;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate
				  zoomLevel:(NSUInteger)zoomLevel
                   animated:(BOOL)animated
           defaultZoomLevel:(NSUInteger)defaultZoom;
- (double)longitudeToPixelSpaceX:(double)longitude;

- (double)latitudeToPixelSpaceY:(double)latitude;

- (double)pixelSpaceXToLongitude:(double)pixelX;
- (double)pixelSpaceYToLatitude:(double)pixelY;

- (NSUInteger) zoomLevel;

@end

//End of copied from net - http://troybrant.net/blog/2010/01/set-the-zoom-level-of-an-mkmapview/
//
//

@interface MapAnnotation : MKPlacemark <NSCopying>
{
@private
	CLLocationCoordinate2D coordinate;
    
@public
    BOOL isNeedsShowCallOut; //by default false
    BOOL isShowDropPin;        //by default true.
    
    
}

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, strong) NSString* aTitle;
@property (nonatomic, strong) NSString* aSubTitle;
@property (nonatomic, strong) NSDictionary* dictionary;
@property (nonatomic, strong) id locationInfo; //Object referance deallocating using ARC mode.
@property (nonatomic, strong) id img; //Object referance deallocating using ARC mode.
@property (nonatomic, strong) NSDictionary *calloutData; //Object referance deallocating using ARC mode.
@property (nonatomic,strong) NSString *pinID; //Object referance deallocating using ARC mode.
@property (nonatomic,strong) NSString *foucsImg; //Object referance deallocating using ARC mode.
@property (nonatomic,assign) BOOL isAnnotationSelected;
@property (nonatomic,assign) BOOL navigateAndZoom;

-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate addressDictionary:(NSDictionary *)addressDictionary WithTitle:(NSString*) title withSubTitle:(NSString*) subTitle;

-(id) initWithLocationInfo :(id) locationInfo forWidgetModel:(MapModel *)mapModel;

- (void) updateAnnotationWithLocationInfo:(id)locationInfo forWidgetModel:(MapModel *)mapModel;

- (CGPoint) pinOffsetForWidgetModel:(MapModel *)mapModel pinImage:(UIImage*) pinImage;

+ (UIImage*) pinImageFromImageObject:(id) imageObj;

@end
