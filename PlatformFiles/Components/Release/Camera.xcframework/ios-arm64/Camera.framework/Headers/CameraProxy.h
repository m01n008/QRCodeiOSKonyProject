//
//  CameraProxy.h
//  VM
//
//  Created by User Kasturi on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/BaseProxy.h>

@interface CameraProxy : BaseProxy

- (void) releaseRawBytes;
-(void)showPreview;
-(void)openCamera;
-(void)closeCamera;
+(NSArray*)getSupportedCameraSources;
-(void)startVideoCapture;
-(void)stopVideoCapture;
@end
