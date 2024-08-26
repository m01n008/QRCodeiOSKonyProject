#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVMovie_symbols(JSContext*);
@protocol AVMutableMovieAVMutableMovieMetadataEditingCategoryInstanceExports<JSExport>
@property (copy,nonatomic) NSArray * metadata;
@end
@protocol AVMutableMovieAVMutableMovieMetadataEditingCategoryClassExports<JSExport>
@end
@protocol AVMutableMovieAVMutableMovieTrackInspectionCategoryInstanceExports<JSExport>
-(AVMutableMovieTrack *) trackWithTrackID: (CMPersistentTrackID) trackID ;
-(NSArray *) tracksWithMediaCharacteristic: (AVMediaCharacteristic) mediaCharacteristic ;
-(NSArray *) tracksWithMediaType: (AVMediaType) mediaType ;
@end
@protocol AVMutableMovieAVMutableMovieTrackInspectionCategoryClassExports<JSExport>
@end
@protocol AVMutableMovieAVMutableMovieTrackLevelEditingCategoryInstanceExports<JSExport>
-(void) removeTrack: (AVMovieTrack *) track ;
-(AVMutableMovieTrack *) addMutableTrackWithMediaType: (AVMediaType) mediaType copySettingsFromTrack: (AVAssetTrack *) track options: (NSDictionary *) options ;
-(AVMutableMovieTrack *) mutableTrackCompatibleWithTrack: (AVAssetTrack *) track ;
-(NSArray *) addMutableTracksCopyingSettingsFromTracks: (NSArray *) existingTracks options: (NSDictionary *) options ;
@end
@protocol AVMutableMovieAVMutableMovieTrackLevelEditingCategoryClassExports<JSExport>
@end
@protocol AVMovieAVMovieMovieHeaderSupportCategoryInstanceExports<JSExport>
JSExportAs(writeMovieHeaderToURLFileTypeOptionsError,
-(BOOL) jswriteMovieHeaderToURL: (NSURL *) URL fileType: (AVFileType) fileType options: (AVMovieWritingOptions) options error: (JSValue *) outError );
-(BOOL) isCompatibleWithFileType: (AVFileType) fileType ;
JSExportAs(movieHeaderWithFileTypeError,
-(NSData *) jsmovieHeaderWithFileType: (AVFileType) fileType error: (JSValue *) outError );
@end
@protocol AVMovieAVMovieMovieHeaderSupportCategoryClassExports<JSExport>
@end
@protocol AVMovieAVMovieTrackInspectionCategoryInstanceExports<JSExport>
-(AVMovieTrack *) trackWithTrackID: (CMPersistentTrackID) trackID ;
-(NSArray *) tracksWithMediaCharacteristic: (AVMediaCharacteristic) mediaCharacteristic ;
-(NSArray *) tracksWithMediaType: (AVMediaType) mediaType ;
@end
@protocol AVMovieAVMovieTrackInspectionCategoryClassExports<JSExport>
@end
@protocol AVMediaDataStorageInstanceExports<JSExport>
-(NSURL *) URL;
JSExportAs(initWithURLOptions,
-(id) jsinitWithURL: (NSURL *) URL options: (NSDictionary *) options );
@end
@protocol AVMediaDataStorageClassExports<JSExport>
@end
@protocol AVFragmentedMovieMinderInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * movies;
@property (nonatomic) NSTimeInterval mindingInterval;
JSExportAs(initWithMovieMindingInterval,
-(id) jsinitWithMovie: (AVFragmentedMovie *) movie mindingInterval: (NSTimeInterval) mindingInterval );
-(void) addFragmentedMovie: (AVFragmentedMovie *) movie ;
-(void) removeFragmentedMovie: (AVFragmentedMovie *) movie ;
@end
@protocol AVFragmentedMovieMinderClassExports<JSExport>
+(id) fragmentedMovieMinderWithMovie: (AVFragmentedMovie *) movie mindingInterval: (NSTimeInterval) mindingInterval ;
@end
@protocol AVFragmentedMovieInstanceExports<JSExport, AVFragmentMindingInstanceExports_>
@property (readonly,nonatomic) NSArray * tracks;
@end
@protocol AVFragmentedMovieClassExports<JSExport, AVFragmentMindingClassExports_>
@end
@protocol AVMutableMovieAVMutableMovieMovieLevelEditingCategoryInstanceExports<JSExport>
@property (nonatomic) CMTime interleavingPeriod;
@property (getter=isModified,nonatomic) BOOL modified;
@property (copy,nonatomic) AVMediaDataStorage * defaultMediaDataStorage;
-(void) scaleTimeRange: (CMTimeRange) timeRange toDuration: (CMTime) duration ;
-(void) insertEmptyTimeRange: (CMTimeRange) timeRange ;
-(void) removeTimeRange: (CMTimeRange) timeRange ;
JSExportAs(insertTimeRangeOfAssetAtTimeCopySampleDataError,
-(BOOL) jsinsertTimeRange: (CMTimeRange) timeRange ofAsset: (AVAsset *) asset atTime: (CMTime) startTime copySampleData: (BOOL) copySampleData error: (JSValue *) outError );
@end
@protocol AVMutableMovieAVMutableMovieMovieLevelEditingCategoryClassExports<JSExport>
@end
@protocol AVMovieInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_>
@property (readonly,nonatomic) AVMediaDataStorage * defaultMediaDataStorage;
@property (readonly,nonatomic) NSURL * URL;
@property (readonly,nonatomic) BOOL containsMovieFragments;
@property (readonly,nonatomic) NSArray * tracks;
@property (readonly,nonatomic) NSData * data;
@property (readonly,nonatomic) BOOL canContainMovieFragments;
JSExportAs(initWithURLOptions,
-(id) jsinitWithURL: (NSURL *) URL options: (NSDictionary *) options );
JSExportAs(initWithDataOptions,
-(id) jsinitWithData: (NSData *) data options: (NSDictionary *) options );
@end
@protocol AVMovieClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_>
+(id) movieWithData: (NSData *) data options: (NSDictionary *) options ;
+(id) movieWithURL: (NSURL *) URL options: (NSDictionary *) options ;
+(NSArray *) movieTypes;
@end
@protocol AVMutableMovieInstanceExports<JSExport>
@property (nonatomic) float preferredRate;
@property (nonatomic) float preferredVolume;
@property (nonatomic) CGAffineTransform preferredTransform;
@property (readonly,nonatomic) NSArray * tracks;
@property (readwrite,nonatomic) CMTimeScale timescale;
JSExportAs(initWithSettingsFromMovieOptionsError,
-(id) jsinitWithSettingsFromMovie: (AVMovie *) movie options: (NSDictionary *) options error: (JSValue *) outError );
JSExportAs(initWithURLOptionsError,
-(id) jsinitWithURL: (NSURL *) URL options: (NSDictionary *) options error: (JSValue *) outError );
JSExportAs(initWithDataOptionsError,
-(id) jsinitWithData: (NSData *) data options: (NSDictionary *) options error: (JSValue *) outError );
@end
@protocol AVMutableMovieClassExports<JSExport>
JSExportAs(movieWithURLOptionsError,
+(id) jsmovieWithURL: (NSURL *) URL options: (NSDictionary *) options error: (JSValue *) outError );
JSExportAs(movieWithDataOptionsError,
+(id) jsmovieWithData: (NSData *) data options: (NSDictionary *) options error: (JSValue *) outError );
JSExportAs(movieWithSettingsFromMovieOptionsError,
+(id) jsmovieWithSettingsFromMovie: (AVMovie *) movie options: (NSDictionary *) options error: (JSValue *) outError );
@end
@protocol AVFragmentedMovieAVFragmentedMovieTrackInspectionCategoryInstanceExports<JSExport>
-(AVFragmentedMovieTrack *) trackWithTrackID: (CMPersistentTrackID) trackID ;
-(NSArray *) tracksWithMediaCharacteristic: (AVMediaCharacteristic) mediaCharacteristic ;
-(NSArray *) tracksWithMediaType: (AVMediaType) mediaType ;
@end
@protocol AVFragmentedMovieAVFragmentedMovieTrackInspectionCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop