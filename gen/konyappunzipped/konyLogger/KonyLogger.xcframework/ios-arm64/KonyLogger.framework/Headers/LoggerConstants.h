//
//  LoggerConstants.h
//  Logger
//
//  Created by Harshini Bonam on 26/08/16.
//  Copyright © 2016 kony. All rights reserved.
//

/**
 * Various Constants used across the Logger
 */

#import <Foundation/Foundation.h>

/**
 * When specifying custom time zone, user can specify timezone as UTC+HH:MM.
 * This number is the minimum valid value for HH part.
 */
extern NSInteger const MIN_HOURS_DELTA;

/**
 * When specifying custom time zone, user can specify timezone as UTC+HH:MM.
 * This number is the maximum valid value for HH part.
 */
extern NSInteger const MAX_HOURS_DELTA;

/**
 * When specifying custom time zone, user can specify timezone as UTC+HH:MM.
 * This number is the minimum valid value for MM part.
 */
extern NSInteger const MIN_MINUTES_DELTA;

/**
 * When specifying custom time zone, user can specify timezone as UTC+HH:MM.
 * This number is the maximum valid value for MM part.
 */
extern NSInteger const MAX_MINUTES_DELTA;

/**
 * For log rotation, user defines max size of log files.
 * That number needs to have a logically meaningful value.
 */
extern NSInteger const MIN_LOGFILE_SIZE_BYTES;

/**
 * There needs to be a limit on the length of the name being used as
 * a prefix for log files, else PathTooLong error/exception may get hit.
 */
extern NSInteger const MAX_LOGFILE_PREFIX_LENGTH;

/**
 * For log rotation, user defines max number of files to be retained.
 * That number needs to have a logically meaningful value.
 */
extern NSInteger const MIN_NUMBER_LOGFILES;

/**
 * LogFlushr triggers when either the size of accumulated logs
 * or the number of LogStatement's exceeds a threshold.
 * Meaningful threshold needs to be defined for size of accumulated logs.
 */
extern NSInteger const SIZE_OF_LOGS_IN_MEMORY;

/**
 * LogFlushr triggers when either the size of accumulated logs
 * or the number of LogStatement's exceeds a threshold.
 */
extern NSInteger const COUNT_OF_LOGS_IN_MEMORY;

/**
 * A meaningful default for the type of persistor
 */
extern NSInteger const FILE_LOG_PERSISTOR;

/**
 * A meaningful default for the type of persistor
 */

extern NSInteger const CONSOLE_LOG_PERSISTOR;

/**
 * A meaningful default for the type of persistor
 */

extern NSInteger const NETWORK_LOG_PERSISTOR;

/**
 * A meaningful default for Logfile name prefix if user chooses default configurations
 */
extern NSString *const DEFAULT_LOG_PREFIX;

/**
 * Extension for log files
 */
extern NSString *const LOG_FILE_EXTENSION;

/**
 * number of available persisters
 */
extern NSInteger const PERSISTOR_AVAILABLE;

/**
 * Tag for Logger
 */
extern NSString *const TAG;

extern NSString *const DEFAULT_iOS_PATH;

extern NSString *const kType;
extern NSString *const kValue;
extern NSString *const kMinValue;
extern NSString *const kMaxValue;

/**
 * Logger Config constants
 */
extern NSString *const kLoggerConfig;
extern NSString *const koverrideConfig;
extern NSString *const kAppInfo;
extern NSString *const kAppSessionId;
extern NSString *const kAppID;
extern NSString *const kAppVersion;
extern NSString *const kFormatterConfig;
extern NSString *const kPropertiesFormatterConfigTimeZone;
extern NSString *const kPropertiesFormatterConfigTimeFormat;
extern NSString *const kFilterConfig;
extern NSString *const kFilterConfigLogLevel;
extern NSString *const kAccumulatorConfig;
extern NSString *const kAccumulatorConfigBytesLimit;
extern NSString *const kAccumulatorConfigStatementsCountLimit;
extern NSString *const kPersistorList;
extern NSString *const kPersistorActivationList;
extern NSString *const kPersistorConfig;
extern NSString *const kPersistorErrorCallback;
extern NSString *const kLogStatements;
extern NSString *const kLogListener;

