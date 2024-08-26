//
//  JSKonyImageFilter.h
//  VM
//
//  Created by Prabhakar K on 15/09/15.
//
//

#import <CoreComponent/JSObject.h>
#import "KonyImageFilter.h"

@interface JSKonyImageFilter : JSObject
-(void) applyFilter:(id) filterData;
-(void) clearFilterData;
-(NSArray*) getOutputImage;
@end
