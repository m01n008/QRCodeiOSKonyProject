//
//  KeyFrameAnimationModel.h
//  VM
//
//  Created by Prabhakar K on 15/07/14.
//
//

#import "AnimationModel.h"

@class TransformDataModel;

@interface KeyFrameAnimationModel : AnimationModel
{
    NSMutableArray *keyArray;
}

@property(nonatomic, retain) NSMutableArray *keyArray;

-(id) initWithKeyFrameData:(NSDictionary*) data;
-(BOOL) isTransformPresent;
-(BOOL) isTransformValidForPerspectiveInWidget:(Widget*) widget;
+(BOOL) isValidAnimationData:(id) data;
    
+(BOOL) isValidTransformData:(id) data;
+(float) getPerspectiveValueFromTransform:(TransformDataModel*) transformDataModel_;
@end
