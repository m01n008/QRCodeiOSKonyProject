//
//  KonyARModel.h
//  AR
//
//  Created by Aravind Macharla on 05/11/19.
//  Copyright © 2019 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>
#import <CoreComponent/CallBack.h>
#import <CoreComponent/KonyTypes.h>
#import <CoreComponent/KonyUtil.h>


#define REFERENCE_IMAGE @"referenceImage"
#define SCALE_VALUE @"scale"
#define OVERLAY @"overlay"
#define OUTPUT_TYPE @"type"
#define SOURCE_NAME @"src"

@interface ImageDetectionConfigModel : NSObject

@property(nonatomic, strong) NSString *referenceImage;
@property(nonatomic)         CGFloat  scale;
@property(nonatomic) KonyARViewDetectionOverlayType overlayType;
@property(nonatomic, strong) NSString *src;

@end

@interface KonyARModel : WidgetModel

@property(nonatomic,strong) NSMutableDictionary *sceneModelEntities;
@property(nonatomic,strong) NSMutableDictionary *sceneConfig;
@property(nonatomic,strong) NSString *placeholderText;
@property(nonatomic,strong) NSString *placeholderSkinID;
@property(nonatomic) KonyARViewDebugOptions debugOptions;
@property(nonatomic) bool activatesCoachingOverlayAutomatically;
@property(nonatomic,strong) id overlay;
@property (nonatomic, retain) CallBack *canSaveExperienceCallback;


@property(nonatomic, strong) NSMutableDictionary *configurationList;
@property(nonatomic) CallBack *imageDetectionCallback;


-(void)startARImageDetection:(NSArray*)configList andCallBack:(CallBack*)callback;
-(void) stopARImageDetection;
-(void)startRendering:(NSDictionary *)arguments;
-(void)stopRendering;
-(void)add:(NSMutableDictionary *)config;
-(void)remove:(NSString *)modelID;
-(void)saveExperience:(NSString *)saveIdentifier completionCallback:(CallBack*)completion;
-(void)loadExperience:(NSString *)saveIdentifier completionCallback:(CallBack*)completion modelQueryCallback:(CallBack*)modelQueryCallback;
-(void)clearExperience:(NSString *)saveIdentifier;

@end

