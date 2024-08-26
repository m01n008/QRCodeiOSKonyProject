#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAssetWriter_symbols(JSContext*);
@protocol AVAssetWriterAVAssetWriterInputGroupsCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * inputGroups;
-(void) addInputGroup: (AVAssetWriterInputGroup *) inputGroup ;
-(BOOL) canAddInputGroup: (AVAssetWriterInputGroup *) inputGroup ;
@end
@protocol AVAssetWriterAVAssetWriterInputGroupsCategoryClassExports<JSExport>
@end
@protocol AVAssetWriterAVAssetWriterFileTypeSpecificPropertiesCategoryInstanceExports<JSExport>
@property (nonatomic) CMTime movieFragmentInterval;
@property (nonatomic) CMTimeScale movieTimeScale;
@property (nonatomic) CMTime overallDurationHint;
@end
@protocol AVAssetWriterAVAssetWriterFileTypeSpecificPropertiesCategoryClassExports<JSExport>
@end
@protocol AVAssetWriterInstanceExports<JSExport>
@property (readonly) AVAssetWriterStatus status;
@property (readonly,nonatomic) NSArray * inputs;
@property (readonly,nonatomic) NSArray * availableMediaTypes;
@property (copy,nonatomic) NSURL * directoryForTemporaryFiles;
@property (readonly,copy,nonatomic) NSString * outputFileType;
@property (nonatomic) BOOL shouldOptimizeForNetworkUse;
@property (readonly) NSError * error;
@property (readonly,copy,nonatomic) NSURL * outputURL;
@property (copy,nonatomic) NSArray * metadata;
-(void) addInput: (AVAssetWriterInput *) input ;
-(BOOL) canApplyOutputSettings: (NSDictionary *) outputSettings forMediaType: (NSString *) mediaType ;
-(BOOL) startWriting;
JSExportAs(finishWritingWithCompletionHandler,
-(void) jsfinishWritingWithCompletionHandler: (JSValue *) handler );
-(void) endSessionAtSourceTime: (CMTime) endTime ;
-(void) cancelWriting;
-(void) startSessionAtSourceTime: (CMTime) startTime ;
-(BOOL) canAddInput: (AVAssetWriterInput *) input ;
JSExportAs(initWithURLFileTypeError,
-(id) jsinitWithURL: (NSURL *) outputURL fileType: (NSString *) outputFileType error: (JSValue *) outError );
-(BOOL) finishWriting;
@end
@protocol AVAssetWriterClassExports<JSExport>
JSExportAs(assetWriterWithURLFileTypeError,
+(id) jsassetWriterWithURL: (NSURL *) outputURL fileType: (NSString *) outputFileType error: (JSValue *) outError );
@end
@protocol AVAssetWriterInputGroupInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * inputs;
@property (readonly,nonatomic) AVAssetWriterInput * defaultInput;
JSExportAs(initWithInputsDefaultInput,
-(id) jsinitWithInputs: (NSArray *) inputs defaultInput: (AVAssetWriterInput *) defaultInput );
@end
@protocol AVAssetWriterInputGroupClassExports<JSExport>
+(id) assetWriterInputGroupWithInputs: (NSArray *) inputs defaultInput: (AVAssetWriterInput *) defaultInput ;
@end
#pragma clang diagnostic pop