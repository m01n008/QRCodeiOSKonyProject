//
//  MapPolylineDataModel.h
//  Map
//
//  Created by Naveen Patnana on 26/09/19.
//  Copyright © 2019 Kony Labs. All rights reserved.
//
//*******************************************************************************************************
//* BUG- 4094:
//* EXISTING ISSUE:For every Polyline add/remove, All polyline overlays are redrawn(by removing and adding).
//* FIX: Using NSMutableArray, For every Polyline add/remove, The selected polyline overlay only drawn or remove.
//*******************************************************************************************************

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MapPolylineDataModel : NSObject<NSCopying>

@property(nonatomic,retain,readonly) NSMutableArray *polylineData;

- (void)addPolylineDataDict:(NSDictionary *)dict;
- (void)removePolylineData:(NSDictionary *)polylineDict;
- (void)addMultiplePolylineData:(NSArray *)dataDicts;
- (void)removeAllPolylineData;
- (void)updatePolylineData:(NSDictionary *)oldPolylineDict andNewPolylineDict:(NSDictionary *)newPolylineDict;
- (void) setPolylineDataPrivate:(NSMutableArray *) polylineData;

@end

NS_ASSUME_NONNULL_END
