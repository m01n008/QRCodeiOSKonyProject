//
//  MapOverlay.h
//  VM
//
//  Created by Manikanta.Nallabelly on 20/01/16.
//
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "MapHelpers.h"

@protocol OverlayShape <NSObject>

@property (nonatomic, retain) NSString *overlayId;
@property (nonatomic, retain) id overlayConfig;
@property (nonatomic, retain) NSNumber *zPosition;

- (UIColor*)  overlayLineColor;
- (CGFloat)   overlayLineWidth;

@optional

- (UIColor*)  overlayFillColor;
- (NSArray*)  overlayLineDashPattern;

@end

@interface CustomPolyline : MKPolyline<OverlayShape>

+ (CustomPolyline *)polylineWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSUInteger)count withIdentifier:(NSString *)polylineId polylineConfig:(id) polylineConfig;

@end


@interface CustomPolygon : MKPolygon<OverlayShape>

+ (CustomPolygon *)polygonWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSUInteger)count withIdentifier:(NSString *)polygonId polygonConfig:(id) polygonConfig;

@end

@interface CustomCircle : MKCircle<OverlayShape>

+ (CustomCircle *)circleWithCenterCoordinate:(CLLocationCoordinate2D )centre radius:(CLLocationDistance)radius withIdentifier:(NSString *)circleId;

@end


@interface MapAnnotationForPolyline : MapAnnotation

@property (nonatomic, assign) NSString *polylineId;

@end


@interface MapAnnotationForCircle : MapAnnotation

@property (nonatomic, assign) NSString *circleId;

@end
