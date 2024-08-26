#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVPlayerItemOutput_symbols(JSContext*);
@protocol AVPlayerItemOutputInstanceExports<JSExport>
@property (readwrite,nonatomic) BOOL suppressesPlayerRendering;
-(CMTime) itemTimeForHostTime: (CFTimeInterval) hostTimeInSeconds ;
-(CMTime) itemTimeForMachAbsoluteTime: (int64_t) machAbsoluteTime ;
@end
@protocol AVPlayerItemOutputClassExports<JSExport>
@end
@protocol AVPlayerItemLegibleOutputInstanceExports<JSExport>
@property (readwrite,nonatomic) NSTimeInterval advanceIntervalForDelegateInvocation;
@property (readonly,nonatomic,weak) id delegate;
@end
@protocol AVPlayerItemLegibleOutputClassExports<JSExport>
@end
@protocol AVPlayerItemLegibleOutputAVPlayerItemLegibleOutput_NativeRepresentationCategoryInstanceExports<JSExport>
JSExportAs(initWithMediaSubtypesForNativeRepresentation,
-(id) jsinitWithMediaSubtypesForNativeRepresentation: (NSArray *) subtypes );
@end
@protocol AVPlayerItemLegibleOutputAVPlayerItemLegibleOutput_NativeRepresentationCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemLegibleOutputAVPlayerItemLegibleOutput_TextStylingResolutionCategoryInstanceExports<JSExport>
@property (copy,nonatomic) AVPlayerItemLegibleOutputTextStylingResolution textStylingResolution;
@end
@protocol AVPlayerItemLegibleOutputAVPlayerItemLegibleOutput_TextStylingResolutionCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemMetadataOutputInstanceExports<JSExport>
@property (readwrite,nonatomic) NSTimeInterval advanceIntervalForDelegateInvocation;
@property (readonly,nonatomic,weak) id delegate;
JSExportAs(initWithIdentifiers,
-(id) jsinitWithIdentifiers: (NSArray *) identifiers );
@end
@protocol AVPlayerItemMetadataOutputClassExports<JSExport>
@end
@protocol AVPlayerItemVideoOutputInstanceExports<JSExport>
@property (readonly,assign,nonatomic) id delegate;
JSExportAs(initWithPixelBufferAttributes,
-(id) jsinitWithPixelBufferAttributes: (NSDictionary *) pixelBufferAttributes );
-(BOOL) hasNewPixelBufferForItemTime: (CMTime) itemTime ;
-(void) requestNotificationOfMediaDataChangeWithAdvanceInterval: (NSTimeInterval) interval ;
JSExportAs(initWithOutputSettings,
-(id) jsinitWithOutputSettings: (NSDictionary *) outputSettings );
@end
@protocol AVPlayerItemVideoOutputClassExports<JSExport>
@end
@protocol AVPlayerItemMetadataOutputPushDelegateInstanceExports_<JSExport, AVPlayerItemOutputPushDelegateInstanceExports_>
-(void) metadataOutput: (AVPlayerItemMetadataOutput *) output didOutputTimedMetadataGroups: (NSArray *) groups fromPlayerItemTrack: (AVPlayerItemTrack *) track ;
@end
@protocol AVPlayerItemMetadataOutputPushDelegateClassExports_<JSExport, AVPlayerItemOutputPushDelegateClassExports_>
@end
@protocol AVPlayerItemOutputPushDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) outputSequenceWasFlushed: (AVPlayerItemOutput *) output ;
@end
@protocol AVPlayerItemOutputPushDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol AVPlayerItemOutputPullDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) outputMediaDataWillChange: (AVPlayerItemOutput *) sender ;
-(void) outputSequenceWasFlushed: (AVPlayerItemOutput *) output ;
@end
@protocol AVPlayerItemOutputPullDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol AVPlayerItemLegibleOutputPushDelegateInstanceExports_<JSExport, AVPlayerItemOutputPushDelegateInstanceExports_>
-(void) legibleOutput: (AVPlayerItemLegibleOutput *) output didOutputAttributedStrings: (NSArray *) strings nativeSampleBuffers: (NSArray *) nativeSamples forItemTime: (CMTime) itemTime ;
@end
@protocol AVPlayerItemLegibleOutputPushDelegateClassExports_<JSExport, AVPlayerItemOutputPushDelegateClassExports_>
@end
#pragma clang diagnostic pop