//
//  CameraWidget.h
//  VM
//
//  Created by User  on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/Widget.h>

#import <CoreComponent/ViewDrawingDelegate.h>
#import <CoreComponent/KonyWrapperDS.h>
#import "CameraModel.h"
#import <CoreComponent/FormWidget.h>
#import <AssetsLibrary/AssetsLibrary.h>


#define CAMERA_ERROR_TITLE_DEFAULT_VALUE    @"Can't access camera"
#define CAMERA_ERROR_MSG_DEFAULT_VALUE      @"The camera is unavailable!" 
#define CAMERA_ERROR_OK_DEFAULT_VALUE       @"OK"

#define CAMERA_ERROR_TITLE_KEY              @"platform.camera.error.unavialable.title"
#define CAMERA_ERROR_MSG_KEY                @"platform.camera.error.unavialable.msg"
#define CAMERA_ERROR_OK_KEY                 @"platform.camera.error.unavialable.ok"

#define CAMERA_IMAGE_DATETIME(x)            [NSString stringWithFormat:@"%@ateTime",x]
#define CAMERA_IMAGE_EXIF_VERSION(x)        [NSString stringWithFormat:@"%@xifVersion",x]
#define CAMERA_IMAGE_WIDTH                  @"width"
#define CAMERA_IMAGE_HEIGHT                 @"height"
#define CAMERA_IMAGE_ORIENTATION            @"orientation"
#define CAMERA_IMAGE_TIFF                   @"{TIFF}"
#define CAMERA_IMAGE_EXIF                   @"{Exif}"
#define CAMERA_IMAGE_DATETIMEINMILLISECONDS @"dateTimeInMilliSeconds"
#define IMAGE_PICKER_CONTROLLER_METADATA    @"UIImagePickerControllerMediaMetadata"




/** Image capture/display mode */
typedef enum
{
    KonyImageOrientationLandscape = 1,	/**< Landscape mode - corresponds to UIImageOrientationUp / Landscape Left */
    KonyImageOrientationPortrait = 2	/**< Portrait mode - corresponds to UIImageOrientationRight / PortraitUp */
}KonyImageOrientationMode;


@class RawBytes;
@class	ZoomControl;
@class TimerControl;
@class BigButtonControl;
@class KonyCameraControlBar;
@class KonyCustomButtonBase;

#define KONYCAMERA_WIDGETALIGNMENT 5	/**< center middle alignment for Kony Camera Button */
#define SCALE_FACTOR_FOR_IMAGE	80		/**< 10(one tenth of actual image size) to 100 (complete image size) */
#define SIZEOF_LENGTHIER_SIDE   420		/**< 420(screen size) - max supported by device	*/
#define COMPRESSION_LEVEL		70		/**< 0(minimum compression) to 100 (maximum compression) */



@interface CameraWidget : Widget <ViewDrawingDelegate,KonyWidgetProtocol,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
{
@private
    UIImagePickerController *cameraController;					/**< internal handler all camera controls */
	KonyCustomButtonBase		*iButton;							/**< Camera Button Control */
	KonyCameraControlBar	*iCameraControlBar;					/**< Camera Control bar */
	UIView					*masterOverlayView;					/**< Masteroverlay view where all controls are added */
	NSArray					*extarnalSettingsArray;				/**< settings - properties as set by external apps  */
	float					 imgScaleValue;						/**< value corresponding to resolution/max size of the image */
	float					 sizeOfLengthierSide;				/**< size of lenghtier side in resized image */
	float					 compressionLevel;					/**< compression applied to jpeg image */
	float					 maxSizeForCurrentDevice;			/**< maximum size for current device */
	CameraCaptureOrientation    captureOrientation;				/**< image capture/display mode - default,Landscape,portrait */
    NSMutableDictionary         *widgetContent;
    UIDeviceOrientation         currentDeviceOrientation;       /**< orientation call back will be called for change in orientation angle.. to validate the perfect orientation cange, initialized in start camera method.  */
    KonyLayoutContainerView *overlayView;
    UIView                  *layoutOrientView;
@public	
	BOOL					cameraLoaded;						/**< Status used to indicate camera in use or not */
	CameraAccessMode		cameraAccessMode;                   /**< if this  flag is enabled, image is stored to disk; default is to true */
    BOOL   isNormalState;                                       /**< distinguishes b/w selected and normal state    */
    BOOL   tapAnyWhereValue;
    BOOL   isObserversRemoved;
    BOOL   isCamButtonClicked;
    BOOL   recordingInProgress;
    BOOL   multiSnapSupport;
}

@property (nonatomic,strong) NSMutableDictionary *widgetContent;
@property (nonatomic,assign) BOOL   tapAnyWhereValue;
@property (nonatomic,strong) UIView                  *layoutOrientView;
@property (nonatomic,strong) KonyLayoutContainerView *overlayView;
@property (nonatomic, retain) ALAssetsLibrary *library;
@property(nonatomic,assign, getter = isRecordingInProgress) BOOL recordingInProgress;
@property(nonatomic) BOOL multiSnapSupport;
// For storing metadata related to when it is captured from camera
@property (nonatomic,strong) NSMutableDictionary     *imageMetaData;


/* KonyCameraController (public) methods */
-(void)transformOverlayFormForiPhone:(UIDeviceOrientation)deviceOrientation;
-(void)transformForLandScapeOrientation:(UIDeviceOrientation)deviceOrientation;
-(void)updateInterfaceOrientation;
-(void)takeKonyPicture;
-(void) stopCamera;
-(UIImagePickerController*) getCameraController;
-(CameraCaptureOrientation) getCaptureOrientation;
-(UIView*) getMasterOverlayView;
-(FormModel*)getOverlayFormModel;
-(void)setFlashMode;
-(void)setupCamera;
-(void)releaseCameraSettings;
-(void) recreateCameraControls;
-(void)removeObservers;
-(void)setModalTransitionStyleForCamera;
-(void)resetWindowBackgroundColor;
-(void)setLandscapeCoordinatesForOverlayViews;
-(void)updateInterfaceOrientationForIphone:(FormModel*)overlayModel interfaceOrientation:(UIInterfaceOrientation)currentFormControllerInterfaceOrientation deviceOrientation:(UIDeviceOrientation)deviceOrientation;



/* Image related utility funcitons - can be moved altogather to different object */
// TODO : move these to seperate file (image utilities)
- (UIImage*)imageByCropping:(UIImage *)imageToCrop toRect:(CGRect)rect;
- (UIImage*) zoomImage:(UIImage*) image alongX:(float)zoomValueX alongY:(float)zoomValueY;

-(void)onOrientationForiPad:(UIDeviceOrientation)deviceOrientation frmModel:(FormModel*)frmModel;

-(BOOL)setCameraSource:(NSNumber*)cameraSourceObj;
-(BOOL)setCameraCaptureMode:(NSNumber*)captureModeobj;
-(void)setVideoDuration:(NSNumber*)videoDurationForRecObj;
-(void)setVideoQualityLevel:(NSNumber*)videoQualityResolutionObj;
+(NSArray*)getSupportedCameraSources;
-(void)startVideoCapture;
-(void)stopVideoCapture;
-(KonyCameraControlBar*)getKonyCameraControlBar;
@end

