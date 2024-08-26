//
//  KonyImage.h
//  VM
//
//  Created by Prabhakar K on 24/08/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreComponent/RawBytes.h>
#import "ImageWidget.h"
#import "ImageModel.h"
#import <CoreComponent/KonyUtil.h>

@interface KonyImage : NSObject<UrlImageDelegate>
{
    int imageWidth;
    int imageHeight;
    RawBytes *rawBytes;
    UIImage *srcImage;
    ImageWidget *imgWidget;
    ImageModel *imgModel;
    float compressionQualityValue;
}

@property(nonatomic, readonly) UIImage *srcImage;

-(id) initWithObject:(id) object;
-(RawBytes*) getImageAsRawBytes:(NSArray*) encodingType;
-(NSNumber*) getImageWidth;
-(NSNumber*) getImageHeight;
-(void) cropToRect:(NSArray*) arguments;
-(void) scale:(float) scaleFactor;
-(void) compress:(float) compressionQuality;

-(void) releaseImage;

-(void) setImage:(UIImage*) image;

-(void) writeToGallery:(NSDictionary*) configDict;

//+(NSArray*) cropImageInTiles:(NSArray*) arguments;
+(NSArray*) cropImage:(KonyImage*)image inXTiles:(int) xSplits inYTiles:(int) ySplits;
+(NSArray*) cropImage:(KonyImage*) image inTilesForRects:(NSArray*) rects;

+(RawBytes*) findImageInGallery:(NSString*)imageUID;

+(BOOL) isFileGIF:(NSData*)nsData;
+(BOOL) isFileHeif:(NSData*)nsData;
-(void)rotateImageByDegree:(CGFloat)degree;

@end
