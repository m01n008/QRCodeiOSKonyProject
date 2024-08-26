//
//  MapRouteUtil.h
//  VM
//
//  Created by Manikanta.Nallabelly on 20/01/16.
//
//


#import <MapKit/MapKit.h>
#import <Foundation/Foundation.h>

#import <CoreComponent/KonyTypes.h>
#import <CoreComponent/CallBack.h>

@interface MapRouteUtil : NSObject

+ (void) searchRoutes:(id)searchCriteria onSuccess:(CallBack*) success onFailure:(CallBack*) failure;

+ (BOOL) containsLocation:(OverlayShapeType) overlayType location:(NSDictionary*) location shapeData:(NSDictionary*) shapeInfo;

+ (CLLocationDistance) distanceFromLocation:(NSDictionary*) fromLocation toLocation:(NSDictionary*) toLocation;

@end
