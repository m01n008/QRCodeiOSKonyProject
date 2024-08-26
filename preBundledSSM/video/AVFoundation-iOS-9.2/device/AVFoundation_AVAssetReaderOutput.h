#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAssetReaderOutput_symbols(JSContext*);
@protocol AVAssetReaderSampleReferenceOutputInstanceExports<JSExport>
@property (readonly,nonatomic) AVAssetTrack * track;
JSExportAs(initWithTrack,
-(id) jsinitWithTrack: (AVAssetTrack *) track );
@end
@protocol AVAssetReaderSampleReferenceOutputClassExports<JSExport>
+(id) assetReaderSampleReferenceOutputWithTrack: (AVAssetTrack *) track ;
@end
@protocol AVAssetReaderOutputAVAssetReaderOutputRandomAccessCategoryInstanceExports<JSExport>
@property (nonatomic) BOOL supportsRandomAccess;
-(void) resetForReadingTimeRanges: (NSArray *) timeRanges ;
-(void) markConfigurationAsFinal;
@end
@protocol AVAssetReaderOutputAVAssetReaderOutputRandomAccessCategoryClassExports<JSExport>
@end
@protocol AVAssetReaderOutputMetadataAdaptorInstanceExports<JSExport>
@property (readonly,nonatomic) AVAssetReaderTrackOutput * assetReaderTrackOutput;
JSExportAs(initWithAssetReaderTrackOutput,
-(id) jsinitWithAssetReaderTrackOutput: (AVAssetReaderTrackOutput *) trackOutput );
-(AVTimedMetadataGroup *) nextTimedMetadataGroup;
@end
@protocol AVAssetReaderOutputMetadataAdaptorClassExports<JSExport>
+(id) assetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput: (AVAssetReaderTrackOutput *) trackOutput ;
@end
@protocol AVAssetReaderOutputInstanceExports<JSExport>
@property (nonatomic) BOOL alwaysCopiesSampleData;
@property (readonly,nonatomic) NSString * mediaType;
-(id) copyNextSampleBuffer;
@end
@protocol AVAssetReaderOutputClassExports<JSExport>
@end
@protocol AVAssetReaderAudioMixOutputInstanceExports<JSExport>
@property (readonly,nonatomic) NSDictionary * audioSettings;
@property (readonly,nonatomic) NSArray * audioTracks;
@property (copy,nonatomic) NSString * audioTimePitchAlgorithm;
@property (copy,nonatomic) AVAudioMix * audioMix;
JSExportAs(initWithAudioTracksAudioSettings,
-(id) jsinitWithAudioTracks: (NSArray *) audioTracks audioSettings: (NSDictionary *) audioSettings );
@end
@protocol AVAssetReaderAudioMixOutputClassExports<JSExport>
+(id) assetReaderAudioMixOutputWithAudioTracks: (NSArray *) audioTracks audioSettings: (NSDictionary *) audioSettings ;
@end
@protocol AVAssetReaderVideoCompositionOutputInstanceExports<JSExport>
@property (readonly,nonatomic) id customVideoCompositor;
@property (copy,nonatomic) AVVideoComposition * videoComposition;
@property (readonly,nonatomic) NSArray * videoTracks;
@property (readonly,nonatomic) NSDictionary * videoSettings;
JSExportAs(initWithVideoTracksVideoSettings,
-(id) jsinitWithVideoTracks: (NSArray *) videoTracks videoSettings: (NSDictionary *) videoSettings );
@end
@protocol AVAssetReaderVideoCompositionOutputClassExports<JSExport>
+(id) assetReaderVideoCompositionOutputWithVideoTracks: (NSArray *) videoTracks videoSettings: (NSDictionary *) videoSettings ;
@end
@protocol AVAssetReaderTrackOutputInstanceExports<JSExport>
@property (readonly,nonatomic) AVAssetTrack * track;
@property (copy,nonatomic) NSString * audioTimePitchAlgorithm;
@property (readonly,nonatomic) NSDictionary * outputSettings;
JSExportAs(initWithTrackOutputSettings,
-(id) jsinitWithTrack: (AVAssetTrack *) track outputSettings: (NSDictionary *) outputSettings );
@end
@protocol AVAssetReaderTrackOutputClassExports<JSExport>
+(id) assetReaderTrackOutputWithTrack: (AVAssetTrack *) track outputSettings: (NSDictionary *) outputSettings ;
@end
#pragma clang diagnostic pop