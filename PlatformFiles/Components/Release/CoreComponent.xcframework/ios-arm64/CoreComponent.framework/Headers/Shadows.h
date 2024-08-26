//
//  Shadows.h
//  VM
//
//  Created by Deepti Kaushal on 17/12/12.
//
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

#define SKIN_INT_TO_UICOLOR(c)	[ UIColor colorWithRed:((c>>24)&0xFF)/255.0 \
green:((c>>16)&0xFF)/255.0 \
blue:((c >>8)&0xFF)/255.0 \
alpha: (1.0 - ((c)&0xFF)/100.0) ];


@class ShadowsModel;
@interface Shadows : NSObject{
    
    CGFloat offsetX;
    CGFloat offsetY;
    CGFloat blurRadius;
    UIColor *shadowColor;
    BOOL isInner;
    
}

@property (nonatomic,readonly) CGFloat  offsetX;
@property (nonatomic,readonly)CGFloat offsetY;
@property (nonatomic,readonly)CGFloat blurRadius;
@property (nonatomic,readonly)UIColor *shadowColor;
@property (nonatomic,readonly)BOOL isInner;


+(Shadows*)getShadowFromModel:(ShadowsModel *)shadowModel;
+(Shadows*)updateShadowOffsetX:(CGFloat)offsetx offsetY:(CGFloat)offsety blurRadius: (CGFloat)blurradius color: (UIColor*)shadowcolor andIsInner:(BOOL)inner;

@end

@interface ShadowsModel : NSObject
{
    CGFloat  offsetXModel;
    CGFloat offsetYModel;
    CGFloat blurRadiusModel;
    NSString *shadowColorModel;
    BOOL isInnerModel;
}

@property (nonatomic,readonly)CGFloat  offsetXModel;
@property (nonatomic,readonly)CGFloat offsetYModel;
@property (nonatomic,readonly)CGFloat blurRadiusModel;
@property (nonatomic,readonly)NSString *shadowColorModel;
@property (nonatomic,readonly)BOOL isInnerModel;

+(ShadowsModel *)extractShadowComponents:(NSDictionary *)componentString ofType:(NSString *)intProp withError: (NSError**) error;

@end

