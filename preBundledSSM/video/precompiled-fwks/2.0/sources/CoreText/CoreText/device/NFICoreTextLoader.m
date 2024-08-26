#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFICoreTextModules(JSContext* context)
{
	load_CoreText_CTFontManagerErrors_symbols(context);
	load_CoreText_CTFontManager_symbols(context);
	load_CoreText_SFNTLayoutTypes_symbols(context);
	load_CoreText_CTGlyphInfo_symbols(context);
	load_CoreText_CTRun_symbols(context);
	load_CoreText_SFNTTypes_symbols(context);
	load_CoreText_CTRunDelegate_symbols(context);
	load_CoreText_CTLine_symbols(context);
	load_CoreText_CTFontCollection_symbols(context);
	load_CoreText_CTTypesetter_symbols(context);
	load_CoreText_CoreText_symbols(context);
	load_CoreText_CTParagraphStyle_symbols(context);
	load_CoreText_CTFontDescriptor_symbols(context);
	load_CoreText_CTTextTab_symbols(context);
	load_CoreText_CTRubyAnnotation_symbols(context);
	load_CoreText_CTFont_symbols(context);
	load_CoreText_CTFontTraits_symbols(context);
	load_CoreText_CTStringAttributes_symbols(context);
	load_CoreText_CTFramesetter_symbols(context);
	load_CoreText_CTFrame_symbols(context);
}

