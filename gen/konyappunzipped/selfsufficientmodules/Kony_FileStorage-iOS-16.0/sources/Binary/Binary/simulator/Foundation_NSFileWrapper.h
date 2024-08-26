#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSFileWrapper_symbols(JSContext*);
@protocol NSFileWrapperInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (getter=isDirectory,readonly) BOOL directory;
@property (getter=isRegularFile,readonly) BOOL regularFile;
@property (getter=isSymbolicLink,readonly) BOOL symbolicLink;
@property (copy) NSString * preferredFilename;
@property (copy) NSString * filename;
@property (copy) NSDictionary * fileAttributes;
@property (readonly,copy) NSData * serializedRepresentation;
@property (readonly,copy) NSDictionary * fileWrappers;
@property (readonly,copy) NSData * regularFileContents;
@property (readonly,copy) NSURL * symbolicLinkDestinationURL;
JSExportAs(initWithURLOptionsError,
-(id) jsinitWithURL: (NSURL *) url options: (NSFileWrapperReadingOptions) options error: (JSValue *) outError );
JSExportAs(initDirectoryWithFileWrappers,
-(id) jsinitDirectoryWithFileWrappers: (NSDictionary *) childrenByPreferredName );
JSExportAs(initRegularFileWithContents,
-(id) jsinitRegularFileWithContents: (NSData *) contents );
JSExportAs(initSymbolicLinkWithDestinationURL,
-(id) jsinitSymbolicLinkWithDestinationURL: (NSURL *) url );
JSExportAs(initWithSerializedRepresentation,
-(id) jsinitWithSerializedRepresentation: (NSData *) serializeRepresentation );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) inCoder );
-(BOOL) matchesContentsOfURL: (NSURL *) url ;
JSExportAs(readFromURLOptionsError,
-(BOOL) jsreadFromURL: (NSURL *) url options: (NSFileWrapperReadingOptions) options error: (JSValue *) outError );
JSExportAs(writeToURLOptionsOriginalContentsURLError,
-(BOOL) jswriteToURL: (NSURL *) url options: (NSFileWrapperWritingOptions) options originalContentsURL: (NSURL *) originalContentsURL error: (JSValue *) outError );
-(NSString *) addFileWrapper: (NSFileWrapper *) child ;
-(NSString *) addRegularFileWithContents: (NSData *) data preferredFilename: (NSString *) fileName ;
-(void) removeFileWrapper: (NSFileWrapper *) child ;
-(NSString *) keyForFileWrapper: (NSFileWrapper *) child ;
@end
@protocol NSFileWrapperClassExports<JSExport, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop