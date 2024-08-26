//
//  MSGradient.h
//  VM
//
//  Created by Deepti Kaushal on 12/12/12.
//
//

#import <Foundation/Foundation.h>

#define SKIN_INT_TO_UICOLOR(c)	[ UIColor colorWithRed:((c>>24)&0xFF)/255.0 \
green:((c>>16)&0xFF)/255.0 \
blue:((c >>8)&0xFF)/255.0 \
alpha: (1.0 - ((c)&0xFF)/100.0) ];


@class MSGradientModel;
@interface MSGradient : NSObject{
    
    CGFloat angleForGradient;
    NSArray *clr;
    NSArray *loc;
    //NSInteger noOfColors;
    
}

@property (nonatomic,readonly) CGFloat angleForGradient;
@property (nonatomic,readonly) NSArray *clr;
@property (nonatomic,readonly) NSArray *loc;
//@property (nonatomic,readonly) NSInteger noOfColors;


+(MSGradient*)getMSGradientFromModel:(MSGradientModel *)gradientModel;
+(MSGradient*)updateBackgroundWithColors:(NSArray*) colors_ locations: (NSArray*) locations_ andGradientAngle: (CGFloat) angle;
@end

@interface MSGradientModel : NSObject
{
    NSArray *colors;
    NSArray *locations;
    CGFloat gradientAngle;
    //NSInteger errorFlag;
    //NSInteger noOfColors;
}

@property (nonatomic,readonly) NSArray *colors;
@property (nonatomic,readonly) NSArray *locations;
@property (nonatomic,readonly) CGFloat gradientAngle;
@property (nonatomic,assign) NSInteger errorFlag;
//@property (nonatomic,readonly) NSInteger noOfColors;


+(MSGradientModel *)extractGradientComponents:(NSString *)componentString withError: (NSError**) error;



@end
