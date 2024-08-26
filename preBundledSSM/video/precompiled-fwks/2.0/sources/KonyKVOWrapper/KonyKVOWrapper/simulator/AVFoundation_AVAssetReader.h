#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAssetReader_symbols(JSContext*);
@protocol AVAssetReaderInstanceExports<JSExport>
@property (readonly) AVAssetReaderStatus status;
@property (readonly,nonatomic) NSArray * outputs;
@property (nonatomic) CMTimeRange timeRange;
@property (readonly,retain,nonatomic) AVAsset * asset;
@property (readonly) NSError * error;
-(BOOL) canAddOutput: (AVAssetReaderOutput *) output ;
-(void) addOutput: (AVAssetReaderOutput *) output ;
-(BOOL) startReading;
-(void) cancelReading;
JSExportAs(initWithAssetError,
-(id) jsinitWithAsset: (AVAsset *) asset error: (JSValue *) outError );
@end
@protocol AVAssetReaderClassExports<JSExport>
JSExportAs(assetReaderWithAssetError,
+(id) jsassetReaderWithAsset: (AVAsset *) asset error: (JSValue *) outError );
@end
#pragma clang diagnostic pop