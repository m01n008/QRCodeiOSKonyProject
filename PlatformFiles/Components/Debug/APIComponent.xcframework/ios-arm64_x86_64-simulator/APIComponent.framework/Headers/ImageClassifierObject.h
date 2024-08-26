//
//  ImageClassifierObject.h
//  APIComponent
//
//  Created by Sneha Kolukuluri on 25/10/19.
//  Copyright © 2019 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/CallBack.h>
#import <CoreComponent/KonyTypes.h>
#import <Vision/Vision.h>
#import <CoreComponent/RawBytes.h>

API_AVAILABLE(ios(11.0))
@interface ImageClassifier : NSObject
{
    VNCoreMLRequest *vnmlrequest;
}

@property (nonatomic)    id modelPath;
@property (nonatomic)    KonyMLModelSourcePathType modelPathSource;
@property (nonatomic)    CallBack *onSuccess;
@property (nonatomic)    CallBack *onFailure;
@property (nonatomic)    CGSize modelInputSize;

/** @method initWithmodelPath
 *  @brief Created imageclassifier object for given model config parameters.
 *  @param givenModelPath : This parameter consists of full path of mlmodel or only model name if mlmodel is in bundle and can also take Kony io file object.
 *  @param givenModelPathSource : This parameter specifies whether model is in bundle or as a file.
 *  @param givenModelInputSize : This parameter specifies the size of image to be converted as per mlmodel.
 *  @param onSuccessCallback : Callback called when image is classified and result delegate is called.
 *  @param onFailureCallback : Callback called when image rawbytes are not valid or when recognizeImage is called after releaseresource is done or if image processing is failed.
 *  @returns ImageClassifierObject.
 *  **/
- (id)initWithmodelPath:(id)givenModelPath modelPathSource:(KonyMLModelSourcePathType)givenModelPathSource modelInputSize:(CGSize)givenModelInputSize onSuccesHandler:(CallBack *)onSuccessCallback onFailureHandler:(CallBack *)onFailureCallback;


/** @method recognizeImage
 *  @brief Calls recognizing image api on imageclassifier object.
 *  @param rawbytes : This parameter is the input image given as rawbytes for image classification.
 *  @returns nil.
 *  **/
-(void)recognizeImage:(RawBytes*)rawbytes;


/** @method releaseResource
 *  @brief Called to release native objects created in imageclassifier object class.
 *  @returns nil.
 *  **/
-(void)releaseResource;

-(void)recognizeUIImage:(UIImage *)image;
@end