JSValue* extractNFICoreTextStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
	if (strcmp(type, @encode(JustWidthDeltaEntry)) == 0) {
		JustWidthDeltaEntry argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithJustWidthDeltaEntry: argument inContext: context];
	} else if (strcmp(type, @encode(MortLigatureSubtable)) == 0) {
		MortLigatureSubtable argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMortLigatureSubtable: argument inContext: context];
	} else if (strcmp(type, @encode(MorxRearrangementSubtable)) == 0) {
		MorxRearrangementSubtable argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMorxRearrangementSubtable: argument inContext: context];
	} else if (strcmp(type, @encode(MortInsertionSubtable)) == 0) {
		MortInsertionSubtable argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMortInsertionSubtable: argument inContext: context];
	} else if (strcmp(type, @encode(TrakTable)) == 0) {
		TrakTable argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithTrakTable: argument inContext: context];
	} else if (strcmp(type, @encode(KerxStateEntry)) == 0) {
		KerxStateEntry argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithKerxStateEntry: argument inContext: context];
	} else if (strcmp(type, @encode(SFNTLookupBinarySearchHeader)) == 0) {
		SFNTLookupBinarySearchHeader argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithSFNTLookupBinarySearchHeader: argument inContext: context];
	} else if (strcmp(type, @encode(KerxCoordinateAction)) == 0) {
		KerxCoordinateAction argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithKerxCoordinateAction: argument inContext: context];
	} else if (strcmp(type, @encode(STXHeader)) == 0) {
		STXHeader argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithSTXHeader: argument inContext: context];
	} else if (strcmp(type, @encode(STHeader)) == 0) {
		STHeader argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithSTHeader: argument inContext: context];
	} else if (strcmp(type, @encode(JustPCDuctilityAction)) == 0) {
		JustPCDuctilityAction argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithJustPCDuctilityAction: argument inContext: context];
	} else if (strcmp(type, @encode(MortRearrangementSubtable)) == 0) {
		MortRearrangementSubtable argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMortRearrangementSubtable: argument inContext: context];
	} else if (strcmp(type, @encode(STXEntryTwo)) == 0) {
		STXEntryTwo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithSTXEntryTwo: argument inContext: context];
	} else if (strcmp(type, @encode(JustPCConditionalAddAction)) == 0) {
		JustPCConditionalAddAction argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithJustPCConditionalAddAction: argument inContext: context];
	} else if (strcmp(type, @encode(PropLookupSegment)) == 0) {
		PropLookupSegment argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithPropLookupSegment: argument inContext: context];
	} else if (strcmp(type, @encode(OpbdSideValues)) == 0) {
		OpbdSideValues argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithOpbdSideValues: argument inContext: context];
	} else if (strcmp(type, @encode(KerxControlPointAction)) == 0) {
		KerxControlPointAction argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithKerxControlPointAction: argument inContext: context];
	} else if (strcmp(type, @encode(KerxOrderedListEntry)) == 0) {
		KerxOrderedListEntry argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithKerxOrderedListEntry: argument inContext: context];
	} else if (strcmp(type, @encode(TrakTableEntry)) == 0) {
		TrakTableEntry argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithTrakTableEntry: argument inContext: context];
	} else if (strcmp(type, @encode(STEntryOne)) == 0) {
		STEntryOne argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithSTEntryOne: argument inContext: context];
	} else if (strcmp(type, @encode(KerxAnchorPointAction)) == 0) {
		KerxAnchorPointAction argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithKerxAnchorPointAction: argument inContext: context];
	} else if (strcmp(type, @encode(KernKerningPair)) == 0) {
		KernKerningPair argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithKernKerningPair: argument inContext: context];
	} else if (strcmp(type, @encode(ALMXGlyphEntry)) == 0) {
		ALMXGlyphEntry argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithALMXGlyphEntry: argument inContext: context];
	} else if (strcmp(type, @encode(STEntryZero)) == 0) {
		STEntryZero argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithSTEntryZero: argument inContext: context];
	} else if (strcmp(type, @encode(STXEntryZero)) == 0) {
		STXEntryZero argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithSTXEntryZero: argument inContext: context];
	} else if (strcmp(type, @encode(ROTAGlyphEntry)) == 0) {
		ROTAGlyphEntry argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithROTAGlyphEntry: argument inContext: context];
	} else if (strcmp(type, @encode(MorxLigatureSubtable)) == 0) {
		MorxLigatureSubtable argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMorxLigatureSubtable: argument inContext: context];
	} else if (strcmp(type, @encode(KerxControlPointEntry)) == 0) {
		KerxControlPointEntry argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithKerxControlPointEntry: argument inContext: context];
	} else if (strcmp(type, @encode(KernOrderedListEntry)) == 0) {
		KernOrderedListEntry argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithKernOrderedListEntry: argument inContext: context];
	} else if (strcmp(type, @encode(LtagStringRange)) == 0) {
		LtagStringRange argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithLtagStringRange: argument inContext: context];
	} else if (strcmp(type, @encode(AnkrTable)) == 0) {
		AnkrTable argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAnkrTable: argument inContext: context];
	} else if (strcmp(type, @encode(JustPCGlyphRepeatAddAction)) == 0) {
		JustPCGlyphRepeatAddAction argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithJustPCGlyphRepeatAddAction: argument inContext: context];
	} else if (strcmp(type, @encode(MortContextualSubtable)) == 0) {
		MortContextualSubtable argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMortContextualSubtable: argument inContext: context];
	} else if (strcmp(type, @encode(JustTable)) == 0) {
		JustTable argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithJustTable: argument inContext: context];
	} else if (strcmp(type, @encode(MortFeatureEntry)) == 0) {
		MortFeatureEntry argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMortFeatureEntry: argument inContext: context];
	} else if (strcmp(type, @encode(MorxContextualSubtable)) == 0) {
		MorxContextualSubtable argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMorxContextualSubtable: argument inContext: context];
	} else if (strcmp(type, @encode(JustPCActionSubrecord)) == 0) {
		JustPCActionSubrecord argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithJustPCActionSubrecord: argument inContext: context];
	} else if (strcmp(type, @encode(STEntryTwo)) == 0) {
		STEntryTwo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithSTEntryTwo: argument inContext: context];
	} else if (strcmp(type, @encode(STXEntryOne)) == 0) {
		STXEntryOne argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithSTXEntryOne: argument inContext: context];
	} else if (strcmp(type, @encode(KerxKerningPair)) == 0) {
		KerxKerningPair argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithKerxKerningPair: argument inContext: context];
	} else if (strcmp(type, @encode(MorxInsertionSubtable)) == 0) {
		MorxInsertionSubtable argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMorxInsertionSubtable: argument inContext: context];
	} else if (strcmp(type, @encode(PropLookupSingle)) == 0) {
		PropLookupSingle argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithPropLookupSingle: argument inContext: context];
	} else if (strcmp(type, @encode(AnchorPoint)) == 0) {
		AnchorPoint argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAnchorPoint: argument inContext: context];
	} else if (strcmp(type, @encode(KernStateEntry)) == 0) {
		KernStateEntry argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithKernStateEntry: argument inContext: context];
	} else if (strcmp(type, @encode(KerxIndexArrayHeader)) == 0) {
		KerxIndexArrayHeader argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithKerxIndexArrayHeader: argument inContext: context];
	} else if (strcmp(type, @encode(sfntFontDescriptor)) == 0) {
		sfntFontDescriptor argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithsfntFontDescriptor: argument inContext: context];
	} else if (strcmp(type, @encode(sfntNameRecord)) == 0) {
		sfntNameRecord argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithsfntNameRecord: argument inContext: context];
	} else if (strcmp(type, @encode(sfntFontRunFeature)) == 0) {
		sfntFontRunFeature argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithsfntFontRunFeature: argument inContext: context];
	} else if (strcmp(type, @encode(sfntCMapExtendedSubHeader)) == 0) {
		sfntCMapExtendedSubHeader argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithsfntCMapExtendedSubHeader: argument inContext: context];
	} else if (strcmp(type, @encode(sfntCMapEncoding)) == 0) {
		sfntCMapEncoding argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithsfntCMapEncoding: argument inContext: context];
	} else if (strcmp(type, @encode(sfntCMapSubHeader)) == 0) {
		sfntCMapSubHeader argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithsfntCMapSubHeader: argument inContext: context];
	} else if (strcmp(type, @encode(sfntFontFeatureSetting)) == 0) {
		sfntFontFeatureSetting argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithsfntFontFeatureSetting: argument inContext: context];
	} else if (strcmp(type, @encode(sfntDirectoryEntry)) == 0) {
		sfntDirectoryEntry argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithsfntDirectoryEntry: argument inContext: context];
	} else if (strcmp(type, @encode(sfntVariationAxis)) == 0) {
		sfntVariationAxis argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithsfntVariationAxis: argument inContext: context];
	} else if (strcmp(type, @encode(sfntFeatureName)) == 0) {
		sfntFeatureName argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithsfntFeatureName: argument inContext: context];
	} else if (strcmp(type, @encode(FontVariation)) == 0) {
		FontVariation argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithFontVariation: argument inContext: context];
	}    
    return nil;
}

