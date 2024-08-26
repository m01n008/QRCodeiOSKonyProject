//
//  KonySyncV2.h
//  KonySyncV2
//
//  Created by MADP on 27/09/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for KonySyncV2.
FOUNDATION_EXPORT double KonySyncV2VersionNumber;

//! Project version string for KonySyncV2.
FOUNDATION_EXPORT const unsigned char KonySyncV2VersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <KonySyncV2/PublicHeader.h>

//Facade layer classes
#import <KonySyncV2/SDKObjectSync.h>
#import <KonySyncV2/ApplicationSync.h>
#import <KonySyncV2/SDKObjectServiceSync.h>

//Core layer classes
#import <KonySyncV2/SyncEngine.h>
#import <KonySyncV2/KSSDKObject.h>
#import <KonySyncV2/KSSDKObjectService.h>

//Constants classes
#import <KonySyncV2/KSConstants.h>
#import <KonySyncV2/KSPublicConstants.h>

//Stats classes
#import <KonySyncV2/Stats.h>
#import <KonySyncV2/SyncStats.h>

//Error classes
#import <KonySyncV2/KSErrorDomains.h>
#import <KonySyncV2/KSErrorMessages.h>
#import <KonySyncV2/OfflineObjectsError.h>

//Miscellaneous classes
#import <KonySyncV2/KSSyncUtils.h>
#import <KonySyncV2/ISyncListener.h>
#import <KonySyncV2/KSSyncMetaInfo.h>
#import <KonySyncV2/KSDownloadResponseMetadata.h>
#import <KonySyncV2/KSSDKUploadRequestMetadata.h>
#import <KonySyncV2/KSObjectDownloadResponseMetadata.h>