extern NSString *const kLoggerConfigType;
extern NSString *const kOverrideConfigType;
extern NSString *const kAppInfoType;
extern NSString *const kAppSessionIdType;
extern NSString *const kAppIDType;
extern NSString *const kAppVersionType;
extern NSString *const kFormatterConfigType;
extern NSString *const kPropertiesFormatterConfigTimeZoneType;
extern NSString *const kPropertiesFormatterConfigTimeFormatType;
extern NSString *const kFilterConfigType;
extern NSString *const kFilterConfigLogLevelType;
extern NSString *const kAccumulatorConfigType;
extern NSString *const kAccumulatorConfigBytesLimitType;
extern NSString *const kAccumulatorConfigStatementsCountLimitType;

extern NSUInteger const kFilterLogLevelMin;
extern NSUInteger const kFilterLogLevelMax;
extern NSUInteger const kAccumulatorBytesLimitMin;
extern NSUInteger const kAccumulatorStatementsCountLimitMin;

/**
 * Log level string constants
 */
extern NSString *const kLogLevelAll;
extern NSString *const kLogLevelTrace;
extern NSString *const kLogLevelDebug;
extern NSString *const kLogLevelInfo;
extern NSString *const kLogLevelWarn;
extern NSString *const kLogLevelError;
extern NSString *const kLogLevelFatal;
extern NSString *const kLogLevelOff;
extern NSString *const kLogLevelNone;

/**
 * Persister Config constants
 */
extern NSString *const kPersisterType;
extern NSString *const kProperties;
extern NSString *const kPropertiesMaxLogFiles;
extern NSString *const kPropertiesMaxFileSize;
extern NSString *const kPropertiesDumpLocation;
extern NSString *const kPropertiesArchiverBufferSize;
extern NSString *const kPropertiesLogServerURL;
extern NSString *const kPropertiesLogFileNamePrefix;

extern NSString *const kPersisterTypeType;
extern NSString *const kPropertiesType;
extern NSString *const kPropertiesMaxLogFilesType;
extern NSString *const kPropertiesMaxFileSizeType;
extern NSString *const kPropertiesDumpLocationType;
extern NSString *const kPropertiesArchiverBufferSizeType;
extern NSString *const kPropertiesLogServerURLType;
extern NSString *const kPropertiesLogFileNamePrefixType;

extern NSUInteger const kPropertiesMaxLogFileMin;
extern NSUInteger const kPropertiesMaxFileSizeMin;
extern NSUInteger const kPropertiesPrefixLengthMax;
extern NSUInteger const kPropertiesMinBufferSizeDefined;

extern NSUInteger const kPropertiesPrefixLengthMin;
extern NSUInteger const kPersisterTypeMin;
extern NSUInteger const kPersisterTypeMax;

/**
 * response headers constant
 */

extern NSString *const kDeveiceLogLevelHeader;

/**
 * authorisation header constant for network persistor
 */
extern NSString *const KONY_FABRIC_AUTHORIZATION_HEADER;

/**
 * requestId  header constant for network persistor
 */
extern NSString *const KONY_FABRIC_REQUESTID_HEADER;


/**
 * network persister log time format constant
 */
extern NSString *const NETWORK_TIMEFORMAT;

/**
 * Log Format constants
 */
extern NSString *const kLogFormatMessage;
extern NSString *const kLogFormatThreadInfo;
extern NSString *const kLogFormatFileName;
extern NSString *const kLogFormatClassName;
extern NSString *const kLogFormatMethodName;
extern NSString *const kLogFormatLineNo;

/**
 *Persistor Queue Type constants
 */

extern int const kSerialQueue;
extern int const kConcurrentQueue;
extern int const kClassNameOffset;
extern int const kMethodNameOffset;
extern int const kThreadStackOffset;

/**
 * Constants for logger configuration
 */
extern NSString *const kFramework;
extern NSString *const kFrameworks;
extern NSString *const kActivatePersistors;
extern NSString *const kConsolePersistor;
extern NSString *const kFilePersistor;
extern NSString *const kNetworkPersistor;
@interface LoggerConstants :NSObject

@end
