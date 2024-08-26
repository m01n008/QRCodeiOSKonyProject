#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSFileHandle_symbols(JSContext*);
@protocol NSFileHandleInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSData * availableData;
JSExportAs(initWithFileDescriptorCloseOnDealloc,
-(id) jsinitWithFileDescriptor: (int) fd closeOnDealloc: (BOOL) closeopt );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
JSExportAs(readDataToEndOfFileAndReturnError,
-(NSData *) jsreadDataToEndOfFileAndReturnError: (JSValue *) error );
JSExportAs(readDataUpToLengthError,
-(NSData *) jsreadDataUpToLength: (NSUInteger) length error: (JSValue *) error );
JSExportAs(writeDataError,
-(BOOL) jswriteData: (NSData *) data error: (JSValue *) error );
JSExportAs(seekToOffsetError,
-(BOOL) jsseekToOffset: (unsigned long long) offset error: (JSValue *) error );
JSExportAs(truncateAtOffsetError,
-(BOOL) jstruncateAtOffset: (unsigned long long) offset error: (JSValue *) error );
JSExportAs(synchronizeAndReturnError,
-(BOOL) jssynchronizeAndReturnError: (JSValue *) error );
JSExportAs(closeAndReturnError,
-(BOOL) jscloseAndReturnError: (JSValue *) error );
@end
@protocol NSFileHandleClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol NSFileHandleNSFileHandleCreationCategoryInstanceExports<JSExport>
@end
@protocol NSFileHandleNSFileHandleCreationCategoryClassExports<JSExport>
+(id) fileHandleForReadingAtPath: (NSString *) path ;
+(id) fileHandleForWritingAtPath: (NSString *) path ;
+(id) fileHandleForUpdatingAtPath: (NSString *) path ;
JSExportAs(fileHandleForReadingFromURLError,
+(id) jsfileHandleForReadingFromURL: (NSURL *) url error: (JSValue *) error );
JSExportAs(fileHandleForWritingToURLError,
+(id) jsfileHandleForWritingToURL: (NSURL *) url error: (JSValue *) error );
JSExportAs(fileHandleForUpdatingURLError,
+(id) jsfileHandleForUpdatingURL: (NSURL *) url error: (JSValue *) error );
+(NSFileHandle *) fileHandleWithStandardInput;
+(NSFileHandle *) fileHandleWithStandardOutput;
+(NSFileHandle *) fileHandleWithStandardError;
+(NSFileHandle *) fileHandleWithNullDevice;
@end
@protocol NSFileHandleNSFileHandleAsynchronousAccessCategoryInstanceExports<JSExport>
@property (getter=getJsReadabilityHandler,setter=setJsReadabilityHandler:) JSValue* jsreadabilityHandler;
@property (getter=getJsWriteabilityHandler,setter=setJsWriteabilityHandler:) JSValue* jswriteabilityHandler;
-(void) readInBackgroundAndNotifyForModes: (NSArray *) modes ;
-(void) readInBackgroundAndNotify;
-(void) readToEndOfFileInBackgroundAndNotifyForModes: (NSArray *) modes ;
-(void) readToEndOfFileInBackgroundAndNotify;
-(void) acceptConnectionInBackgroundAndNotifyForModes: (NSArray *) modes ;
-(void) acceptConnectionInBackgroundAndNotify;
-(void) waitForDataInBackgroundAndNotifyForModes: (NSArray *) modes ;
-(void) waitForDataInBackgroundAndNotify;
@end
@protocol NSFileHandleNSFileHandleAsynchronousAccessCategoryClassExports<JSExport>
@end
@protocol NSFileHandleNSFileHandlePlatformSpecificCategoryInstanceExports<JSExport>
@property (readonly) int fileDescriptor;
JSExportAs(initWithFileDescriptor,
-(id) jsinitWithFileDescriptor: (int) fd );
@end
@protocol NSFileHandleNSFileHandlePlatformSpecificCategoryClassExports<JSExport>
@end
@protocol NSFileHandleAnonCategoryInstanceExports<JSExport>
@property (readonly) unsigned long long offsetInFile;
-(NSData *) readDataToEndOfFile;
-(NSData *) readDataOfLength: (NSUInteger) length ;
-(void) writeData: (NSData *) data ;
-(unsigned long long) seekToEndOfFile;
-(void) seekToFileOffset: (unsigned long long) offset ;
-(void) truncateFileAtOffset: (unsigned long long) offset ;
-(void) synchronizeFile;
-(void) closeFile;
@end
@protocol NSFileHandleAnonCategoryClassExports<JSExport>
@end
@protocol NSPipeInstanceExports<JSExport>
@property (readonly,retain) NSFileHandle * fileHandleForReading;
@property (readonly,retain) NSFileHandle * fileHandleForWriting;
@end
@protocol NSPipeClassExports<JSExport>
+(NSPipe *) pipe;
@end
#pragma clang diagnostic pop