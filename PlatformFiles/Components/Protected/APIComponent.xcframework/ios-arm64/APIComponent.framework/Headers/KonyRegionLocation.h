//
//  KonyGeoLocation.h
//  VM
//
//  Created by Purnachandar on 31/01/17.
//
//
/*
 *   This Class used for Create and Monitoring Geofences.
 */
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreComponent/KonyUtil.h>
#import <CoreComponent/CallBack.h>


    //****** Region Data Constants ********
#define REGION_LOCATION_LATTITUDE @"lat"
#define REGION_LOCATION_LONGITUDE @"lon"
#define REGION_RADIUS @"radius"
#define REGION_ENTRY_EXIT_CALLBACK @"callback"
#define REGION_ID @"geofenceID"
#define REGION_STATE_KEY @"state"
#define REGION_ENTER_STATE @"ENTRY"
#define REGION_EXIT_STATE @"EXIT"
#define REGION_ERROR_STATE @"ERROR"
#define REGION_ERROR_MSG_KEY @"errorMessage"
#define REGION_ERROR_CODE_KEY @"errorCode"
#define REGION_ERROR_INFO_KEY @"errorInfo"

    //****** Error Codes *****
#define ERROR_CODE_DUPLICATE_BOUNDARY_ID 101
#define ERROR_CODE_INVALID_PARAMETERS	102
#define ERROR_CODE_LOCATIONSERVICES_DISABLED	103
#define ERROR_CODE_UNKNOWN_ERROR				104


    // Permision Denied error code and error message
#define ERROR_MSG_PERMISSION_DENIED @"Permission Denied"
#define ERROR_MSG_DUPLICATE_BOUNDARY_ID @"Duplication boundary id"
#define ERROR_MSG_INVALID_PARAMETERS @"Invalida Parameters"
#define ERROR_MSG_UNKNOWN_ERROR	@"Unknown Error"


@interface KonyRegionLocation : NSObject <CLLocationManagerDelegate>
@property (nonatomic,strong) CallBack *globalCallback;
@property (nonatomic,strong) CallBack *errorCallback;

+ (KonyRegionLocation *)sharedKonyRegionLocation;
-(void)clearAllRegions ;
-(void)addRegionsData:(NSArray *)regions;

@end

