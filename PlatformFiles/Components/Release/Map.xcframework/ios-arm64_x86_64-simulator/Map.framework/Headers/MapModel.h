//
//  MapProxy.h
//  VM
//
//  Created by KH165 on 25/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>
#import "MapDataModel.h"
#import "MapPolylineDataModel.h"
#import "MapLocationDataModel.h"

@interface MapModel : WidgetModel {
    MapProviderName provider;
    NSString *mapKey;
    id defaultPinImage;
    CallBack *onSelection;
    CallBack *onPinClick;
    CallBack *onClick;
    BOOL screenLevelWidget;
    BOOL autoCenterPinOnClick;
    NSNumber *zoomLevel;
    MapViewMode mode;
    MapViewCurrentLocationType currentLocationType;
    WidgetModel *calloutTemplate;
    NSDictionary *widgetDataMapForCallout;
    float calloutWidthPercentage;
    NSMutableDictionary *mapBounds;
    CallBack *onBoundsChanged;
    NSArray *calloutOffset;
    
    //Some flags to trigger the api's execution
    NSNumber *showCalloutAtFlag;
    NSNumber *gotoCurrentLocationFlag;
    NSNumber *navigateToLocationAtIndexFlag;
    NSNumber *dismissCalloutFlag;
    NSNumber *clearMapFlag;
    
    //Some arguments which will hold the data from the apis
    NSInteger index;
    NSArray *locationDatum;
    BOOL shouldShowCallOut;
    BOOL shouldDropPin;
}

@property (nonatomic) MapProviderName provider;
@property (nonatomic, retain) NSString *mapKey;
@property (nonatomic, retain) id defaultPinImage;
@property (nonatomic, retain) CallBack *onSelection;
@property (nonatomic, retain) CallBack *onPinClick;
@property (nonatomic, retain) CallBack *onClick;
@property (nonatomic) BOOL screenLevelWidget;
@property (nonatomic) BOOL autoCenterPinOnClick;
@property (nonatomic, retain) NSNumber *zoomLevel;
@property (nonatomic) MapViewMode mode;
@property (nonatomic) MapViewCurrentLocationType currentLocationType;
@property (nonatomic, retain) WidgetModel *calloutTemplate;
@property (nonatomic, retain) NSDictionary *widgetDataMapForCallout;
@property (nonatomic) float calloutWidthPercentage;
@property (nonatomic, retain) NSArray *calloutOffset;

@property (nonatomic, retain) NSNumber *showCalloutAtFlag;
@property (nonatomic, retain) NSNumber *gotoCurrentLocationFlag;
@property (nonatomic, retain) NSNumber *navigateToLocationAtIndexFlag;
@property (nonatomic, retain) NSNumber *dismissCalloutFlag;
@property (nonatomic, retain) NSNumber *clearMapFlag;

@property (nonatomic) NSInteger index;
@property (nonatomic, retain) NSArray *locationDatum;
@property (nonatomic) BOOL shouldShowCallOut;
@property (nonatomic) BOOL shouldDropPin;

//@property (nonatomic, retain) NSMutableDictionary *polylineData;
@property (nonatomic, retain) NSMutableDictionary *circleData;

@property (nonatomic, retain) NSMutableDictionary *mapBounds;
@property (nonatomic, retain) CallBack *onBoundsChanged;

@property (nonatomic, retain) CallBack *onMapLoaded;
@property  (nonatomic) BOOL  enableMultipleCallouts;

	//TODO: Need to impliment for CircleData in MapDataModel (Polygons are implimented.)
@property (nonatomic, retain) MapDataModel *mapDataModel;
@property (nonatomic, retain) MapPolylineDataModel *mapPolylineDataModel;
@property (nonatomic, retain) MapLocationDataModel *mapLocationDataModel;

- (void) setZoomLevelPrivate:(NSUInteger) mapZoomLevel;

//- (void) setPolylineDataPrivate:(NSMutableDictionary*) polylineData;
- (void) setCircleDataPrivate:(NSMutableDictionary*) circleData;
- (void) addPolygonObject:(NSString *)polygonID andData:(NSDictionary *)polygonDict;
- (void) addPolylineObject:(NSString *)polylineID andData:(NSDictionary *)polylineDict;
- (void)removePolylgonData:(NSString *)polygonID;
- (void)removePolylinesData:(NSString *)polylineID;

/*  Map Hancements - 7.3   */
-(void)removeAnnotations:(NSArray *)currentAnnotations;
-(void)addAnnotations:(NSArray *)newAnnotationsData;
-(void)updateAnnotationsData:(NSArray *)updateLocationsData;
-(void)setLocationData:(NSMutableArray *)locationsDataArr;
-(NSArray*)locationData;
@end
