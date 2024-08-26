//
//  KonyImageFilter.h
//  VM
//
//  Created by Prabhakar K on 15/09/15.
//
//

#import <Foundation/Foundation.h>
#import "KonyImage.h"

@interface KonyImageFilter : NSObject
{
    NSMutableDictionary *optionalDataDict;
    NSMutableDictionary *requiredDataDict;
    NSMutableDictionary *validInputDict;
    NSMutableDictionary *attributesNotMentionedInDocumentation;
    CGRect maxOfBoundingRectFromInputImages;
    CIFilter *filter;
    CIContext *context;
    UIImage *outputImage;
    CallBack *onSuccessCallBack;
    CallBack *onErrorCallBack;
}
-(id) initWithObject:(id) object;
-(void) applyFilter:(NSDictionary*) filterData;
-(void) clearFilterData;
-(KonyImage*) getOutputImage;
@end
