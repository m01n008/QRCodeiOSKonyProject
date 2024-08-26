//
//  ScreenCapturer.h
//  VM
//
//  Created by Sunil Phani Manne on 13/04/13.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ScreenCapturer : NSObject

+(UIImage*)captureScreen:(UIView *)aView IntoRect: (CGRect) rect;
+(UIImage*) captureScreenWithStatusBar: (BOOL) statusBar;
+(void) captureScreenAndSaveToAlbumWithStatusBar: (BOOL) statusBar;
+(void) captureScreenWithStatusBar: (BOOL) statusBar AndSaveToPath: (NSString*) path;
+(void) saveImageInToPhotoAlbum: (UIImage*) image;
+(void) saveImageAsPNG: (UIImage*) image inToPath: (NSString*) path;
+(void) saveImageAsJPEG: (UIImage*) image inToPath: (NSString*) path;
+(void) saveImageAsJPEG: (UIImage*) image inToPath: (NSString*) path withCompressionQuality: (CGFloat) compressionQuality;

+(NSString*) generateAUniqueNameStartingWith: (NSString*) prefix;
@end
