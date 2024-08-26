//
//  AnimationForGifImages.h
//  CoreComponent
//
//  Created by Aditya Guru on 11/05/20.
//  Copyright © 2020 Aravind Macharla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

NS_ASSUME_NONNULL_BEGIN
/*!
@class AnimationForGifImages

@brief The AnimationForGifImages class

@discussion    This class was designed and implemented to get the animation for image files containing multiple images
@superclass NSObject
*/
@interface AnimationForGifImages : NSObject

/**
@brief  Returns the animation for the  given image
 @description This method acts as an interface, returns an CAKeyFrameAniamtion object for the the image name containing multiple image frames. This method checks if the image file is found in the localised folder.
@param NSString*  the image name whose animation is to be returned
@return returns an animation object with the set of images in the image file to the caller 
*/
+ (CAKeyframeAnimation *) getAnimationForImage: (NSString*) imageName;

/**
@brief  Returns the animation for the  given image by searching it in main bundle
 @description This method searches for the image file in main bundle if image file is not found in the localised folder. Returns the Animation object.
@param NSString*  the image name whose animation is to be returned
@param NSString*  the resource location path
@return returns an animation object with the set of images in the image file
*/
+ (CAKeyframeAnimation *)getAnimationFromMainBundleForImageName:(NSString*) imgName inPath:(NSString *)path;

///* Method to trace the the file to be used based on the screen resolution if available*/
/**
@brief  This method fetches the image with their screen resolution appended to the suffix and returns an animation object
 @description This method searches for the image file's availabilty based on the screen resolution. If not found then proceeds with the default image name.
@param NSString*  the image file's path
 @return returns an animation object with the set of images in the image file
*/
+ (CAKeyframeAnimation *)animationWithScreenResolutionForFileInPath:(NSString *)path;

/**
@brief  This method evaluates the frame animation for the image file
 @description method basically creates the animation object by getting all the frames of the image, calculates the frame duration and delays between the setting of each of the frames.
@note The frame duration,i.e. the time duration between to set of image frames should not be less than 0.011f. If it creeps less than the threshold, then a default value 0.1f is set.
@param NSData*  the image file's data
 @return returns an animation object with the set of images in the image file
*/
+ (CAKeyframeAnimation *)createGIFAnimation:(NSData *)data;
@end

NS_ASSUME_NONNULL_END
