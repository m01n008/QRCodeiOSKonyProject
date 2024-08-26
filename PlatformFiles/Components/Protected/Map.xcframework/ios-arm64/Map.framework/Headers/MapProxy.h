//
//  MapProxy.h
//  VM
//
//  Created by KH165 on 25/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/BaseProxy.h>
#import <CoreComponent/KonyTypes.h>

@interface MapProxy : BaseProxy {
    
}

- (void)showCalloutAtIndex:(NSInteger)index;
- (void)gotoCurrentLocation;
- (void)navigateToLocation:(id)annotation needsShowCallOut:(BOOL)lShowCallOut showDropPin:(BOOL)showDropPin;
- (void)navigateLocationAtIndex:(int)lLocationIndex needsShowCallOut:(BOOL)lShowCallOut;
- (void)dismissCallout;
- (void)clear;
- (NSMutableDictionary *)getBounds;
- (void)addPolyline:(NSString*) polylineId withData:(NSDictionary*) polylineData;
- (void)removePolyline:(NSString *)polylineId;
- (void)addPolygon:(NSString*) polygonId withData:(NSDictionary*) polygonData;
- (void)removePolygon:(NSString *)polygonId;
- (void)addCircle:(NSString*) circleId withData:(NSDictionary*) circleData;
- (void)removeCircle:(NSString *)circleId;
-(void)addPins:(NSArray *)args;
-(void)removePin:(NSArray *)args ;
-(void)updatePin:(NSArray *)args ;
-(void)addPin:(NSArray *)args;
-(void)removePins:(NSArray *)args ;
-(void)updatePins:(NSArray *)args ;
-(void)calloutVisbility:(BOOL )isShowStatus andLocationData:(NSArray *)locationData;
-(void)setBounds:(NSDictionary*)dict;
-(void)fitToBounds:(NSDictionary*)config;
@end
