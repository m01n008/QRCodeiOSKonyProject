//
//  MapDataModel.h
//  konylib
//
//  Created by Purnachandar on 29/09/17.
//

//*******************************************************************************************************
//* BUG- 91982:  Polygons is not rendering for iPhone.
//* EXISTING ISSUE:For every Polygon add/remove, All polygon overlays are redrawn(by removing and adding).
//* FIX: Using NSOrderdset, For every Polygon add/remove, The selected polygon overlay only drawn or remove.
//*******************************************************************************************************


#import <Foundation/Foundation.h>

@interface MapDataModel : NSObject<NSCopying>

@property (nonatomic,retain,readonly) NSMutableArray *polygonsData;

- (void)addPolygonDataDict:(NSDictionary *)dict;
- (void)removePolygonData:(NSDictionary *)polygonDict;
- (void)addMultiplePolygonsData:(NSArray *)dataDicts;
- (void)removeAllPolygonsData;
- (void)updatePolyonData:(NSDictionary *)oldPolygonDict andNewPolygondDict:(NSDictionary *)newPolyonDict;
- (void) setPolygonDataPrivate:(NSMutableArray *) polygonData;
@end
