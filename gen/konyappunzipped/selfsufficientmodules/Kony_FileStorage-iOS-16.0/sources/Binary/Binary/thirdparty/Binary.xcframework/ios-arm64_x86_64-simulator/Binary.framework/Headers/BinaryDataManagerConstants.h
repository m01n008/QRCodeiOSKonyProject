//
//  BinaryDataManagerConstants.h
//  BinaryDataManager
//
//  Created by MADP on 27/09/16.
//  Copyright © 2016 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

FOUNDATION_EXPORT int const kDownloadNotStarted;
FOUNDATION_EXPORT int const kDownloadStarted;
FOUNDATION_EXPORT int const kDownloadErrored;
FOUNDATION_EXPORT int const kDownloadPaused;
FOUNDATION_EXPORT int const kFileAvailable;
FOUNDATION_EXPORT int const kUploadInProgress;
FOUNDATION_EXPORT int const kDeleteInProgress;
FOUNDATION_EXPORT int const kDeleteAccepted;
FOUNDATION_EXPORT int const kUploadAccepted;
FOUNDATION_EXPORT int const MAX_PARALLEL_JOBS;


FOUNDATION_EXPORT NSString *const kChunkSize;
FOUNDATION_EXPORT NSString *const kURL;
FOUNDATION_EXPORT NSString *const kFilePath;
FOUNDATION_EXPORT NSString *const kTotalBytesDownloaded;
FOUNDATION_EXPORT NSString *const kTotalFileSize;
FOUNDATION_EXPORT NSString *const kHeaders;
FOUNDATION_EXPORT NSString *const kRequestMethod;
FOUNDATION_EXPORT NSString *const kRequestBody;
FOUNDATION_EXPORT NSString *const kBlobId;
FOUNDATION_EXPORT NSString *const kBlobref;
FOUNDATION_EXPORT NSString *const kDisableIntegrityCheck;

FOUNDATION_EXPORT NSString *const kKonySyncBlobStoreMangager;
FOUNDATION_EXPORT NSString *const kKonyAuthorization;
FOUNDATION_EXPORT NSString *const kClientId;
FOUNDATION_EXPORT NSString *const kSessionID;
FOUNDATION_EXPORT NSString *const kImageColumnName;
FOUNDATION_EXPORT NSString *const kPrimaryKeys;
FOUNDATION_EXPORT NSString *const kObjectName;
FOUNDATION_EXPORT NSString *const kScopeName;

FOUNDATION_EXPORT NSString *const kAuthorization;
FOUNDATION_EXPORT NSString *const kStreaming;
FOUNDATION_EXPORT NSString *const kFileId;
FOUNDATION_EXPORT NSString *const kOnlineDownloadTask;
FOUNDATION_EXPORT NSString *const kEndpointUrl;
FOUNDATION_EXPORT NSString *const kQueryParams;
FOUNDATION_EXPORT NSString *const kFileParams;
FOUNDATION_EXPORT NSString *const kHttpStatusCode;

FOUNDATION_EXPORT NSString *const kRawBytes;
FOUNDATION_EXPORT NSString *const kUploadParams;
FOUNDATION_EXPORT NSString *const kFileName;
FOUNDATION_EXPORT NSString *const kRedirectionTemplate;
FOUNDATION_EXPORT NSString *const kTemplateString;
FOUNDATION_EXPORT NSString *const kFileContent;

FOUNDATION_EXPORT NSString *const kOnChunkDownloadCompleted;
FOUNDATION_EXPORT NSString *const kOnStreamDownloadCompleted;
FOUNDATION_EXPORT NSString *const kOnFileDownloadStarted;
FOUNDATION_EXPORT NSString *const kOnDownloadFailure;
FOUNDATION_EXPORT NSString *const kOnFileDownloadCompleted;

FOUNDATION_EXPORT NSString *const kOnBytesUploadStarted;
FOUNDATION_EXPORT NSString *const kOnByteChunkUploadCompleted;
FOUNDATION_EXPORT NSString *const kOnBytesUploadCompleted;
FOUNDATION_EXPORT NSString *const kOnUploadFailure;

FOUNDATION_EXPORT NSString *const kTemplateStart;
FOUNDATION_EXPORT NSString *const kTemplateEnd;

FOUNDATION_EXPORT NSString *const kHMACAlgorithm;
FOUNDATION_EXPORT NSString *const kAWS4Request;
FOUNDATION_EXPORT NSString *const kAccessKeyID;
FOUNDATION_EXPORT NSString *const kSecretAccessKey;
FOUNDATION_EXPORT NSString *const kRegionName;
FOUNDATION_EXPORT NSString *const kBucketName;
FOUNDATION_EXPORT NSString *const kObject_Name;
FOUNDATION_EXPORT NSString *const kServiceName;
FOUNDATION_EXPORT NSString *const kCredential;
FOUNDATION_EXPORT NSString *const kSignedHeders;
FOUNDATION_EXPORT NSString *const kSignature;
FOUNDATION_EXPORT NSString *const kAWSEncodedContentHeader;
FOUNDATION_EXPORT NSString *const kAWSUploadContentTypeHeader;
FOUNDATION_EXPORT NSString *const kAWSHostHeader;
FOUNDATION_EXPORT NSString *const kAWSXAmazonDateHeader;
FOUNDATION_EXPORT NSString *const kAuthorizationHeader;
FOUNDATION_EXPORT NSString *const kAuthParameters;
FOUNDATION_EXPORT NSString *const kBinaryOctetStream;
FOUNDATION_EXPORT NSString *const kTimeStampFormat;
FOUNDATION_EXPORT NSString *const kDateFormat;
FOUNDATION_EXPORT NSString *const kHost;
FOUNDATION_EXPORT NSString *const kXAmazonDate;
FOUNDATION_EXPORT NSString *const kXAmzContentSHA256;
FOUNDATION_EXPORT NSString *const kAdapterTemplate;
FOUNDATION_EXPORT NSString *const kAuth;
FOUNDATION_EXPORT NSString *const kUploadMode;
FOUNDATION_EXPORT NSString *const kHttpMethod;
FOUNDATION_EXPORT NSString *const kUploadModeMultipart;
FOUNDATION_EXPORT NSString *const kUploadModeBinary;
FOUNDATION_EXPORT NSString *const kContentType;
FOUNDATION_EXPORT NSString *const kHMACDigest;
FOUNDATION_EXPORT NSString *const kEmptyString;
FOUNDATION_EXPORT NSString *const kContext;
FOUNDATION_EXPORT NSString *const kMiddlewareDomain;
FOUNDATION_EXPORT NSString *const kTemplateParamDomain;
FOUNDATION_EXPORT NSString *const kTemplateParamRelativePath;
FOUNDATION_EXPORT NSString *const kOptions;

@interface BinaryDataManagerConstants : NSObject

@end
