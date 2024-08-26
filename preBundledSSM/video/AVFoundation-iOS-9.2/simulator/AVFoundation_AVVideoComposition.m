#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVMutableVideoComposition (AVMutableVideoCompositionAVMutableVideoCompositionFilteringCategoryExports)
+(AVMutableVideoComposition *) jsvideoCompositionWithAsset: (AVAsset *) asset applyingCIFiltersWithHandler: (JSValue *) applier 
{
	void (^ applier_)(AVAsynchronousCIImageFilteringRequest * ) = nil;
	if (!applier.isUndefined) {
		applier_ = ^void(AVAsynchronousCIImageFilteringRequest * arg0) {
			JSContext* __jsContext = applier.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, applier, self, parameters);
		};
	}
	AVMutableVideoComposition * resultVal__;
	resultVal__ = [self videoCompositionWithAsset: asset applyingCIFiltersWithHandler: applier_ ];
	return resultVal__;
}
@end
@implementation AVVideoComposition (AVVideoCompositionAVVideoCompositionFilteringCategoryExports)
+(AVVideoComposition *) jsvideoCompositionWithAsset: (AVAsset *) asset applyingCIFiltersWithHandler: (JSValue *) applier 
{
	void (^ applier_)(AVAsynchronousCIImageFilteringRequest * ) = nil;
	if (!applier.isUndefined) {
		applier_ = ^void(AVAsynchronousCIImageFilteringRequest * arg0) {
			JSContext* __jsContext = applier.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, applier, self, parameters);
		};
	}
	AVVideoComposition * resultVal__;
	resultVal__ = [self videoCompositionWithAsset: asset applyingCIFiltersWithHandler: applier_ ];
	return resultVal__;
}
@end
@implementation AVVideoCompositionInstruction (Exports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation AVMutableVideoComposition (Exports)
-(JSValue *) getJsCustomVideoCompositorClass
{
	return [JSValue valueWithObject: self.customVideoCompositorClass inContext: [JSContext currentContext]];
}
-(void) setJsCustomVideoCompositorClass: (JSValue *) value
{
	self.customVideoCompositorClass = objc_getClass([[value[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
}
@end
@implementation AVVideoCompositionLayerInstruction (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation AVVideoComposition (Exports)
-(JSValue *) getJsCustomVideoCompositorClass
{
	return [JSValue valueWithObject: self.customVideoCompositorClass inContext: [JSContext currentContext]];
}
@end
static void addProtocols()
{
	class_addProtocol([AVMutableVideoComposition class], @protocol(AVMutableVideoCompositionAVMutableVideoCompositionFilteringCategoryInstanceExports));
	class_addProtocol([AVMutableVideoComposition class], @protocol(AVMutableVideoCompositionAVMutableVideoCompositionFilteringCategoryClassExports));
	class_addProtocol([AVMutableVideoCompositionLayerInstruction class], @protocol(AVMutableVideoCompositionLayerInstructionInstanceExports));
	class_addProtocol([AVMutableVideoCompositionLayerInstruction class], @protocol(AVMutableVideoCompositionLayerInstructionClassExports));
	class_addProtocol([AVVideoCompositionCoreAnimationTool class], @protocol(AVVideoCompositionCoreAnimationToolInstanceExports));
	class_addProtocol([AVVideoCompositionCoreAnimationTool class], @protocol(AVVideoCompositionCoreAnimationToolClassExports));
	class_addProtocol([AVVideoComposition class], @protocol(AVVideoCompositionAVVideoCompositionFilteringCategoryInstanceExports));
	class_addProtocol([AVVideoComposition class], @protocol(AVVideoCompositionAVVideoCompositionFilteringCategoryClassExports));
	class_addProtocol([AVVideoCompositionInstruction class], @protocol(AVVideoCompositionInstructionInstanceExports));
	class_addProtocol([AVVideoCompositionInstruction class], @protocol(AVVideoCompositionInstructionClassExports));
	class_addProtocol([AVMutableVideoCompositionInstruction class], @protocol(AVMutableVideoCompositionInstructionInstanceExports));
	class_addProtocol([AVMutableVideoCompositionInstruction class], @protocol(AVMutableVideoCompositionInstructionClassExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetVideoCompositionUtilityCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetVideoCompositionUtilityCategoryClassExports));
	class_addProtocol([AVMutableVideoComposition class], @protocol(AVMutableVideoCompositionInstanceExports));
	class_addProtocol([AVMutableVideoComposition class], @protocol(AVMutableVideoCompositionClassExports));
	class_addProtocol([AVVideoComposition class], @protocol(AVVideoCompositionAVVideoCompositionValidationCategoryInstanceExports));
	class_addProtocol([AVVideoComposition class], @protocol(AVVideoCompositionAVVideoCompositionValidationCategoryClassExports));
	class_addProtocol([AVVideoCompositionLayerInstruction class], @protocol(AVVideoCompositionLayerInstructionInstanceExports));
	class_addProtocol([AVVideoCompositionLayerInstruction class], @protocol(AVVideoCompositionLayerInstructionClassExports));
	class_addProtocol([AVVideoComposition class], @protocol(AVVideoCompositionInstanceExports));
	class_addProtocol([AVVideoComposition class], @protocol(AVVideoCompositionClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void AVFoundation_AVVideoCompositionProtocols()
{
	(void)@protocol(AVVideoCompositionValidationHandling);
}
void load_AVFoundation_AVVideoComposition_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
