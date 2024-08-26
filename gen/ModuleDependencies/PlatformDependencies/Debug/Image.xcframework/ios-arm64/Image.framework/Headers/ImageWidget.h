//
//  ImageWidget.h
//  VM
//
//  Created by Sunil Nimmagadda on 21/02/12.
//  Copyright (c) 2012 Kony Labs. All rights reserved.
//

#import <CoreComponent/Widget.h>
#import <CoreComponent/ViewDrawingDelegate.h>
#import <CoreComponent/KonyWrapperDS.h>
#import <CoreComponent/KonyUtil.h>
#import <CoreComponent/RawBytes.h>
#import "ImageModel.h"
#import <CoreComponent/KonyHighlightHandler.h>
#import <NetworkComponent/KonyHttpRequestDelegate.h>
#import "CustomImageView.h"
//#import "CustomBadge.h"

@interface ImageWidget : Widget <KonyHighlightProtocol,NSURLSessionDataDelegate,KonyHttpRequestDelegate> // Image doesn't do it's own drawing <ViewDrawingDelegate>
{
@public
	IMAGESOURCE imageSource;
    KonyWidgetType widgetType;
    NSURLSessionDataTask *task;
@protected	
	BOOL		isImageAvailable;
@private
    CustomImageView* imageView;
    NSLock *arrayLock;
    BOOL defaultImageSet;
    UIImage *defaultImage;
    id recentSrcObject;
    NSString *src;
}
@property (nonatomic, readwrite, assign)	IMAGESOURCE	imageSource;
@property (nonatomic, readwrite, assign) KonyWidgetType widgetType;
@property (nonatomic, retain)		CustomImageView*	imageView;
@property (nonatomic, assign)		BOOL isImageAvailable;
@property (nonatomic, assign)		BOOL defaultImageSet;
@property (nonatomic, assign)		NSRunLoop*		runLoop;
@property (nonatomic, readwrite, )		id	defaultImageFileName;
@property (nonatomic, readwrite, )		id	imgWhileDownloading;
@property (atomic,readwrite, ) NSMutableArray *dynamicallyUpdatedProperties;
@property (nonatomic, weak) id<UrlImageDelegate> delegate;
@property(nonatomic, strong) NSMutableData *data;
@property(nonatomic, readwrite) NSNumber *zoomValue;
//@property (nonatomic, assign) CustomBadge* badge;

// no skins for image
//-(void) registerAsObserverForSkin:(SkinModel*)skinModel type:(NSString*) aSkin;
-(void) findImageSourceType;
-(void) findImageSourceType:(id) sourceString;
- (void) loadImage;
- (void) loadImage:(id) imageData;
- (void) checkAndRemoveSpinWheel;
-(void) setPropertyRawBytes :(RawBytes*) value;
-(void)applyImageSkin;
@end

