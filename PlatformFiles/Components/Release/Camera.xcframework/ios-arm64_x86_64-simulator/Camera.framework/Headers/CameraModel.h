//
//  CameraModel.h
//  VM
//
//  Created by User Kasturi on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>
#import <CoreComponent/RawBytes.h>
#import <CoreComponent/KonyTypes.h>

#define MAX_IMAGEPROCESSING_TIME    16

typedef enum CameraState
{
    CameraStateInActive = 0,    /** Camera is in progress   */
    CameraStateActive           /** Camera is not in progress   */
}
CameraState;

typedef enum ImageDataRawBytesState
{
    ImageDataRawBytesUnavailable = 0,    /** imageDataRawBytes unavailable   */
    ImageDataRawBytesInProgress,         /** imageDataRawBytes is in progress   */
    ImageDataRawBytesAvailable           /** imageDataRawBytes available */
}ImageDataRawBytesState;

@interface CameraModel : WidgetModel
{
    NSString *focusSkinID;
    NSString *text;    
    id onCapture;
    id onCaptureFailed;
    id onImageSaveFailed;
    CallBack *onFailure;
    RawBytes *rawBytes;
    BOOL enableOverlay;
    NSDictionary *overlayConfig;
    NSDictionary *modalTransitionConfig;
    CameraAccessMode   accessMode;
    CameraImageFormat imageFormat;
    CameraCaptureOrientation    captureOrientation;
    CameraSourceMode            cameraSource;
    CameraCaptureMode           cameraCaptureMode;
    CameraVideoFormat           cameraVideoFormat;
    CameraVideoResolution       videoQualityLevel;
    float                       videoDuration;
    BOOL    nativeUserInterface;
    KonyWidgetContentAlignment contentAlignment;
    int compressionLevel;
    int scaleFactor;
    int maxSideOfTheImage;
    NSString *base64;
    NSDictionary *cameraOptions;
    TransformDataModel *previewTransform;
@private
    NSCondition *imageDataCondition;	/**< Condition used to signal imageDataProcessing post capture */
    CameraState cameraState;
    ImageDataRawBytesState imageDataRawBytesState;
}

@property (nonatomic, retain)   TransformDataModel *previewTransform;
@property (nonatomic,retain)    NSDictionary *modalTransitionConfig;
@property (nonatomic,retain)    NSString *focusSkinID;
@property (nonatomic,retain)    NSString *text;    
@property (nonatomic,retain)    id onCapture;
@property (nonatomic,retain)    id onCaptureFailed;
@property (nonatomic,retain)    id onImageSaveFailed;
@property (nonatomic,retain)    CallBack *onFailure;
@property (nonatomic,retain)    RawBytes *rawBytes;
@property (nonatomic,retain)    NSDictionary *overlayConfig;
@property (nonatomic,assign)    BOOL enableOverlay;
@property (nonatomic,assign)    CameraAccessMode   accessMode;
@property (nonatomic,assign)    CameraImageFormat imageFormat;
@property (nonatomic,assign)    CameraCaptureOrientation    captureOrientation;
@property (nonatomic,assign)    CameraSourceMode            cameraSource;
@property (nonatomic,assign)    CameraCaptureMode           cameraCaptureMode;
@property (nonatomic,assign)    CameraVideoFormat           cameraVideoFormat;
@property (nonatomic,assign)    CameraVideoResolution       videoQualityLevel;
@property (nonatomic,assign)    float                       videoDuration;
@property (nonatomic,assign)    BOOL    nativeUserInterface;
@property (nonatomic,assign)    KonyWidgetContentAlignment contentAlignment;
@property (nonatomic,retain)    NSDictionary *cameraOptions;
@property (nonatomic,assign)    BOOL        showPreviewMode;
@property (nonatomic,assign)    int scaleFactor;
@property (nonatomic,assign)    int compressionLevel;
@property (nonatomic,assign)    int maxSideOfTheImage;
@property (nonatomic,retain)    NSString *base64;

#pragma mark - private setters

-(void) setRawBytesPrivate:(RawBytes *)aRawBytes;
-(NSCondition*) getImageDataCondition;
-(void) clearRawBytes;
-(CameraState) cameraState;
-(void) setCameraState:(CameraState) aCameraState;
-(ImageDataRawBytesState) imageDataRawBytesState;
-(void) setImageDataRawBytesState:(ImageDataRawBytesState) aImageDataRawBytesState;

@end
