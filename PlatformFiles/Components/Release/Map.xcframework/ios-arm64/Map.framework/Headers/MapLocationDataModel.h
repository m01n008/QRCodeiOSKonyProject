//
//  MapLocationDataModel.h
//  Map
//
//  Created by Praveen.kothapeta on 29/05/18.
//  Copyright © 2018 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MapLocationDataModel : NSObject<NSCopying>
@property (nonatomic,strong,readonly) NSMutableArray *locationsData;
- (void)addPin:(NSDictionary *)annotationDict;
- (void)updatePin:(NSDictionary *)oldAnnotationDict withNewAnnotationdDict:(NSDictionary *)newAnnotationDict;
- (void)removePin:(NSDictionary *)annotationDict;
- (void)clear;
- (void)addPins:(NSArray*)annotationArr;
@end
