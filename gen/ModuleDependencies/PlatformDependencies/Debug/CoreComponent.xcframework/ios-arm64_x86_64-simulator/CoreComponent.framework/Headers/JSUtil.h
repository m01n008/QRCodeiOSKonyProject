//
//  JSUtil.h
//  VM
//
//  Created by Sunil Phani Manne on 2/21/12.
//  Copyright (c) 2012 Sunil Phani Manne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Runtime.h"
#import "CallBack.h"

#define JS_CONSTANTS_NAMESPACE @"constants"
#define JS_FLEX_CONSTANTS_NAMESPACE @"kony.flex"
#define JS_ANIMATION_CONSTANTS_NAMESPACE @"kony.anim"
#define SKIN_CONSTANTS_NAMESPACE @"kony.skin"
#define JS_IMAGE_PROCESSING_CONSTANTS_NAMESPACE @"kony.image"
#define JS_PROCESSING_FILTER_CONSTANTS_NAMESPACE @"kony.filter"
#define JS_NOTIFICATIONSETTING_CONSTANTS_NAMESPACE @"kony.notificationsettings"
#define JS_LOCALNOTIFICATIONS_CONSTANTS_NAMESPACE @"kony.localnotifications"
#define JS_CACHE_STORAGE_POLICIES_CONSTANTS_NAMESPACE @"kony.net.cache"
#define SEGMENT_CONSTANTS_NAMESPACE @"kony.segment"
#define JS_MAP_CONSTANTS_NAMESPACE @"kony.map"
#define JS_CANVAS_CONSTANTS_NAMESPACE @"kony.canvas"
#define JS_AR_CONSTANTS_NAMESPACE @"kony.ar"
#define JS_APPLICATION_CONSTANTS_NAMESPACE @"kony.application"
#define JS_ML_CONSTANTS_NAMESPACE @"kony.ml"
#define JS_OS_RESOURCE_ID @"kony.os"
#define JS_EXTENSION_ID @"kony.siriExtension"
#define JS_LOCATION_ERROR_CODE_CONSTANTS_NAMESPACE @"kony.location"
#define JS_3DTOUCH_CONSTANTS_NAMESPACE @"kony.forcetouch"
#define JS_COLLECTIOVIEW_CONSTANTS_NAMESPACE @"kony.collectionview"
#define JS_DRAGANDDROP_CONSTANTS_NAMESPACE  @"kony.dragdrop"
#define JS_PAYMENT_CONSTANTS_NAMESPACE @"kony.payment"
#define JS_HAPTIC_FEEDBACK_CONSTANTS_NAMESPACE @"kony.hapticFeedback"
#define JS_CUSTOM_HAPTICS_CONSTANTS_NAMESPACE @"kony.haptics"
#define JS_SIGNINWITHAPPLE_CONSTANTS_NAMESPACE @"kony.signinwithapple"
#define JS_MEDIA_AUDIO_SESSION_CONSTANTS_NAMESPACE @"kony.media"

void enableJSFunctionTracing();
void disableJSFunctionTracing();

@interface JSUtil : NSObject

+ (void) registerClasses: (NSArray *) classes;

+ (Runtime*) getSharedJSRuntime;
+ (void) registerJSClassesAndPlatformConstants;
+ (void) registerJSClassesAndPlatformConstantsForRuntime:(Runtime*) workersRuntime;
+ (NSArray*) getAllProperties:(id) cls;
+ (NSArray*) getReadyOnlyProperties: (id) cls;
+ (NSArray*) getInstanceMethods: (id) cls;

+ (void) registerAutoJSClassesAndPlatformConstants;
+ (void) deregisterAutoJSClassesAndPlatformConstants;

+ (BOOL) isAJavaScriptFile:(NSString*) fileName;

+ (NSArray *) convertJSObjectToNativeObject: (NSArray*) externalObj;
+ (id) convertNativeObjectToJSObject: (id) internalObj;

+ (NSArray *) convertJSObjectsToNativeObjects: (NSArray*) externalArray;
+ (NSArray *) convertNativeObjectsToJSObjects: (NSArray*) internalArray;

+ (void*) functionRefFromCallback:(CallBack*) callbackObj;

/**
 @brief Method to set value diretly to the jsobject for the given widget model.
 @discussion This function retrieves the JSObjectRef of given widget model and calls JSObjectSetProperty method on that object.
 @param propName - NSString object consisting the property name to be set on js object.
 @param propValue - Value of the property to be set on jsobject.
 @param wModel - The actual widget model
 @return void.
*/
+ (void) setJSProperty:(NSString*)propName withValue:(id)propValue forModel:(id)wModel;

/**
 @brief Method to retrieve value diretly from the jsobject for the given widget model.
 @discussion This function retrieves the JSObjectRef of given widget model and calls JSObjectGetProperty method on that object.
 @param propName - NSString object consisting the property name to be retrieved on js object.
 @param wModel - The actual widget model
 @return Returns the value from jsobject and converts it into native object.
*/
+ (id) getJSProperty:(NSString*)propName forModel:(id)wModel;
@end
