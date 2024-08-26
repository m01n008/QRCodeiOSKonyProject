#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreText_SFNTTypes_symbols(JSContext*);
@interface JSValue (CoreText_SFNTTypes)
+(JSValue*) valueWithsfntFontDescriptor: (sfntFontDescriptor) s inContext: (JSContext*) context;
-(sfntFontDescriptor) tosfntFontDescriptor;
+(JSValue*) valueWithsfntNameRecord: (sfntNameRecord) s inContext: (JSContext*) context;
-(sfntNameRecord) tosfntNameRecord;
+(JSValue*) valueWithsfntFontRunFeature: (sfntFontRunFeature) s inContext: (JSContext*) context;
-(sfntFontRunFeature) tosfntFontRunFeature;
+(JSValue*) valueWithsfntCMapExtendedSubHeader: (sfntCMapExtendedSubHeader) s inContext: (JSContext*) context;
-(sfntCMapExtendedSubHeader) tosfntCMapExtendedSubHeader;
+(JSValue*) valueWithsfntCMapEncoding: (sfntCMapEncoding) s inContext: (JSContext*) context;
-(sfntCMapEncoding) tosfntCMapEncoding;
+(JSValue*) valueWithsfntCMapSubHeader: (sfntCMapSubHeader) s inContext: (JSContext*) context;
-(sfntCMapSubHeader) tosfntCMapSubHeader;
+(JSValue*) valueWithsfntFontFeatureSetting: (sfntFontFeatureSetting) s inContext: (JSContext*) context;
-(sfntFontFeatureSetting) tosfntFontFeatureSetting;
+(JSValue*) valueWithsfntDirectoryEntry: (sfntDirectoryEntry) s inContext: (JSContext*) context;
-(sfntDirectoryEntry) tosfntDirectoryEntry;
+(JSValue*) valueWithsfntVariationAxis: (sfntVariationAxis) s inContext: (JSContext*) context;
-(sfntVariationAxis) tosfntVariationAxis;
+(JSValue*) valueWithsfntFeatureName: (sfntFeatureName) s inContext: (JSContext*) context;
-(sfntFeatureName) tosfntFeatureName;
+(JSValue*) valueWithFontVariation: (FontVariation) s inContext: (JSContext*) context;
-(FontVariation) toFontVariation;
@end
#pragma clang diagnostic pop