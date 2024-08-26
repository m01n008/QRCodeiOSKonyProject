#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioUnitComponent_symbols(JSContext*);
@protocol AVAudioUnitComponentInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * allTagNames;
@property (readonly,nonatomic) NSString * name;
@property (readonly,nonatomic) AudioComponentDescription audioComponentDescription;
@property (readonly,nonatomic) BOOL hasMIDIInput;
@property (readonly,nonatomic) NSString * localizedTypeName;
@property (readonly,nonatomic) NSString * typeName;
@property (readonly,nonatomic) NSString * versionString;
@property (readonly,nonatomic) NSUInteger version;
@property (getter=isSandboxSafe,readonly,nonatomic) BOOL sandboxSafe;
@property (readonly,nonatomic) NSString * manufacturerName;
@property (readonly,nonatomic) id audioComponent;
@property (readonly,nonatomic) BOOL hasMIDIOutput;
@end
@protocol AVAudioUnitComponentClassExports<JSExport>
@end
@protocol AVAudioUnitComponentManagerInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * tagNames;
@property (readonly,nonatomic) NSArray * standardLocalizedTagNames;
-(NSArray *) componentsMatchingDescription: (AudioComponentDescription) desc ;
JSExportAs(componentsPassingTest,
-(NSArray *) jscomponentsPassingTest: (JSValue *) testHandler );
-(NSArray *) componentsMatchingPredicate: (NSPredicate *) predicate ;
@end
@protocol AVAudioUnitComponentManagerClassExports<JSExport>
+(id) sharedAudioUnitComponentManager;
@end
#pragma clang diagnostic pop