//
//  JSKonyImageAPI.h
//  VM
//
//  Created by Prabhakar K on 24/08/15.
//
//

#import <CoreComponent/JSStaticAPI.h>
#import <CoreComponent/JSTransfromObject.h>

@interface JSKonyImageAPI : NSObject<JSStaticAPI>
+(NSArray *) createImage:(NSArray*) arguments;
+(NSArray *) createImageFromSnapShot:(NSArray*) arguments;
+(NSArray*) cropImageInTiles:(NSArray*) arguments;
+(NSArray*) cropImageInTilesForRects:(NSArray*) arguments;
+(NSArray*) findImageInGallery:(NSArray*) arguments;
@end
