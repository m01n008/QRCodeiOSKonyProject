#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSFileManager_symbols(JSContext*);
@protocol NSFileManagerInstanceExports<JSExport>
@property (assign) id delegate;
@property (readonly,copy) NSString * currentDirectoryPath;
@property (readonly,copy) id ubiquityIdentityToken;
-(NSArray *) mountedVolumeURLsIncludingResourceValuesForKeys: (NSArray *) propertyKeys options: (NSVolumeEnumerationOptions) options ;
JSExportAs(contentsOfDirectoryAtURLIncludingPropertiesForKeysOptionsError,
-(NSArray *) jscontentsOfDirectoryAtURL: (NSURL *) url includingPropertiesForKeys: (NSArray *) keys options: (NSDirectoryEnumerationOptions) mask error: (JSValue *) error );
-(NSArray *) URLsForDirectory: (NSSearchPathDirectory) directory inDomains: (NSSearchPathDomainMask) domainMask ;
JSExportAs(URLForDirectoryInDomainAppropriateForURLCreateError,
-(NSURL *) jsURLForDirectory: (NSSearchPathDirectory) directory inDomain: (NSSearchPathDomainMask) domain appropriateForURL: (NSURL *) url create: (BOOL) shouldCreate error: (JSValue *) error );
JSExportAs(createDirectoryAtURLWithIntermediateDirectoriesAttributesError,
-(BOOL) jscreateDirectoryAtURL: (NSURL *) url withIntermediateDirectories: (BOOL) createIntermediates attributes: (NSDictionary *) attributes error: (JSValue *) error );
JSExportAs(createSymbolicLinkAtURLWithDestinationURLError,
-(BOOL) jscreateSymbolicLinkAtURL: (NSURL *) url withDestinationURL: (NSURL *) destURL error: (JSValue *) error );
JSExportAs(setAttributesOfItemAtPathError,
-(BOOL) jssetAttributes: (NSDictionary *) attributes ofItemAtPath: (NSString *) path error: (JSValue *) error );
JSExportAs(createDirectoryAtPathWithIntermediateDirectoriesAttributesError,
-(BOOL) jscreateDirectoryAtPath: (NSString *) path withIntermediateDirectories: (BOOL) createIntermediates attributes: (NSDictionary *) attributes error: (JSValue *) error );
JSExportAs(contentsOfDirectoryAtPathError,
-(NSArray *) jscontentsOfDirectoryAtPath: (NSString *) path error: (JSValue *) error );
JSExportAs(subpathsOfDirectoryAtPathError,
-(NSArray *) jssubpathsOfDirectoryAtPath: (NSString *) path error: (JSValue *) error );
JSExportAs(attributesOfItemAtPathError,
-(NSDictionary *) jsattributesOfItemAtPath: (NSString *) path error: (JSValue *) error );
JSExportAs(attributesOfFileSystemForPathError,
-(NSDictionary *) jsattributesOfFileSystemForPath: (NSString *) path error: (JSValue *) error );
JSExportAs(createSymbolicLinkAtPathWithDestinationPathError,
-(BOOL) jscreateSymbolicLinkAtPath: (NSString *) path withDestinationPath: (NSString *) destPath error: (JSValue *) error );
JSExportAs(destinationOfSymbolicLinkAtPathError,
-(NSString *) jsdestinationOfSymbolicLinkAtPath: (NSString *) path error: (JSValue *) error );
JSExportAs(copyItemAtPathToPathError,
-(BOOL) jscopyItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath error: (JSValue *) error );
JSExportAs(moveItemAtPathToPathError,
-(BOOL) jsmoveItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath error: (JSValue *) error );
JSExportAs(linkItemAtPathToPathError,
-(BOOL) jslinkItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath error: (JSValue *) error );
JSExportAs(removeItemAtPathError,
-(BOOL) jsremoveItemAtPath: (NSString *) path error: (JSValue *) error );
JSExportAs(copyItemAtURLToURLError,
-(BOOL) jscopyItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL error: (JSValue *) error );
JSExportAs(moveItemAtURLToURLError,
-(BOOL) jsmoveItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL error: (JSValue *) error );
JSExportAs(linkItemAtURLToURLError,
-(BOOL) jslinkItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL error: (JSValue *) error );
JSExportAs(removeItemAtURLError,
-(BOOL) jsremoveItemAtURL: (NSURL *) URL error: (JSValue *) error );
-(NSDictionary *) fileAttributesAtPath: (NSString *) path traverseLink: (BOOL) yorn ;
-(BOOL) changeFileAttributes: (NSDictionary *) attributes atPath: (NSString *) path ;
-(NSArray *) directoryContentsAtPath: (NSString *) path ;
-(NSDictionary *) fileSystemAttributesAtPath: (NSString *) path ;
-(NSString *) pathContentOfSymbolicLinkAtPath: (NSString *) path ;
-(BOOL) createSymbolicLinkAtPath: (NSString *) path pathContent: (NSString *) otherpath ;
-(BOOL) createDirectoryAtPath: (NSString *) path attributes: (NSDictionary *) attributes ;
-(BOOL) changeCurrentDirectoryPath: (NSString *) path ;
-(BOOL) fileExistsAtPath: (NSString *) path ;
-(BOOL) isReadableFileAtPath: (NSString *) path ;
-(BOOL) isWritableFileAtPath: (NSString *) path ;
-(BOOL) isExecutableFileAtPath: (NSString *) path ;
-(BOOL) isDeletableFileAtPath: (NSString *) path ;
-(BOOL) contentsEqualAtPath: (NSString *) path1 andPath: (NSString *) path2 ;
-(NSString *) displayNameAtPath: (NSString *) path ;
-(NSArray *) componentsToDisplayForPath: (NSString *) path ;
-(NSDirectoryEnumerator *) enumeratorAtPath: (NSString *) path ;
JSExportAs(enumeratorAtURLIncludingPropertiesForKeysOptionsErrorHandler,
-(NSDirectoryEnumerator *) jsenumeratorAtURL: (NSURL *) url includingPropertiesForKeys: (NSArray *) keys options: (NSDirectoryEnumerationOptions) mask errorHandler: (JSValue *) handler );
-(NSArray *) subpathsAtPath: (NSString *) path ;
-(NSData *) contentsAtPath: (NSString *) path ;
-(BOOL) createFileAtPath: (NSString *) path contents: (NSData *) data attributes: (NSDictionary *) attr ;
JSExportAs(setUbiquitousItemAtURLDestinationURLError,
-(BOOL) jssetUbiquitous: (BOOL) flag itemAtURL: (NSURL *) url destinationURL: (NSURL *) destinationURL error: (JSValue *) error );
-(BOOL) isUbiquitousItemAtURL: (NSURL *) url ;
JSExportAs(startDownloadingUbiquitousItemAtURLError,
-(BOOL) jsstartDownloadingUbiquitousItemAtURL: (NSURL *) url error: (JSValue *) error );
JSExportAs(evictUbiquitousItemAtURLError,
-(BOOL) jsevictUbiquitousItemAtURL: (NSURL *) url error: (JSValue *) error );
-(NSURL *) URLForUbiquityContainerIdentifier: (NSString *) containerIdentifier ;
JSExportAs(getFileProviderServicesForItemAtURLCompletionHandler,
-(void) jsgetFileProviderServicesForItemAtURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
-(NSURL *) containerURLForSecurityApplicationGroupIdentifier: (NSString *) groupIdentifier ;
@end
@protocol NSFileManagerClassExports<JSExport>
+(NSFileManager *) defaultManager;
@end
@protocol NSFileManagerNSUserInformationCategoryInstanceExports<JSExport>
@property (readonly,copy) NSURL * temporaryDirectory;
@end
@protocol NSFileManagerNSUserInformationCategoryClassExports<JSExport>
@end
@protocol NSObjectNSCopyLinkMoveHandlerCategoryInstanceExports<JSExport>
-(BOOL) fileManager: (NSFileManager *) fm shouldProceedAfterError: (NSDictionary *) errorInfo ;
-(void) fileManager: (NSFileManager *) fm willProcessPath: (NSString *) path ;
@end
@protocol NSObjectNSCopyLinkMoveHandlerCategoryClassExports<JSExport>
@end
@protocol NSDirectoryEnumeratorInstanceExports<JSExport>
@property (readonly,copy) NSDictionary * fileAttributes;
@property (readonly,copy) NSDictionary * directoryAttributes;
@property (readonly) BOOL isEnumeratingDirectoryPostOrder;
@property (readonly) NSUInteger level;
-(void) skipDescendents;
-(void) skipDescendants;
@end
@protocol NSDirectoryEnumeratorClassExports<JSExport>
@end
@protocol NSFileProviderServiceInstanceExports<JSExport>
@property (readonly,copy) NSFileProviderServiceName name;
JSExportAs(getFileProviderConnectionWithCompletionHandler,
-(void) jsgetFileProviderConnectionWithCompletionHandler: (JSValue *) completionHandler );
@end
@protocol NSFileProviderServiceClassExports<JSExport>
@end
@protocol NSDictionaryNSFileAttributesCategoryInstanceExports<JSExport>
-(unsigned long long) fileSize;
-(NSDate *) fileModificationDate;
-(NSString *) fileType;
-(NSUInteger) filePosixPermissions;
-(NSString *) fileOwnerAccountName;
-(NSString *) fileGroupOwnerAccountName;
-(NSInteger) fileSystemNumber;
-(NSUInteger) fileSystemFileNumber;
-(BOOL) fileExtensionHidden;
-(OSType) fileHFSCreatorCode;
-(OSType) fileHFSTypeCode;
-(BOOL) fileIsImmutable;
-(BOOL) fileIsAppendOnly;
-(NSDate *) fileCreationDate;
-(NSNumber *) fileOwnerAccountID;
-(NSNumber *) fileGroupOwnerAccountID;
@end
@protocol NSDictionaryNSFileAttributesCategoryClassExports<JSExport>
@end
@protocol NSFileManagerDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(BOOL) fileManager: (NSFileManager *) fileManager shouldCopyItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldCopyItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error copyingItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error copyingItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldMoveItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldMoveItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error movingItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error movingItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldLinkItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldLinkItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error linkingItemAtPath: (NSString *) srcPath toPath: (NSString *) dstPath ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error linkingItemAtURL: (NSURL *) srcURL toURL: (NSURL *) dstURL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldRemoveItemAtPath: (NSString *) path ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldRemoveItemAtURL: (NSURL *) URL ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error removingItemAtPath: (NSString *) path ;
-(BOOL) fileManager: (NSFileManager *) fileManager shouldProceedAfterError: (NSError *) error removingItemAtURL: (NSURL *) URL ;
@end
@protocol NSFileManagerDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop