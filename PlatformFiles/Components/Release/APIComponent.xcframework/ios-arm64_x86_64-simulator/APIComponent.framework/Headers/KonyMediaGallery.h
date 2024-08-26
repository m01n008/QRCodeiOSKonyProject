//
//  KonyMediaGallery.h
//  VM
//
//  Created by Sivaprasadu Raju on 15/07/10.
//  Copyright 2010 Kony Labs. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <CoreComponent/KonyWrapper.h>
#import <CoreComponent/KonyWrapperDS.h>
#import <PhotosUI/PhotosUI.h>
#import <Photos/Photos.h>

#define MIMETYPE_IMAGE_ALL @"image/*"
#define MIMETYPE_VIDEO_ALL @"video/*"
#define MIMETYPE_AUDIO_ALL @"audio/*"
#define MIMETYPE_MOVIE_ALL @"movie/*"
#define MIMETYPE_IMAGE_JPEG @"image/jpeg"
#define MIMETYPE_IMAGE_PNG @"image/png"
#define MIMETYPE_IMAGE_JPG @"image/jpg"
#define MIMETYPE_IMAGE_GIF @"image/gif"
#define MIMETYPE_IMAGE_TIFF @"image/tiff"
#define MIMETYPE_VIDEO_QUICKTIME @"video/quicktime"
#define MEDIATYPE @"konyMediaType"
#define RAWBYTESTYPE @"rawByteType"
#define EXTENSION @"MOV"
#define EXTENSION_JPEG @"jpeg"
#define EXTENSION_JPG @"jpg"
#define EXTENSION_PNG @"png"
#define EXTENSION_GIF @"gif"
#define EXTENSION_TIFF @"tiff"

#define QUERYATTR_MIMETYPE_LOWER @"mimetype"
#define QUERYATTR_MIMETYPE_UPPER @"mimeType"  // as per documentation using context type.

#define SET_IMAGE_NSDATA_USING_DATAWITHCONTENTSOFURL  @"enableImageWithZeroCompression"

@interface KonyMediaGallery : NSObject <UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
	NSDictionary *mediaTypesDict;
	CallBack *onMediaSelect;
    UIImagePickerController *imagePicker;
    id widgetInvoker;
}
@property (nonatomic) float compressionLevel;//BUGFIX 79365:Adding compressionLevel property
@property(nonatomic,retain) id widgetInvoker;
@property(nonatomic, retain) UIImagePickerController *imagePicker;

-(KonyMediaGalleryOutParam *) presentGalleryWithQuery:(NSDictionary *) context;
-(NSArray *) getMediaTypesFromContext: (NSDictionary *) context availableIn:(NSArray *) availableMediatypes;
-(void) showMediaGallery: (UIImagePickerController *) picker;
- (NSDictionary *)getMimeType:(NSString *)mediaType withMediaInfo:(NSDictionary *)mediaInfo;
+ (id)sharedInstance;
- (void)setCallback:(CallBack *)callback andwidgetInvoker:(NSMutableDictionary *)PSP;
@end
