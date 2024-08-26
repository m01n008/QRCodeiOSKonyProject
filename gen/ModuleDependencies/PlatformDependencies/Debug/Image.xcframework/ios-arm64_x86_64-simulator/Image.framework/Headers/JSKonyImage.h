//
//  JSKonyImage.h
//  VM
//
//  Created by Prabhakar K on 24/08/15.
//
//

#import <CoreComponent/JSObject.h>
#import <CoreComponent/JSRawBytes.h>

@interface JSKonyImage : JSObject
-(JSRawBytes*) getImageAsRawBytes:(NSArray*) encodingType;
-(NSNumber*) getImageWidth;
-(NSNumber*) getImageHeight;
-(void) cropToRect:(NSArray*) arguments;
-(void) scale:(NSArray*) arguments;
-(void) compress:(NSArray*) arguments;
-(void) releaseImage;
-(void) writeToMediaGallery:(NSArray*) arguments;

+(NSArray*) cropImage:(JSKonyImage*)image inXTiles:(int) xSplits inYTiles:(int) ySplits;
+(NSArray*) cropImage:(JSKonyImage*)image inTilesForRects:(NSArray*) rects;

@end
