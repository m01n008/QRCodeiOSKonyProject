#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAssetWriterInput_symbols(JSContext*);
@protocol AVAssetWriterInputPixelBufferAdaptorInstanceExports<JSExport>
@property (readonly,nonatomic) NSDictionary * sourcePixelBufferAttributes;
@property (readonly,nonatomic) id pixelBufferPool;
@property (readonly,nonatomic) AVAssetWriterInput * assetWriterInput;
JSExportAs(initWithAssetWriterInputSourcePixelBufferAttributes,
-(id) jsinitWithAssetWriterInput: (AVAssetWriterInput *) input sourcePixelBufferAttributes: (NSDictionary *) sourcePixelBufferAttributes );
-(BOOL) appendPixelBuffer: (id) pixelBuffer withPresentationTime: (CMTime) presentationTime ;
@end
@protocol AVAssetWriterInputPixelBufferAdaptorClassExports<JSExport>
+(id) assetWriterInputPixelBufferAdaptorWithAssetWriterInput: (AVAssetWriterInput *) input sourcePixelBufferAttributes: (NSDictionary *) sourcePixelBufferAttributes ;
@end
@protocol AVAssetWriterInputAVAssetWriterInputFileTypeSpecificPropertiesCategoryInstanceExports<JSExport>
@property (nonatomic) CMTime preferredMediaChunkDuration;
@property (nonatomic) BOOL marksOutputTrackAsEnabled;
@property (nonatomic) CMTimeScale mediaTimeScale;
@property (copy,nonatomic) NSURL * sampleReferenceBaseURL;
@property (copy,nonatomic) AVAssetWriterInputMediaDataLocation mediaDataLocation;
@property (nonatomic) NSInteger preferredMediaChunkAlignment;
@end
@protocol AVAssetWriterInputAVAssetWriterInputFileTypeSpecificPropertiesCategoryClassExports<JSExport>
@end
@protocol AVAssetWriterInputInstanceExports<JSExport>
@property (nonatomic) BOOL expectsMediaDataInRealTime;
@property (readonly,nonatomic) AVMediaType mediaType;
@property (readonly,nonatomic) NSDictionary * outputSettings;
@property (readonly,nonatomic) id sourceFormatHint;
@property (getter=isReadyForMoreMediaData,readonly,nonatomic) BOOL readyForMoreMediaData;
@property (copy,nonatomic) NSArray * metadata;
-(void) markAsFinished;
JSExportAs(initWithMediaTypeOutputSettings,
-(id) jsinitWithMediaType: (AVMediaType) mediaType outputSettings: (NSDictionary *) outputSettings );
-(BOOL) appendSampleBuffer: (id) sampleBuffer ;
JSExportAs(initWithMediaTypeOutputSettingsSourceFormatHint,
-(id) jsinitWithMediaType: (AVMediaType) mediaType outputSettings: (NSDictionary *) outputSettings sourceFormatHint: (id) sourceFormatHint );
@end
@protocol AVAssetWriterInputClassExports<JSExport>
+(id) assetWriterInputWithMediaType: (AVMediaType) mediaType outputSettings: (NSDictionary *) outputSettings ;
+(id) assetWriterInputWithMediaType: (AVMediaType) mediaType outputSettings: (NSDictionary *) outputSettings sourceFormatHint: (id) sourceFormatHint ;
@end
@protocol AVAssetWriterInputAVAssetWriterInputLanguagePropertiesCategoryInstanceExports<JSExport>
@property (copy,nonatomic) NSString * languageCode;
@property (copy,nonatomic) NSString * extendedLanguageTag;
@end
@protocol AVAssetWriterInputAVAssetWriterInputLanguagePropertiesCategoryClassExports<JSExport>
@end
@protocol AVAssetWriterInputMetadataAdaptorInstanceExports<JSExport>
@property (readonly,nonatomic) AVAssetWriterInput * assetWriterInput;
JSExportAs(initWithAssetWriterInput,
-(id) jsinitWithAssetWriterInput: (AVAssetWriterInput *) input );
-(BOOL) appendTimedMetadataGroup: (AVTimedMetadataGroup *) timedMetadataGroup ;
@end
@protocol AVAssetWriterInputMetadataAdaptorClassExports<JSExport>
+(id) assetWriterInputMetadataAdaptorWithAssetWriterInput: (AVAssetWriterInput *) input ;
@end
@protocol AVAssetWriterInputAVAssetWriterInputPropertiesForVisualCharacteristicCategoryInstanceExports<JSExport>
@property (nonatomic) CGSize naturalSize;
@property (nonatomic) CGAffineTransform transform;
@end
@protocol AVAssetWriterInputAVAssetWriterInputPropertiesForVisualCharacteristicCategoryClassExports<JSExport>
@end
@protocol AVAssetWriterInputAVAssetWriterInputTrackAssociationsCategoryInstanceExports<JSExport>
-(BOOL) canAddTrackAssociationWithTrackOfInput: (AVAssetWriterInput *) input type: (NSString *) trackAssociationType ;
-(void) addTrackAssociationWithTrackOfInput: (AVAssetWriterInput *) input type: (NSString *) trackAssociationType ;
@end
@protocol AVAssetWriterInputAVAssetWriterInputTrackAssociationsCategoryClassExports<JSExport>
@end
@protocol AVAssetWriterInputPassDescriptionInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * sourceTimeRanges;
@end
@protocol AVAssetWriterInputPassDescriptionClassExports<JSExport>
@end
@protocol AVAssetWriterInputAVAssetWriterInputMultiPassCategoryInstanceExports<JSExport>
@property (readonly) AVAssetWriterInputPassDescription * currentPassDescription;
@property (nonatomic) BOOL performsMultiPassEncodingIfSupported;
@property (readonly,nonatomic) BOOL canPerformMultiplePasses;
-(void) markCurrentPassAsFinished;
@end
@protocol AVAssetWriterInputAVAssetWriterInputMultiPassCategoryClassExports<JSExport>
@end
@protocol AVAssetWriterInputAVAssetWriterInputPropertiesForAudibleCharacteristicCategoryInstanceExports<JSExport>
@property (nonatomic) float preferredVolume;
@end
@protocol AVAssetWriterInputAVAssetWriterInputPropertiesForAudibleCharacteristicCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop