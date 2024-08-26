/*
 *  KonyResourceAccessUtil.h
 *
 *  Created by Ashish on 21/08/14.
 *  Copyright 2008 Konylabs. All rights reserved.
 *
 */

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreLocation/CLLocationManagerDelegate.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreLocation/CLLocationManagerDelegate.h>
#import "KonyTypes.h"
#import "KonyUtil.h"
#import "KonyWrapperDS.h"

typedef void (^completionBlock)(ResourceAccessState accessStatus);



@interface KlLocationManager :CLLocationManager <CLLocationManagerDelegate>
{
    completionBlock handle;
}
-(id)initWithCompletionHandler:(completionBlock)handler;
-(void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status;
@end


@interface KonyResourceAccessUtil : NSObject
{
    
}

+ (void) authorizeKonyResourceAccess:(DeviceResourceType) resourceType completionHandler:(completionBlock)handler;
+ (void) authorizeKonyLocationResourceAccess:(DeviceResourceType) resourceType  withAccessMode:(int) mode completionHandler:(completionBlock)handler;

+ (NSDictionary *) getCameraSettings;
+ (NSDictionary *) getPhotoLibrarySettings;
+ (NSDictionary *) getLocationSettings;

+ (ResourceAccessState) getCameraAuthorizationState;
+ (ResourceAccessState) getAssestsAuthorizationState;
+ (ResourceAccessState) getLocationAuthorizationState;
+ (ResourceAccessState) getContactsAuthorizationState;
+ (ResourceAccessState) getCalendarAuthorizationState;

/** @method getCameraPermissionSettings
 *  @brief Returns the dictionary, which holds the permission status(PermissionTypeDenied,PermissionTypeRestricted,PermissionTypeGranted,PermissionTypeNotSupported) and 'canRequestPermission'[Boolean][All] : Indicates whether developer can request the permissions or not in case of status is PERMISSION _DENIED.
 **/
+ (NSDictionary *) getCameraPermissionSettings;

/** @method getPhotoLibraryPermissionSettings
 *  @brief Returns the dictionary, which holds the permission status(PermissionTypeDenied,PermissionTypeRestricted,PermissionTypeGranted,PermissionTypeNotSupported) and 'canRequestPermission'[Boolean][All] : Indicates whether developer can request the permissions or not in case of status is PERMISSION _DENIED.
 **/
+ (NSDictionary *) getPhotoLibraryPermissionSettings;

/** @method getLocationPermissionSettings
 *  @brief Returns the dictionary, which holds the permission status(PermissionTypeDenied,PermissionTypeRestricted,PermissionTypeGranted,PermissionTypeNotSupported) and 'canRequestPermission'[Boolean][All] : Indicates whether developer can request the permissions or not in case of status is PERMISSION _DENIED.
 **/
+ (NSDictionary *) getLocationPermissionSettings;

/** @method getContactsPermissionSettings
 *  @brief Returns the dictionary, which holds the permission status(PermissionTypeDenied,PermissionTypeRestricted,PermissionTypeGranted,PermissionTypeNotSupported) and 'canRequestPermission'[Boolean][All] : Indicates whether developer can request the permissions or not in case of status is PERMISSION _DENIED.
 **/
+ (NSDictionary *) getContactsPermissionSettings;

/** @method getCameraPermissionSettings
 *  @brief Returns the dictionary, which holds the permission status(PermissionTypeDenied,PermissionTypeRestricted,PermissionTypeGranted,PermissionTypeNotSupported) and 'canRequestPermission'[Boolean][All] : Indicates whether developer can request the permissions or not in case of status is PERMISSION _DENIED.
    
 **/
+ (NSDictionary *) getCalendarPermissionSettings;

/** @method getSiriPermissionSettings
 *  @brief Returns the dictionary, which holds the permission status(PermissionTypeDenied,PermissionTypeRestricted,PermissionTypeGranted,PermissionTypeNotSupported) and 'canRequestPermission'[Boolean][All] : Indicates whether developer can request the permissions or not in case of status is PERMISSION _DENIED.
 
 **/
+ (NSDictionary *)getSiriPermissionSettings;



+ (NSDictionary *)getAudioRecordPermissionSettings;
/** @method getSiriAuthorizationState
 *  @brief Returns the dictionary, which holds the permission status(PermissionTypeDenied,PermissionTypeRestricted,PermissionTypeGranted,PermissionTypeNotSupported) and 'canRequestPermission'[Boolean][All] : Indicates whether developer can request the permissions or not in case of status is PERMISSION _DENIED. Avaliable for Intent Extension from iOS 10 onwards.
 
 **/


+ (ResourceAccessState)getSiriAuthorizationState;

+ (BOOL) isValidResourceType:(DeviceResourceType) resourceType;

+ (BOOL) isValidPlatformResourceType:(ResourceType) resourceType;

+ (BOOL) isValidVocabularyType:(VocabularyStringType) vocabStringType;

@end

