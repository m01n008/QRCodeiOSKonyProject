//
//  JSCamera.h
//  VM
//
//  Created by User on 29/045/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <CoreComponent/RuntimeObject.h>
#import <CoreComponent/JSWidget.h>
#import "CameraProxy.h"
#import <CoreComponent/JSStaticAPI.h>

/** Proxy object which we will registering as "Camera" to the Javscript world */

@interface JSCamera : JSWidget <JSStaticAPI>{
    
}
-(NSArray*) getSupportedCameraSources;
-(void)takePicture;
-(void)closeCamera;
-(void)startVideoCapture;
-(void)stopVideoCapture;
@end