BOOL setNFICoreTextStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
	if (strcmp(type, @encode(JustWidthDeltaEntry)) == 0) {
		JustWidthDeltaEntry returnValue = value.toJustWidthDeltaEntry;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MortLigatureSubtable)) == 0) {
		MortLigatureSubtable returnValue = value.toMortLigatureSubtable;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MorxRearrangementSubtable)) == 0) {
		MorxRearrangementSubtable returnValue = value.toMorxRearrangementSubtable;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MortInsertionSubtable)) == 0) {
		MortInsertionSubtable returnValue = value.toMortInsertionSubtable;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(TrakTable)) == 0) {
		TrakTable returnValue = value.toTrakTable;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(KerxStateEntry)) == 0) {
		KerxStateEntry returnValue = value.toKerxStateEntry;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(SFNTLookupBinarySearchHeader)) == 0) {
		SFNTLookupBinarySearchHeader returnValue = value.toSFNTLookupBinarySearchHeader;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(KerxCoordinateAction)) == 0) {
		KerxCoordinateAction returnValue = value.toKerxCoordinateAction;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(STXHeader)) == 0) {
		STXHeader returnValue = value.toSTXHeader;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(STHeader)) == 0) {
		STHeader returnValue = value.toSTHeader;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(JustPCDuctilityAction)) == 0) {
		JustPCDuctilityAction returnValue = value.toJustPCDuctilityAction;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MortRearrangementSubtable)) == 0) {
		MortRearrangementSubtable returnValue = value.toMortRearrangementSubtable;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(STXEntryTwo)) == 0) {
		STXEntryTwo returnValue = value.toSTXEntryTwo;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(JustPCConditionalAddAction)) == 0) {
		JustPCConditionalAddAction returnValue = value.toJustPCConditionalAddAction;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(PropLookupSegment)) == 0) {
		PropLookupSegment returnValue = value.toPropLookupSegment;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(OpbdSideValues)) == 0) {
		OpbdSideValues returnValue = value.toOpbdSideValues;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(KerxControlPointAction)) == 0) {
		KerxControlPointAction returnValue = value.toKerxControlPointAction;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(KerxOrderedListEntry)) == 0) {
		KerxOrderedListEntry returnValue = value.toKerxOrderedListEntry;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(TrakTableEntry)) == 0) {
		TrakTableEntry returnValue = value.toTrakTableEntry;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(STEntryOne)) == 0) {
		STEntryOne returnValue = value.toSTEntryOne;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(KerxAnchorPointAction)) == 0) {
		KerxAnchorPointAction returnValue = value.toKerxAnchorPointAction;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(KernKerningPair)) == 0) {
		KernKerningPair returnValue = value.toKernKerningPair;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(ALMXGlyphEntry)) == 0) {
		ALMXGlyphEntry returnValue = value.toALMXGlyphEntry;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(STEntryZero)) == 0) {
		STEntryZero returnValue = value.toSTEntryZero;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(STXEntryZero)) == 0) {
		STXEntryZero returnValue = value.toSTXEntryZero;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(ROTAGlyphEntry)) == 0) {
		ROTAGlyphEntry returnValue = value.toROTAGlyphEntry;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MorxLigatureSubtable)) == 0) {
		MorxLigatureSubtable returnValue = value.toMorxLigatureSubtable;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(KerxControlPointEntry)) == 0) {
		KerxControlPointEntry returnValue = value.toKerxControlPointEntry;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(KernOrderedListEntry)) == 0) {
		KernOrderedListEntry returnValue = value.toKernOrderedListEntry;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(LtagStringRange)) == 0) {
		LtagStringRange returnValue = value.toLtagStringRange;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AnkrTable)) == 0) {
		AnkrTable returnValue = value.toAnkrTable;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(JustPCGlyphRepeatAddAction)) == 0) {
		JustPCGlyphRepeatAddAction returnValue = value.toJustPCGlyphRepeatAddAction;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MortContextualSubtable)) == 0) {
		MortContextualSubtable returnValue = value.toMortContextualSubtable;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(JustTable)) == 0) {
		JustTable returnValue = value.toJustTable;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MortFeatureEntry)) == 0) {
		MortFeatureEntry returnValue = value.toMortFeatureEntry;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MorxContextualSubtable)) == 0) {
		MorxContextualSubtable returnValue = value.toMorxContextualSubtable;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(JustPCActionSubrecord)) == 0) {
		JustPCActionSubrecord returnValue = value.toJustPCActionSubrecord;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(STEntryTwo)) == 0) {
		STEntryTwo returnValue = value.toSTEntryTwo;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(STXEntryOne)) == 0) {
		STXEntryOne returnValue = value.toSTXEntryOne;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(KerxKerningPair)) == 0) {
		KerxKerningPair returnValue = value.toKerxKerningPair;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MorxInsertionSubtable)) == 0) {
		MorxInsertionSubtable returnValue = value.toMorxInsertionSubtable;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(PropLookupSingle)) == 0) {
		PropLookupSingle returnValue = value.toPropLookupSingle;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AnchorPoint)) == 0) {
		AnchorPoint returnValue = value.toAnchorPoint;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(KernStateEntry)) == 0) {
		KernStateEntry returnValue = value.toKernStateEntry;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(KerxIndexArrayHeader)) == 0) {
		KerxIndexArrayHeader returnValue = value.toKerxIndexArrayHeader;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(sfntFontDescriptor)) == 0) {
		sfntFontDescriptor returnValue = value.tosfntFontDescriptor;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(sfntNameRecord)) == 0) {
		sfntNameRecord returnValue = value.tosfntNameRecord;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(sfntFontRunFeature)) == 0) {
		sfntFontRunFeature returnValue = value.tosfntFontRunFeature;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(sfntCMapExtendedSubHeader)) == 0) {
		sfntCMapExtendedSubHeader returnValue = value.tosfntCMapExtendedSubHeader;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(sfntCMapEncoding)) == 0) {
		sfntCMapEncoding returnValue = value.tosfntCMapEncoding;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(sfntCMapSubHeader)) == 0) {
		sfntCMapSubHeader returnValue = value.tosfntCMapSubHeader;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(sfntFontFeatureSetting)) == 0) {
		sfntFontFeatureSetting returnValue = value.tosfntFontFeatureSetting;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(sfntDirectoryEntry)) == 0) {
		sfntDirectoryEntry returnValue = value.tosfntDirectoryEntry;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(sfntVariationAxis)) == 0) {
		sfntVariationAxis returnValue = value.tosfntVariationAxis;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(sfntFeatureName)) == 0) {
		sfntFeatureName returnValue = value.tosfntFeatureName;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(FontVariation)) == 0) {
		FontVariation returnValue = value.toFontVariation;
		[invocation setReturnValue: &returnValue];
		return YES;
	}    
    return NO;
}

