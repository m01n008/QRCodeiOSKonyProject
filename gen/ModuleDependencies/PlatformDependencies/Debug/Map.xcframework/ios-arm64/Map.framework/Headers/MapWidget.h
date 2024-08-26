//
//  MapWidget.h
//  VM
//
//  Created by Uday Bheema on 08/02/12.
//  Copyright (c) 2012 KONY LABS. All rights reserved.
//
#define  NAVIGATE_ZOOM  @"navigateAndZoom"
#define  LAT            @"lat"
#define  LON            @"lon"
#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKMapView.h>

#import <CoreComponent/Widget.h>
#import "MapHelpers.h"
@class MapAnnotation;


@interface CustomMapView : MKMapView<UIGestureRecognizerDelegate>
    //Here showing multiple callouts. we need handle all showing callout objects.
@property (nonatomic, retain) NSMutableDictionary  *contentWidgetForCallouts;

@end


//copied from net - http://troybrant.net/blog/2010/01/set-the-zoom-level-of-an-mkmapview/
//
//

@interface MapWidget : Widget <MKMapViewDelegate, UIGestureRecognizerDelegate> {
    CustomMapView *mapView;
    NSMutableArray *annotations;
    NSUInteger zoomLevel;
    MapViewCurrentLocationType currentLocationType;
    NSUInteger selectedAnnotationIndex;
    BOOL shouldExecuteClosureOnPinSelect;
    NSInteger locationDataEndIndex;
    CallBack *onMapLoadedWidgetCallBack;
    
    //this property will validate, whether to show the showcallout when navigated from navigateTo API's
    BOOL isNavShowCalloutReqd; 
    BOOL shouldNavigateToSelectedAnnotation;
    
    //Added to track if the program flow is caused by any Map api which deals with canShowCallout property
    BOOL calloutApiInExecution;
    BOOL shouldReadZoomLevelFromView;
    
    //Route api related
    UIColor *lineColor;
    float lineWidth;
    BOOL  showMultipleCallout;
}

@property (nonatomic, retain) id<MKOverlay> overlayToNavigateAndZoom;
@property (nonatomic,retain) NSMutableArray *annotations;

@property (nonatomic,readonly) BOOL mapFullyRendered;
- (MapAnnotation *)doesAnnotationExist:(id)locationData;

//Moves the map region so as the selected annotation is at the center of the map
- (void)centerSelectedAnnotation;

- (void)removeCurrentLocationFromAnnotations;
- (void)selectAnnotation:(MapAnnotation *)annotation;
- (void)addCurrentLocationToAnnotations;
- (BOOL)isCurrentLocationPresentInAnnotations;
- (void)updateCurrentLocationType:(MapViewCurrentLocationType)theCurrentLocationType;
- (void)selectMapType:(MapViewMode)mapType;
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer;
- (void)showCalloutForAnnotation:(id)annotation;
- (BOOL)canShowCustomCalloutForAnnotaion:(MapAnnotation *)annotation;

- (void)showCalloutAt:(NSInteger)index;
- (void)gotoCurrentLocation;
- (void)navigateLocationAtIndex:(NSInteger)index needsShowCallOut:(BOOL)showCallOut;
- (void)navigateToLocation:(id)locationData needsShowCallOut:(BOOL)showCallOut showDropPin:(BOOL)showPin;
- (void)drawRouteFrom:(NSDictionary *)startLocation to:(NSDictionary *)endLocation connecting:(NSArray *)locations atIndex:(NSNumber*)zIndex withConfig:(NSDictionary *)routeConfig withIdentifier:(NSString *)polylineId navigateAndZoom:(BOOL) navigateAndZoom;
- (void)updateMapBounds;
-  (void)updateAnnotationView:(id <MKAnnotation>)annotation;
-(void)calloutVisibility:(BOOL) isShowCallout andLocationsData:(NSArray *)locationData;
-(void)addPolygonData:(NSDictionary *)dict andPolyID:(NSString *)polyId;
-(void)setBounds:(CLLocationCoordinate2D)coord zoom :(double)zoom pitch :(double)pitch heading :(double)heading;
-(void)fitToBounds:(NSArray*)polygonData :(BOOL)navigateAndZoomObj;
@end
