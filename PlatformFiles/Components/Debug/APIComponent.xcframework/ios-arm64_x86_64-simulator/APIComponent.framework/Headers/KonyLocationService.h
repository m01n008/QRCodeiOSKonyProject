//
//  KonyLocationService.h
//  APIComponent
//
//  Created by Aravind Macharla on 12/04/18.
//  Copyright © 2018 Kony Labs. All rights reserved.
//

#ifndef KonyLocationService_h
#define KonyLocationService_h
#endif /* KonyLocationService_h */

#import <CoreLocation/CoreLocation.h>
#import <CoreLocation/CLLocationManagerDelegate.h>
#import <CoreComponent/CallBack.h>
#import <CoreComponent/KonyWrapperDS.h>

KonyLocationOutParam*    konyFindLocation(void);

@interface KonyLocationFinder : NSObject <CLLocationManagerDelegate>
{
    CLLocationManager*        konyLocationManager;
    CLLocation*                previousLocation;
    CLLocation*                currentLocation;
    BOOL                    isLocationFound, receivedError;
    
@public
    volatile double            latitude;
    volatile double            longitude;
    NSString*                cellId;
    double                  hAccuracy;
    double                  vAccuracy;
    double                  altitude;
    double                  speed;
    double                  heading;
    int                     maxAge;
    BOOL                    oneTimeRequest;
    CallBack              *onSuccessCallBack;
    CallBack              *onFailureCallBack;
    double                  locationID;
    
}

@property (nonatomic,retain) CLLocationManager*        konyLocationManager;
@property (nonatomic,retain) CLLocation*            previousLocation;
@property (nonatomic,retain) CLLocation*            currentLocation;
@property (nonatomic,retain) NSString*                cellId;
@property (nonatomic, assign)         volatile double        latitude;
@property (nonatomic, assign)         volatile double        longitude;
@property (nonatomic, assign)         BOOL                    isLocationFound,receivedError;
@property (nonatomic) NSNumber*                errorCode;
@property (nonatomic) NSString*                errorMsg;
@property (nonatomic, strong) NSTimer*                locationInfoTimer;
@property (nonatomic, strong) NSDate                  *prevTimeStamp;
@property (nonatomic, assign) double                  hAccuracy;
@property (nonatomic, assign) double                  vAccuracy;
@property (nonatomic, assign) double                  altitude;
@property (nonatomic, assign) double                  speed;
@property (nonatomic, assign) double                  heading;
@property (nonatomic, assign) int                     maxAge;
@property (nonatomic, assign) BOOL                    oneTimeRequest;
@property (nonatomic, retain) CallBack              *onSuccessCallBack;
@property (nonatomic, retain) CallBack              *onFailureCallBack;
@property (nonatomic, assign) double                  locationID;


//-(id) initWithOptions:(CallBack*) onSuccCB OnFailureCallBack:(CallBack*) onFailCB EnableHighAccuracy:(BOOL) enableHighAccuracy
//              TimeOut:(int) tOut MaxAge:(int) mAge OneTimeRequest:(BOOL) oneTimeReq AuthorizationType:(int) authorizationType;

//-(id) initWithOptions:(CallBack*) onSuccCB OnFailureCallBack:(CallBack*) onFailCB EnableHighAccuracy:(BOOL) enableHighAccuracy
//              TimeOut:(int) tOut MaxAge:(int) mAge OneTimeRequest:(BOOL) oneTimeReq;

-(id) initWithOptions:(NSMutableDictionary*) option OnSuccessCallBack:(CallBack*) onSuccCB OnFailureCallBack:(CallBack*) onFailCB OneTimeRequest:(BOOL) oneTimeReq;
-(id) initWithOptions:(NSMutableDictionary*) option OnCallBack:(CallBack*) onCallBack;
- (void) stopFindingLocation;

@end


@interface KonyPhoneLocation : NSObject <CLLocationManagerDelegate>
{
    CLLocationManager*        konyLocationManager;
    BOOL                    isLocationFound, receivedError;
    
@public
    volatile double            latitude;
    volatile double            longitude;
    NSString*                cellId;
}

@property (nonatomic,retain) CLLocationManager*        konyLocationManager;
@property (nonatomic,retain) NSString*                cellId;
@property (nonatomic, assign) volatile double        latitude;
@property (nonatomic, assign) volatile double        longitude;
@property (nonatomic, assign) BOOL                    isLocationFound,receivedError;
@property (nonatomic) NSNumber*                errorCode;
@property (nonatomic) NSString*                errorMsg;

- (id) initFinder;
- (BOOL) startFindingLocation;
- (void) stopFindingLocation;
- (void) discardLocationManager;

@end

@interface WatchLocationManger : NSObject

@property (nonatomic) NSMutableDictionary*    objectMap;

-(double) addObject:(id) anObject;
-(void) removeAllObjects;
-(void) removeObject:(double) anObjectId;

@end
