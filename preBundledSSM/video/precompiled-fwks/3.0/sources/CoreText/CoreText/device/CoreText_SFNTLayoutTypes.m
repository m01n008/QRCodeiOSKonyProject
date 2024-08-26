#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreText_SFNTLayoutTypes)
+(JSValue*) valueWithJustWidthDeltaEntry: (JustWidthDeltaEntry) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"justClass": @(s.justClass),
		@"beforeGrowLimit": @(s.beforeGrowLimit),
		@"beforeShrinkLimit": @(s.beforeShrinkLimit),
		@"afterGrowLimit": @(s.afterGrowLimit),
		@"afterShrinkLimit": @(s.afterShrinkLimit),
		@"growFlags": @(s.growFlags),
		@"shrinkFlags": @(s.shrinkFlags),
	} inContext: context];
}
-(JustWidthDeltaEntry) toJustWidthDeltaEntry {
	return (JustWidthDeltaEntry) {
		(UInt32) [self[@"justClass"] toDouble],
		(Fixed) [self[@"beforeGrowLimit"] toDouble],
		(Fixed) [self[@"beforeShrinkLimit"] toDouble],
		(Fixed) [self[@"afterGrowLimit"] toDouble],
		(Fixed) [self[@"afterShrinkLimit"] toDouble],
		(JustificationFlags) [self[@"growFlags"] toUInt32],
		(JustificationFlags) [self[@"shrinkFlags"] toUInt32],
	};
}
+(JSValue*) valueWithMortLigatureSubtable: (MortLigatureSubtable) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"filler": @(s.header.filler),
		@"nClasses": @(s.header.nClasses),
		@"classTableOffset": @(s.header.classTableOffset),
		@"stateArrayOffset": @(s.header.stateArrayOffset),
		@"entryTableOffset": @(s.header.entryTableOffset),
		@"ligatureActionTableOffset": @(s.ligatureActionTableOffset),
		@"componentTableOffset": @(s.componentTableOffset),
		@"ligatureTableOffset": @(s.ligatureTableOffset),
	} inContext: context];
}
-(MortLigatureSubtable) toMortLigatureSubtable {
	return (MortLigatureSubtable) {
		[self[@"header"] toSTHeader],
		(UInt16) [self[@"ligatureActionTableOffset"] toUInt32],
		(UInt16) [self[@"componentTableOffset"] toUInt32],
		(UInt16) [self[@"ligatureTableOffset"] toUInt32],
	};
}
+(JSValue*) valueWithMorxRearrangementSubtable: (MorxRearrangementSubtable) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"nClasses": @(s.header.nClasses),
		@"classTableOffset": @(s.header.classTableOffset),
		@"stateArrayOffset": @(s.header.stateArrayOffset),
		@"entryTableOffset": @(s.header.entryTableOffset),
	} inContext: context];
}
-(MorxRearrangementSubtable) toMorxRearrangementSubtable {
	return (MorxRearrangementSubtable) {
		[self[@"header"] toSTXHeader],
	};
}
+(JSValue*) valueWithMortInsertionSubtable: (MortInsertionSubtable) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"filler": @(s.header.filler),
		@"nClasses": @(s.header.nClasses),
		@"classTableOffset": @(s.header.classTableOffset),
		@"stateArrayOffset": @(s.header.stateArrayOffset),
		@"entryTableOffset": @(s.header.entryTableOffset),
	} inContext: context];
}
-(MortInsertionSubtable) toMortInsertionSubtable {
	return (MortInsertionSubtable) {
		[self[@"header"] toSTHeader],
	};
}
+(JSValue*) valueWithTrakTable: (TrakTable) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"version": @(s.version),
		@"format": @(s.format),
		@"horizOffset": @(s.horizOffset),
		@"vertOffset": @(s.vertOffset),
	} inContext: context];
}
-(TrakTable) toTrakTable {
	return (TrakTable) {
		(Fixed) [self[@"version"] toDouble],
		(UInt16) [self[@"format"] toUInt32],
		(UInt16) [self[@"horizOffset"] toUInt32],
		(UInt16) [self[@"vertOffset"] toUInt32],
	};
}
+(JSValue*) valueWithKerxStateEntry: (KerxStateEntry) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"newState": @(s.newState),
		@"flags": @(s.flags),
		@"valueIndex": @(s.valueIndex),
	} inContext: context];
}
-(KerxStateEntry) toKerxStateEntry {
	return (KerxStateEntry) {
		(UInt16) [self[@"newState"] toUInt32],
		(UInt16) [self[@"flags"] toUInt32],
		(UInt16) [self[@"valueIndex"] toUInt32],
	};
}
+(JSValue*) valueWithSFNTLookupBinarySearchHeader: (SFNTLookupBinarySearchHeader) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"unitSize": @(s.unitSize),
		@"nUnits": @(s.nUnits),
		@"searchRange": @(s.searchRange),
		@"entrySelector": @(s.entrySelector),
		@"rangeShift": @(s.rangeShift),
	} inContext: context];
}
-(SFNTLookupBinarySearchHeader) toSFNTLookupBinarySearchHeader {
	return (SFNTLookupBinarySearchHeader) {
		(UInt16) [self[@"unitSize"] toUInt32],
		(UInt16) [self[@"nUnits"] toUInt32],
		(UInt16) [self[@"searchRange"] toUInt32],
		(UInt16) [self[@"entrySelector"] toUInt32],
		(UInt16) [self[@"rangeShift"] toUInt32],
	};
}
+(JSValue*) valueWithKerxCoordinateAction: (KerxCoordinateAction) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"markX": @(s.markX),
		@"markY": @(s.markY),
		@"currX": @(s.currX),
		@"currY": @(s.currY),
	} inContext: context];
}
-(KerxCoordinateAction) toKerxCoordinateAction {
	return (KerxCoordinateAction) {
		(UInt16) [self[@"markX"] toUInt32],
		(UInt16) [self[@"markY"] toUInt32],
		(UInt16) [self[@"currX"] toUInt32],
		(UInt16) [self[@"currY"] toUInt32],
	};
}
+(JSValue*) valueWithSTXHeader: (STXHeader) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"nClasses": @(s.nClasses),
		@"classTableOffset": @(s.classTableOffset),
		@"stateArrayOffset": @(s.stateArrayOffset),
		@"entryTableOffset": @(s.entryTableOffset),
	} inContext: context];
}
-(STXHeader) toSTXHeader {
	return (STXHeader) {
		(UInt32) [self[@"nClasses"] toDouble],
		(UInt32) [self[@"classTableOffset"] toDouble],
		(UInt32) [self[@"stateArrayOffset"] toDouble],
		(UInt32) [self[@"entryTableOffset"] toDouble],
	};
}
+(JSValue*) valueWithSTHeader: (STHeader) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"filler": @(s.filler),
		@"nClasses": @(s.nClasses),
		@"classTableOffset": @(s.classTableOffset),
		@"stateArrayOffset": @(s.stateArrayOffset),
		@"entryTableOffset": @(s.entryTableOffset),
	} inContext: context];
}
-(STHeader) toSTHeader {
	return (STHeader) {
		(UInt8) [self[@"filler"] toUInt32],
		(STClass) [self[@"nClasses"] toUInt32],
		(UInt16) [self[@"classTableOffset"] toUInt32],
		(UInt16) [self[@"stateArrayOffset"] toUInt32],
		(UInt16) [self[@"entryTableOffset"] toUInt32],
	};
}
+(JSValue*) valueWithJustPCDuctilityAction: (JustPCDuctilityAction) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"ductilityAxis": @(s.ductilityAxis),
		@"minimumLimit": @(s.minimumLimit),
		@"noStretchValue": @(s.noStretchValue),
		@"maximumLimit": @(s.maximumLimit),
	} inContext: context];
}
-(JustPCDuctilityAction) toJustPCDuctilityAction {
	return (JustPCDuctilityAction) {
		(UInt32) [self[@"ductilityAxis"] toDouble],
		(Fixed) [self[@"minimumLimit"] toDouble],
		(Fixed) [self[@"noStretchValue"] toDouble],
		(Fixed) [self[@"maximumLimit"] toDouble],
	};
}
+(JSValue*) valueWithMortRearrangementSubtable: (MortRearrangementSubtable) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"filler": @(s.header.filler),
		@"nClasses": @(s.header.nClasses),
		@"classTableOffset": @(s.header.classTableOffset),
		@"stateArrayOffset": @(s.header.stateArrayOffset),
		@"entryTableOffset": @(s.header.entryTableOffset),
	} inContext: context];
}
-(MortRearrangementSubtable) toMortRearrangementSubtable {
	return (MortRearrangementSubtable) {
		[self[@"header"] toSTHeader],
	};
}
+(JSValue*) valueWithSTXEntryTwo: (STXEntryTwo) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"newState": @(s.newState),
		@"flags": @(s.flags),
		@"index1": @(s.index1),
		@"index2": @(s.index2),
	} inContext: context];
}
-(STXEntryTwo) toSTXEntryTwo {
	return (STXEntryTwo) {
		(STXStateIndex) [self[@"newState"] toUInt32],
		(UInt16) [self[@"flags"] toUInt32],
		(UInt16) [self[@"index1"] toUInt32],
		(UInt16) [self[@"index2"] toUInt32],
	};
}
+(JSValue*) valueWithJustPCConditionalAddAction: (JustPCConditionalAddAction) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"substThreshold": @(s.substThreshold),
		@"addGlyph": @(s.addGlyph),
		@"substGlyph": @(s.substGlyph),
	} inContext: context];
}
-(JustPCConditionalAddAction) toJustPCConditionalAddAction {
	return (JustPCConditionalAddAction) {
		(Fixed) [self[@"substThreshold"] toDouble],
		(UInt16) [self[@"addGlyph"] toUInt32],
		(UInt16) [self[@"substGlyph"] toUInt32],
	};
}
+(JSValue*) valueWithPropLookupSegment: (PropLookupSegment) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"lastGlyph": @(s.lastGlyph),
		@"firstGlyph": @(s.firstGlyph),
		@"value": @(s.value),
	} inContext: context];
}
-(PropLookupSegment) toPropLookupSegment {
	return (PropLookupSegment) {
		(UInt16) [self[@"lastGlyph"] toUInt32],
		(UInt16) [self[@"firstGlyph"] toUInt32],
		(UInt16) [self[@"value"] toUInt32],
	};
}
+(JSValue*) valueWithOpbdSideValues: (OpbdSideValues) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"leftSideShift": @(s.leftSideShift),
		@"topSideShift": @(s.topSideShift),
		@"rightSideShift": @(s.rightSideShift),
		@"bottomSideShift": @(s.bottomSideShift),
	} inContext: context];
}
-(OpbdSideValues) toOpbdSideValues {
	return (OpbdSideValues) {
		(SInt16) [self[@"leftSideShift"] toInt32],
		(SInt16) [self[@"topSideShift"] toInt32],
		(SInt16) [self[@"rightSideShift"] toInt32],
		(SInt16) [self[@"bottomSideShift"] toInt32],
	};
}
+(JSValue*) valueWithKerxControlPointAction: (KerxControlPointAction) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"markControlPoint": @(s.markControlPoint),
		@"currControlPoint": @(s.currControlPoint),
	} inContext: context];
}
-(KerxControlPointAction) toKerxControlPointAction {
	return (KerxControlPointAction) {
		(UInt16) [self[@"markControlPoint"] toUInt32],
		(UInt16) [self[@"currControlPoint"] toUInt32],
	};
}
+(JSValue*) valueWithKerxOrderedListEntry: (KerxOrderedListEntry) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"left": @(s.pair.left),
		@"right": @(s.pair.right),
		@"value": @(s.value),
	} inContext: context];
}
-(KerxOrderedListEntry) toKerxOrderedListEntry {
	return (KerxOrderedListEntry) {
		[self[@"pair"] toKerxKerningPair],
		(KernKerningValue) [self[@"value"] toInt32],
	};
}
+(JSValue*) valueWithTrakTableEntry: (TrakTableEntry) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"track": @(s.track),
		@"nameTableIndex": @(s.nameTableIndex),
		@"sizesOffset": @(s.sizesOffset),
	} inContext: context];
}
-(TrakTableEntry) toTrakTableEntry {
	return (TrakTableEntry) {
		(Fixed) [self[@"track"] toDouble],
		(UInt16) [self[@"nameTableIndex"] toUInt32],
		(UInt16) [self[@"sizesOffset"] toUInt32],
	};
}
+(JSValue*) valueWithSTEntryOne: (STEntryOne) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"newState": @(s.newState),
		@"flags": @(s.flags),
		@"offset1": @(s.offset1),
	} inContext: context];
}
-(STEntryOne) toSTEntryOne {
	return (STEntryOne) {
		(UInt16) [self[@"newState"] toUInt32],
		(UInt16) [self[@"flags"] toUInt32],
		(UInt16) [self[@"offset1"] toUInt32],
	};
}
+(JSValue*) valueWithKerxAnchorPointAction: (KerxAnchorPointAction) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"markAnchorPoint": @(s.markAnchorPoint),
		@"currAnchorPoint": @(s.currAnchorPoint),
	} inContext: context];
}
-(KerxAnchorPointAction) toKerxAnchorPointAction {
	return (KerxAnchorPointAction) {
		(UInt16) [self[@"markAnchorPoint"] toUInt32],
		(UInt16) [self[@"currAnchorPoint"] toUInt32],
	};
}
+(JSValue*) valueWithKernKerningPair: (KernKerningPair) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"left": @(s.left),
		@"right": @(s.right),
	} inContext: context];
}
-(KernKerningPair) toKernKerningPair {
	return (KernKerningPair) {
		(UInt16) [self[@"left"] toUInt32],
		(UInt16) [self[@"right"] toUInt32],
	};
}
+(JSValue*) valueWithALMXGlyphEntry: (ALMXGlyphEntry) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"GlyphIndexOffset": @(s.GlyphIndexOffset),
		@"HorizontalAdvance": @(s.HorizontalAdvance),
		@"XOffsetToHOrigin": @(s.XOffsetToHOrigin),
		@"VerticalAdvance": @(s.VerticalAdvance),
		@"YOffsetToVOrigin": @(s.YOffsetToVOrigin),
	} inContext: context];
}
-(ALMXGlyphEntry) toALMXGlyphEntry {
	return (ALMXGlyphEntry) {
		(SInt16) [self[@"GlyphIndexOffset"] toInt32],
		(SInt16) [self[@"HorizontalAdvance"] toInt32],
		(SInt16) [self[@"XOffsetToHOrigin"] toInt32],
		(SInt16) [self[@"VerticalAdvance"] toInt32],
		(SInt16) [self[@"YOffsetToVOrigin"] toInt32],
	};
}
+(JSValue*) valueWithSTEntryZero: (STEntryZero) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"newState": @(s.newState),
		@"flags": @(s.flags),
	} inContext: context];
}
-(STEntryZero) toSTEntryZero {
	return (STEntryZero) {
		(UInt16) [self[@"newState"] toUInt32],
		(UInt16) [self[@"flags"] toUInt32],
	};
}
+(JSValue*) valueWithSTXEntryZero: (STXEntryZero) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"newState": @(s.newState),
		@"flags": @(s.flags),
	} inContext: context];
}
-(STXEntryZero) toSTXEntryZero {
	return (STXEntryZero) {
		(STXStateIndex) [self[@"newState"] toUInt32],
		(UInt16) [self[@"flags"] toUInt32],
	};
}
+(JSValue*) valueWithROTAGlyphEntry: (ROTAGlyphEntry) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"GlyphIndexOffset": @(s.GlyphIndexOffset),
		@"HBaselineOffset": @(s.HBaselineOffset),
		@"VBaselineOffset": @(s.VBaselineOffset),
	} inContext: context];
}
-(ROTAGlyphEntry) toROTAGlyphEntry {
	return (ROTAGlyphEntry) {
		(SInt16) [self[@"GlyphIndexOffset"] toInt32],
		(SInt16) [self[@"HBaselineOffset"] toInt32],
		(SInt16) [self[@"VBaselineOffset"] toInt32],
	};
}
+(JSValue*) valueWithMorxLigatureSubtable: (MorxLigatureSubtable) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"nClasses": @(s.header.nClasses),
		@"classTableOffset": @(s.header.classTableOffset),
		@"stateArrayOffset": @(s.header.stateArrayOffset),
		@"entryTableOffset": @(s.header.entryTableOffset),
		@"ligatureActionTableOffset": @(s.ligatureActionTableOffset),
		@"componentTableOffset": @(s.componentTableOffset),
		@"ligatureTableOffset": @(s.ligatureTableOffset),
	} inContext: context];
}
-(MorxLigatureSubtable) toMorxLigatureSubtable {
	return (MorxLigatureSubtable) {
		[self[@"header"] toSTXHeader],
		(UInt32) [self[@"ligatureActionTableOffset"] toDouble],
		(UInt32) [self[@"componentTableOffset"] toDouble],
		(UInt32) [self[@"ligatureTableOffset"] toDouble],
	};
}
+(JSValue*) valueWithKerxControlPointEntry: (KerxControlPointEntry) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"newState": @(s.newState),
		@"flags": @(s.flags),
		@"actionIndex": @(s.actionIndex),
	} inContext: context];
}
-(KerxControlPointEntry) toKerxControlPointEntry {
	return (KerxControlPointEntry) {
		(UInt16) [self[@"newState"] toUInt32],
		(UInt16) [self[@"flags"] toUInt32],
		(UInt16) [self[@"actionIndex"] toUInt32],
	};
}
+(JSValue*) valueWithKernOrderedListEntry: (KernOrderedListEntry) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"left": @(s.pair.left),
		@"right": @(s.pair.right),
		@"value": @(s.value),
	} inContext: context];
}
-(KernOrderedListEntry) toKernOrderedListEntry {
	return (KernOrderedListEntry) {
		[self[@"pair"] toKernKerningPair],
		(KernKerningValue) [self[@"value"] toInt32],
	};
}
+(JSValue*) valueWithLtagStringRange: (LtagStringRange) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"offset": @(s.offset),
		@"length": @(s.length),
	} inContext: context];
}
-(LtagStringRange) toLtagStringRange {
	return (LtagStringRange) {
		(UInt16) [self[@"offset"] toUInt32],
		(UInt16) [self[@"length"] toUInt32],
	};
}
+(JSValue*) valueWithAnkrTable: (AnkrTable) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"version": @(s.version),
		@"flags": @(s.flags),
		@"lookupTableOffset": @(s.lookupTableOffset),
		@"anchorPointTableOffset": @(s.anchorPointTableOffset),
	} inContext: context];
}
-(AnkrTable) toAnkrTable {
	return (AnkrTable) {
		(UInt16) [self[@"version"] toUInt32],
		(UInt16) [self[@"flags"] toUInt32],
		(UInt32) [self[@"lookupTableOffset"] toDouble],
		(UInt32) [self[@"anchorPointTableOffset"] toDouble],
	};
}
+(JSValue*) valueWithJustPCGlyphRepeatAddAction: (JustPCGlyphRepeatAddAction) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"flags": @(s.flags),
		@"glyph": @(s.glyph),
	} inContext: context];
}
-(JustPCGlyphRepeatAddAction) toJustPCGlyphRepeatAddAction {
	return (JustPCGlyphRepeatAddAction) {
		(UInt16) [self[@"flags"] toUInt32],
		(UInt16) [self[@"glyph"] toUInt32],
	};
}
+(JSValue*) valueWithMortContextualSubtable: (MortContextualSubtable) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"filler": @(s.header.filler),
		@"nClasses": @(s.header.nClasses),
		@"classTableOffset": @(s.header.classTableOffset),
		@"stateArrayOffset": @(s.header.stateArrayOffset),
		@"entryTableOffset": @(s.header.entryTableOffset),
		@"substitutionTableOffset": @(s.substitutionTableOffset),
	} inContext: context];
}
-(MortContextualSubtable) toMortContextualSubtable {
	return (MortContextualSubtable) {
		[self[@"header"] toSTHeader],
		(UInt16) [self[@"substitutionTableOffset"] toUInt32],
	};
}
+(JSValue*) valueWithJustTable: (JustTable) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"version": @(s.version),
		@"format": @(s.format),
		@"horizHeaderOffset": @(s.horizHeaderOffset),
		@"vertHeaderOffset": @(s.vertHeaderOffset),
	} inContext: context];
}
-(JustTable) toJustTable {
	return (JustTable) {
		(Fixed) [self[@"version"] toDouble],
		(UInt16) [self[@"format"] toUInt32],
		(UInt16) [self[@"horizHeaderOffset"] toUInt32],
		(UInt16) [self[@"vertHeaderOffset"] toUInt32],
	};
}
+(JSValue*) valueWithMortFeatureEntry: (MortFeatureEntry) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"featureType": @(s.featureType),
		@"featureSelector": @(s.featureSelector),
		@"enableFlags": @(s.enableFlags),
		@"disableFlags": @(s.disableFlags),
	} inContext: context];
}
-(MortFeatureEntry) toMortFeatureEntry {
	return (MortFeatureEntry) {
		(UInt16) [self[@"featureType"] toUInt32],
		(UInt16) [self[@"featureSelector"] toUInt32],
		(MortSubtableMaskFlags) [self[@"enableFlags"] toDouble],
		(MortSubtableMaskFlags) [self[@"disableFlags"] toDouble],
	};
}
+(JSValue*) valueWithMorxContextualSubtable: (MorxContextualSubtable) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"nClasses": @(s.header.nClasses),
		@"classTableOffset": @(s.header.classTableOffset),
		@"stateArrayOffset": @(s.header.stateArrayOffset),
		@"entryTableOffset": @(s.header.entryTableOffset),
		@"substitutionTableOffset": @(s.substitutionTableOffset),
	} inContext: context];
}
-(MorxContextualSubtable) toMorxContextualSubtable {
	return (MorxContextualSubtable) {
		[self[@"header"] toSTXHeader],
		(UInt32) [self[@"substitutionTableOffset"] toDouble],
	};
}
+(JSValue*) valueWithJustPCActionSubrecord: (JustPCActionSubrecord) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"theClass": @(s.theClass),
		@"theType": @(s.theType),
		@"length": @(s.length),
		@"data": @(s.data),
	} inContext: context];
}
-(JustPCActionSubrecord) toJustPCActionSubrecord {
	return (JustPCActionSubrecord) {
		(UInt16) [self[@"theClass"] toUInt32],
		(JustPCActionType) [self[@"theType"] toUInt32],
		(UInt32) [self[@"length"] toDouble],
		(UInt32) [self[@"data"] toDouble],
	};
}
+(JSValue*) valueWithSTEntryTwo: (STEntryTwo) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"newState": @(s.newState),
		@"flags": @(s.flags),
		@"offset1": @(s.offset1),
		@"offset2": @(s.offset2),
	} inContext: context];
}
-(STEntryTwo) toSTEntryTwo {
	return (STEntryTwo) {
		(UInt16) [self[@"newState"] toUInt32],
		(UInt16) [self[@"flags"] toUInt32],
		(UInt16) [self[@"offset1"] toUInt32],
		(UInt16) [self[@"offset2"] toUInt32],
	};
}
+(JSValue*) valueWithSTXEntryOne: (STXEntryOne) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"newState": @(s.newState),
		@"flags": @(s.flags),
		@"index1": @(s.index1),
	} inContext: context];
}
-(STXEntryOne) toSTXEntryOne {
	return (STXEntryOne) {
		(STXStateIndex) [self[@"newState"] toUInt32],
		(UInt16) [self[@"flags"] toUInt32],
		(UInt16) [self[@"index1"] toUInt32],
	};
}
+(JSValue*) valueWithKerxKerningPair: (KerxKerningPair) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"left": @(s.left),
		@"right": @(s.right),
	} inContext: context];
}
-(KerxKerningPair) toKerxKerningPair {
	return (KerxKerningPair) {
		(UInt16) [self[@"left"] toUInt32],
		(UInt16) [self[@"right"] toUInt32],
	};
}
+(JSValue*) valueWithMorxInsertionSubtable: (MorxInsertionSubtable) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"nClasses": @(s.header.nClasses),
		@"classTableOffset": @(s.header.classTableOffset),
		@"stateArrayOffset": @(s.header.stateArrayOffset),
		@"entryTableOffset": @(s.header.entryTableOffset),
		@"insertionGlyphTableOffset": @(s.insertionGlyphTableOffset),
	} inContext: context];
}
-(MorxInsertionSubtable) toMorxInsertionSubtable {
	return (MorxInsertionSubtable) {
		[self[@"header"] toSTXHeader],
		(UInt32) [self[@"insertionGlyphTableOffset"] toDouble],
	};
}
+(JSValue*) valueWithPropLookupSingle: (PropLookupSingle) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"glyph": @(s.glyph),
		@"props": @(s.props),
	} inContext: context];
}
-(PropLookupSingle) toPropLookupSingle {
	return (PropLookupSingle) {
		(UInt16) [self[@"glyph"] toUInt32],
		(PropCharProperties) [self[@"props"] toUInt32],
	};
}
+(JSValue*) valueWithAnchorPoint: (AnchorPoint) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"x": @(s.x),
		@"y": @(s.y),
	} inContext: context];
}
-(AnchorPoint) toAnchorPoint {
	return (AnchorPoint) {
		(SInt16) [self[@"x"] toInt32],
		(SInt16) [self[@"y"] toInt32],
	};
}
+(JSValue*) valueWithKernStateEntry: (KernStateEntry) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"newState": @(s.newState),
		@"flags": @(s.flags),
	} inContext: context];
}
-(KernStateEntry) toKernStateEntry {
	return (KernStateEntry) {
		(UInt16) [self[@"newState"] toUInt32],
		(UInt16) [self[@"flags"] toUInt32],
	};
}
+(JSValue*) valueWithKerxIndexArrayHeader: (KerxIndexArrayHeader) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"flags": @(s.flags),
		@"rowCount": @(s.rowCount),
		@"columnCount": @(s.columnCount),
		@"rowIndexTableOffset": @(s.rowIndexTableOffset),
		@"columnIndexTableOffset": @(s.columnIndexTableOffset),
		@"kerningArrayOffset": @(s.kerningArrayOffset),
		@"kerningVectorOffset": @(s.kerningVectorOffset),
	} inContext: context];
}
-(KerxIndexArrayHeader) toKerxIndexArrayHeader {
	return (KerxIndexArrayHeader) {
		(UInt32) [self[@"flags"] toDouble],
		(UInt16) [self[@"rowCount"] toUInt32],
		(UInt16) [self[@"columnCount"] toUInt32],
		(UInt32) [self[@"rowIndexTableOffset"] toDouble],
		(UInt32) [self[@"columnIndexTableOffset"] toDouble],
		(UInt32) [self[@"kerningArrayOffset"] toDouble],
		(UInt32) [self[@"kerningVectorOffset"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAllTypographicFeaturesType"] = @0;
	context[@"kLigaturesType"] = @1;
	context[@"kCursiveConnectionType"] = @2;
	context[@"kLetterCaseType"] = @3;
	context[@"kVerticalSubstitutionType"] = @4;
	context[@"kLinguisticRearrangementType"] = @5;
	context[@"kNumberSpacingType"] = @6;
	context[@"kSmartSwashType"] = @8;
	context[@"kDiacriticsType"] = @9;
	context[@"kVerticalPositionType"] = @10;
	context[@"kFractionsType"] = @11;
	context[@"kOverlappingCharactersType"] = @13;
	context[@"kTypographicExtrasType"] = @14;
	context[@"kMathematicalExtrasType"] = @15;
	context[@"kOrnamentSetsType"] = @16;
	context[@"kCharacterAlternativesType"] = @17;
	context[@"kDesignComplexityType"] = @18;
	context[@"kStyleOptionsType"] = @19;
	context[@"kCharacterShapeType"] = @20;
	context[@"kNumberCaseType"] = @21;
	context[@"kTextSpacingType"] = @22;
	context[@"kTransliterationType"] = @23;
	context[@"kAnnotationType"] = @24;
	context[@"kKanaSpacingType"] = @25;
	context[@"kIdeographicSpacingType"] = @26;
	context[@"kUnicodeDecompositionType"] = @27;
	context[@"kRubyKanaType"] = @28;
	context[@"kCJKSymbolAlternativesType"] = @29;
	context[@"kIdeographicAlternativesType"] = @30;
	context[@"kCJKVerticalRomanPlacementType"] = @31;
	context[@"kItalicCJKRomanType"] = @32;
	context[@"kCaseSensitiveLayoutType"] = @33;
	context[@"kAlternateKanaType"] = @34;
	context[@"kStylisticAlternativesType"] = @35;
	context[@"kContextualAlternatesType"] = @36;
	context[@"kLowerCaseType"] = @37;
	context[@"kUpperCaseType"] = @38;
	context[@"kLanguageTagType"] = @39;
	context[@"kCJKRomanSpacingType"] = @103;
	context[@"kLastFeatureType"] = @-1;

	context[@"kAllTypeFeaturesOnSelector"] = @0;
	context[@"kAllTypeFeaturesOffSelector"] = @1;

	context[@"kRequiredLigaturesOnSelector"] = @0;
	context[@"kRequiredLigaturesOffSelector"] = @1;
	context[@"kCommonLigaturesOnSelector"] = @2;
	context[@"kCommonLigaturesOffSelector"] = @3;
	context[@"kRareLigaturesOnSelector"] = @4;
	context[@"kRareLigaturesOffSelector"] = @5;
	context[@"kLogosOnSelector"] = @6;
	context[@"kLogosOffSelector"] = @7;
	context[@"kRebusPicturesOnSelector"] = @8;
	context[@"kRebusPicturesOffSelector"] = @9;
	context[@"kDiphthongLigaturesOnSelector"] = @10;
	context[@"kDiphthongLigaturesOffSelector"] = @11;
	context[@"kSquaredLigaturesOnSelector"] = @12;
	context[@"kSquaredLigaturesOffSelector"] = @13;
	context[@"kAbbrevSquaredLigaturesOnSelector"] = @14;
	context[@"kAbbrevSquaredLigaturesOffSelector"] = @15;
	context[@"kSymbolLigaturesOnSelector"] = @16;
	context[@"kSymbolLigaturesOffSelector"] = @17;
	context[@"kContextualLigaturesOnSelector"] = @18;
	context[@"kContextualLigaturesOffSelector"] = @19;
	context[@"kHistoricalLigaturesOnSelector"] = @20;
	context[@"kHistoricalLigaturesOffSelector"] = @21;

	context[@"kUnconnectedSelector"] = @0;
	context[@"kPartiallyConnectedSelector"] = @1;
	context[@"kCursiveSelector"] = @2;

	context[@"kUpperAndLowerCaseSelector"] = @0;
	context[@"kAllCapsSelector"] = @1;
	context[@"kAllLowerCaseSelector"] = @2;
	context[@"kSmallCapsSelector"] = @3;
	context[@"kInitialCapsSelector"] = @4;
	context[@"kInitialCapsAndSmallCapsSelector"] = @5;

	context[@"kSubstituteVerticalFormsOnSelector"] = @0;
	context[@"kSubstituteVerticalFormsOffSelector"] = @1;

	context[@"kLinguisticRearrangementOnSelector"] = @0;
	context[@"kLinguisticRearrangementOffSelector"] = @1;

	context[@"kMonospacedNumbersSelector"] = @0;
	context[@"kProportionalNumbersSelector"] = @1;
	context[@"kThirdWidthNumbersSelector"] = @2;
	context[@"kQuarterWidthNumbersSelector"] = @3;

	context[@"kWordInitialSwashesOnSelector"] = @0;
	context[@"kWordInitialSwashesOffSelector"] = @1;
	context[@"kWordFinalSwashesOnSelector"] = @2;
	context[@"kWordFinalSwashesOffSelector"] = @3;
	context[@"kLineInitialSwashesOnSelector"] = @4;
	context[@"kLineInitialSwashesOffSelector"] = @5;
	context[@"kLineFinalSwashesOnSelector"] = @6;
	context[@"kLineFinalSwashesOffSelector"] = @7;
	context[@"kNonFinalSwashesOnSelector"] = @8;
	context[@"kNonFinalSwashesOffSelector"] = @9;

	context[@"kShowDiacriticsSelector"] = @0;
	context[@"kHideDiacriticsSelector"] = @1;
	context[@"kDecomposeDiacriticsSelector"] = @2;

	context[@"kNormalPositionSelector"] = @0;
	context[@"kSuperiorsSelector"] = @1;
	context[@"kInferiorsSelector"] = @2;
	context[@"kOrdinalsSelector"] = @3;
	context[@"kScientificInferiorsSelector"] = @4;

	context[@"kNoFractionsSelector"] = @0;
	context[@"kVerticalFractionsSelector"] = @1;
	context[@"kDiagonalFractionsSelector"] = @2;

	context[@"kPreventOverlapOnSelector"] = @0;
	context[@"kPreventOverlapOffSelector"] = @1;

	context[@"kHyphensToEmDashOnSelector"] = @0;
	context[@"kHyphensToEmDashOffSelector"] = @1;
	context[@"kHyphenToEnDashOnSelector"] = @2;
	context[@"kHyphenToEnDashOffSelector"] = @3;
	context[@"kSlashedZeroOnSelector"] = @4;
	context[@"kSlashedZeroOffSelector"] = @5;
	context[@"kFormInterrobangOnSelector"] = @6;
	context[@"kFormInterrobangOffSelector"] = @7;
	context[@"kSmartQuotesOnSelector"] = @8;
	context[@"kSmartQuotesOffSelector"] = @9;
	context[@"kPeriodsToEllipsisOnSelector"] = @10;
	context[@"kPeriodsToEllipsisOffSelector"] = @11;

	context[@"kHyphenToMinusOnSelector"] = @0;
	context[@"kHyphenToMinusOffSelector"] = @1;
	context[@"kAsteriskToMultiplyOnSelector"] = @2;
	context[@"kAsteriskToMultiplyOffSelector"] = @3;
	context[@"kSlashToDivideOnSelector"] = @4;
	context[@"kSlashToDivideOffSelector"] = @5;
	context[@"kInequalityLigaturesOnSelector"] = @6;
	context[@"kInequalityLigaturesOffSelector"] = @7;
	context[@"kExponentsOnSelector"] = @8;
	context[@"kExponentsOffSelector"] = @9;
	context[@"kMathematicalGreekOnSelector"] = @10;
	context[@"kMathematicalGreekOffSelector"] = @11;

	context[@"kNoOrnamentsSelector"] = @0;
	context[@"kDingbatsSelector"] = @1;
	context[@"kPiCharactersSelector"] = @2;
	context[@"kFleuronsSelector"] = @3;
	context[@"kDecorativeBordersSelector"] = @4;
	context[@"kInternationalSymbolsSelector"] = @5;
	context[@"kMathSymbolsSelector"] = @6;

	context[@"kNoAlternatesSelector"] = @0;

	context[@"kDesignLevel1Selector"] = @0;
	context[@"kDesignLevel2Selector"] = @1;
	context[@"kDesignLevel3Selector"] = @2;
	context[@"kDesignLevel4Selector"] = @3;
	context[@"kDesignLevel5Selector"] = @4;

	context[@"kNoStyleOptionsSelector"] = @0;
	context[@"kDisplayTextSelector"] = @1;
	context[@"kEngravedTextSelector"] = @2;
	context[@"kIlluminatedCapsSelector"] = @3;
	context[@"kTitlingCapsSelector"] = @4;
	context[@"kTallCapsSelector"] = @5;

	context[@"kTraditionalCharactersSelector"] = @0;
	context[@"kSimplifiedCharactersSelector"] = @1;
	context[@"kJIS1978CharactersSelector"] = @2;
	context[@"kJIS1983CharactersSelector"] = @3;
	context[@"kJIS1990CharactersSelector"] = @4;
	context[@"kTraditionalAltOneSelector"] = @5;
	context[@"kTraditionalAltTwoSelector"] = @6;
	context[@"kTraditionalAltThreeSelector"] = @7;
	context[@"kTraditionalAltFourSelector"] = @8;
	context[@"kTraditionalAltFiveSelector"] = @9;
	context[@"kExpertCharactersSelector"] = @10;
	context[@"kJIS2004CharactersSelector"] = @11;
	context[@"kHojoCharactersSelector"] = @12;
	context[@"kNLCCharactersSelector"] = @13;
	context[@"kTraditionalNamesCharactersSelector"] = @14;

	context[@"kLowerCaseNumbersSelector"] = @0;
	context[@"kUpperCaseNumbersSelector"] = @1;

	context[@"kProportionalTextSelector"] = @0;
	context[@"kMonospacedTextSelector"] = @1;
	context[@"kHalfWidthTextSelector"] = @2;
	context[@"kThirdWidthTextSelector"] = @3;
	context[@"kQuarterWidthTextSelector"] = @4;
	context[@"kAltProportionalTextSelector"] = @5;
	context[@"kAltHalfWidthTextSelector"] = @6;

	context[@"kNoTransliterationSelector"] = @0;
	context[@"kHanjaToHangulSelector"] = @1;
	context[@"kHiraganaToKatakanaSelector"] = @2;
	context[@"kKatakanaToHiraganaSelector"] = @3;
	context[@"kKanaToRomanizationSelector"] = @4;
	context[@"kRomanizationToHiraganaSelector"] = @5;
	context[@"kRomanizationToKatakanaSelector"] = @6;
	context[@"kHanjaToHangulAltOneSelector"] = @7;
	context[@"kHanjaToHangulAltTwoSelector"] = @8;
	context[@"kHanjaToHangulAltThreeSelector"] = @9;

	context[@"kNoAnnotationSelector"] = @0;
	context[@"kBoxAnnotationSelector"] = @1;
	context[@"kRoundedBoxAnnotationSelector"] = @2;
	context[@"kCircleAnnotationSelector"] = @3;
	context[@"kInvertedCircleAnnotationSelector"] = @4;
	context[@"kParenthesisAnnotationSelector"] = @5;
	context[@"kPeriodAnnotationSelector"] = @6;
	context[@"kRomanNumeralAnnotationSelector"] = @7;
	context[@"kDiamondAnnotationSelector"] = @8;
	context[@"kInvertedBoxAnnotationSelector"] = @9;
	context[@"kInvertedRoundedBoxAnnotationSelector"] = @10;

	context[@"kFullWidthKanaSelector"] = @0;
	context[@"kProportionalKanaSelector"] = @1;

	context[@"kFullWidthIdeographsSelector"] = @0;
	context[@"kProportionalIdeographsSelector"] = @1;
	context[@"kHalfWidthIdeographsSelector"] = @2;

	context[@"kCanonicalCompositionOnSelector"] = @0;
	context[@"kCanonicalCompositionOffSelector"] = @1;
	context[@"kCompatibilityCompositionOnSelector"] = @2;
	context[@"kCompatibilityCompositionOffSelector"] = @3;
	context[@"kTranscodingCompositionOnSelector"] = @4;
	context[@"kTranscodingCompositionOffSelector"] = @5;

	context[@"kNoRubyKanaSelector"] = @0;
	context[@"kRubyKanaSelector"] = @1;
	context[@"kRubyKanaOnSelector"] = @2;
	context[@"kRubyKanaOffSelector"] = @3;

	context[@"kNoCJKSymbolAlternativesSelector"] = @0;
	context[@"kCJKSymbolAltOneSelector"] = @1;
	context[@"kCJKSymbolAltTwoSelector"] = @2;
	context[@"kCJKSymbolAltThreeSelector"] = @3;
	context[@"kCJKSymbolAltFourSelector"] = @4;
	context[@"kCJKSymbolAltFiveSelector"] = @5;

	context[@"kNoIdeographicAlternativesSelector"] = @0;
	context[@"kIdeographicAltOneSelector"] = @1;
	context[@"kIdeographicAltTwoSelector"] = @2;
	context[@"kIdeographicAltThreeSelector"] = @3;
	context[@"kIdeographicAltFourSelector"] = @4;
	context[@"kIdeographicAltFiveSelector"] = @5;

	context[@"kCJKVerticalRomanCenteredSelector"] = @0;
	context[@"kCJKVerticalRomanHBaselineSelector"] = @1;

	context[@"kNoCJKItalicRomanSelector"] = @0;
	context[@"kCJKItalicRomanSelector"] = @1;
	context[@"kCJKItalicRomanOnSelector"] = @2;
	context[@"kCJKItalicRomanOffSelector"] = @3;

	context[@"kCaseSensitiveLayoutOnSelector"] = @0;
	context[@"kCaseSensitiveLayoutOffSelector"] = @1;
	context[@"kCaseSensitiveSpacingOnSelector"] = @2;
	context[@"kCaseSensitiveSpacingOffSelector"] = @3;

	context[@"kAlternateHorizKanaOnSelector"] = @0;
	context[@"kAlternateHorizKanaOffSelector"] = @1;
	context[@"kAlternateVertKanaOnSelector"] = @2;
	context[@"kAlternateVertKanaOffSelector"] = @3;

	context[@"kNoStylisticAlternatesSelector"] = @0;
	context[@"kStylisticAltOneOnSelector"] = @2;
	context[@"kStylisticAltOneOffSelector"] = @3;
	context[@"kStylisticAltTwoOnSelector"] = @4;
	context[@"kStylisticAltTwoOffSelector"] = @5;
	context[@"kStylisticAltThreeOnSelector"] = @6;
	context[@"kStylisticAltThreeOffSelector"] = @7;
	context[@"kStylisticAltFourOnSelector"] = @8;
	context[@"kStylisticAltFourOffSelector"] = @9;
	context[@"kStylisticAltFiveOnSelector"] = @10;
	context[@"kStylisticAltFiveOffSelector"] = @11;
	context[@"kStylisticAltSixOnSelector"] = @12;
	context[@"kStylisticAltSixOffSelector"] = @13;
	context[@"kStylisticAltSevenOnSelector"] = @14;
	context[@"kStylisticAltSevenOffSelector"] = @15;
	context[@"kStylisticAltEightOnSelector"] = @16;
	context[@"kStylisticAltEightOffSelector"] = @17;
	context[@"kStylisticAltNineOnSelector"] = @18;
	context[@"kStylisticAltNineOffSelector"] = @19;
	context[@"kStylisticAltTenOnSelector"] = @20;
	context[@"kStylisticAltTenOffSelector"] = @21;
	context[@"kStylisticAltElevenOnSelector"] = @22;
	context[@"kStylisticAltElevenOffSelector"] = @23;
	context[@"kStylisticAltTwelveOnSelector"] = @24;
	context[@"kStylisticAltTwelveOffSelector"] = @25;
	context[@"kStylisticAltThirteenOnSelector"] = @26;
	context[@"kStylisticAltThirteenOffSelector"] = @27;
	context[@"kStylisticAltFourteenOnSelector"] = @28;
	context[@"kStylisticAltFourteenOffSelector"] = @29;
	context[@"kStylisticAltFifteenOnSelector"] = @30;
	context[@"kStylisticAltFifteenOffSelector"] = @31;
	context[@"kStylisticAltSixteenOnSelector"] = @32;
	context[@"kStylisticAltSixteenOffSelector"] = @33;
	context[@"kStylisticAltSeventeenOnSelector"] = @34;
	context[@"kStylisticAltSeventeenOffSelector"] = @35;
	context[@"kStylisticAltEighteenOnSelector"] = @36;
	context[@"kStylisticAltEighteenOffSelector"] = @37;
	context[@"kStylisticAltNineteenOnSelector"] = @38;
	context[@"kStylisticAltNineteenOffSelector"] = @39;
	context[@"kStylisticAltTwentyOnSelector"] = @40;
	context[@"kStylisticAltTwentyOffSelector"] = @41;

	context[@"kContextualAlternatesOnSelector"] = @0;
	context[@"kContextualAlternatesOffSelector"] = @1;
	context[@"kSwashAlternatesOnSelector"] = @2;
	context[@"kSwashAlternatesOffSelector"] = @3;
	context[@"kContextualSwashAlternatesOnSelector"] = @4;
	context[@"kContextualSwashAlternatesOffSelector"] = @5;

	context[@"kDefaultLowerCaseSelector"] = @0;
	context[@"kLowerCaseSmallCapsSelector"] = @1;
	context[@"kLowerCasePetiteCapsSelector"] = @2;

	context[@"kDefaultUpperCaseSelector"] = @0;
	context[@"kUpperCaseSmallCapsSelector"] = @1;
	context[@"kUpperCasePetiteCapsSelector"] = @2;

	context[@"kHalfWidthCJKRomanSelector"] = @0;
	context[@"kProportionalCJKRomanSelector"] = @1;
	context[@"kDefaultCJKRomanSelector"] = @2;
	context[@"kFullWidthCJKRomanSelector"] = @3;

	context[@"kSFNTLookupSimpleArray"] = @0;
	context[@"kSFNTLookupSegmentSingle"] = @2;
	context[@"kSFNTLookupSegmentArray"] = @4;
	context[@"kSFNTLookupSingleTable"] = @6;
	context[@"kSFNTLookupTrimmedArray"] = @8;
	context[@"kSFNTLookupVector"] = @10;

	context[@"kSTClassEndOfText"] = @0;
	context[@"kSTClassOutOfBounds"] = @1;
	context[@"kSTClassDeletedGlyph"] = @2;
	context[@"kSTClassEndOfLine"] = @3;
	context[@"kSTSetMark"] = @32768;
	context[@"kSTNoAdvance"] = @16384;
	context[@"kSTMarkEnd"] = @8192;
	context[@"kSTLigActionMask"] = @16383;
	context[@"kSTRearrVerbMask"] = @15;

	context[@"kSTXHasLigAction"] = @8192;

	context[@"kSTKCrossStreamReset"] = @8192;

	context[@"kLCARTag"] = @1818452338;
	context[@"kLCARCurrentVersion"] = @65536;
	context[@"kLCARLinearFormat"] = @0;
	context[@"kLCARCtlPointFormat"] = @1;

	context[@"kJUSTTag"] = @1786082164;
	context[@"kJUSTCurrentVersion"] = @65536;
	context[@"kJUSTStandardFormat"] = @0;
	context[@"kJUSTnoGlyphcode"] = @65535;
	context[@"kJUSTpcDecompositionAction"] = @0;
	context[@"kJUSTpcUnconditionalAddAction"] = @1;
	context[@"kJUSTpcConditionalAddAction"] = @2;
	context[@"kJUSTpcGlyphStretchAction"] = @3;
	context[@"kJUSTpcDuctilityAction"] = @4;
	context[@"kJUSTpcGlyphRepeatAddAction"] = @5;

	context[@"kJUSTKashidaPriority"] = @0;
	context[@"kJUSTSpacePriority"] = @1;
	context[@"kJUSTLetterPriority"] = @2;
	context[@"kJUSTNullPriority"] = @3;
	context[@"kJUSTPriorityCount"] = @4;

	context[@"kJUSTOverridePriority"] = @32768;
	context[@"kJUSTOverrideLimits"] = @16384;
	context[@"kJUSTOverrideUnlimited"] = @8192;
	context[@"kJUSTUnlimited"] = @4096;
	context[@"kJUSTPriorityMask"] = @3;

	context[@"kOPBDTag"] = @1869636196;
	context[@"kOPBDCurrentVersion"] = @65536;
	context[@"kOPBDDistanceFormat"] = @0;
	context[@"kOPBDControlPointFormat"] = @1;

	context[@"kMORTTag"] = @1836020340;
	context[@"kMORTCurrentVersion"] = @65536;
	context[@"kMORTCoverVertical"] = @32768;
	context[@"kMORTCoverDescending"] = @16384;
	context[@"kMORTCoverIgnoreVertical"] = @8192;
	context[@"kMORTCoverTypeMask"] = @15;
	context[@"kMORTRearrangementType"] = @0;
	context[@"kMORTContextualType"] = @1;
	context[@"kMORTLigatureType"] = @2;
	context[@"kMORTSwashType"] = @4;
	context[@"kMORTInsertionType"] = @5;
	context[@"kMORTLigLastAction"] = @-2147483648;
	context[@"kMORTLigStoreLigature"] = @1073741824;
	context[@"kMORTLigFormOffsetMask"] = @1073741823;
	context[@"kMORTLigFormOffsetShift"] = @2;
	context[@"kMORTraNoAction"] = @0;
	context[@"kMORTraxA"] = @1;
	context[@"kMORTraDx"] = @2;
	context[@"kMORTraDxA"] = @3;
	context[@"kMORTraxAB"] = @4;
	context[@"kMORTraxBA"] = @5;
	context[@"kMORTraCDx"] = @6;
	context[@"kMORTraDCx"] = @7;
	context[@"kMORTraCDxA"] = @8;
	context[@"kMORTraDCxA"] = @9;
	context[@"kMORTraDxAB"] = @10;
	context[@"kMORTraDxBA"] = @11;
	context[@"kMORTraCDxAB"] = @12;
	context[@"kMORTraCDxBA"] = @13;
	context[@"kMORTraDCxAB"] = @14;
	context[@"kMORTraDCxBA"] = @15;
	context[@"kMORTDoInsertionsBefore"] = @128;
	context[@"kMORTIsSplitVowelPiece"] = @64;
	context[@"kMORTInsertionsCountMask"] = @63;
	context[@"kMORTCurrInsertKashidaLike"] = @8192;
	context[@"kMORTMarkInsertKashidaLike"] = @4096;
	context[@"kMORTCurrInsertBefore"] = @2048;
	context[@"kMORTMarkInsertBefore"] = @1024;
	context[@"kMORTMarkJustTableCountMask"] = @16256;
	context[@"kMORTMarkJustTableCountShift"] = @7;
	context[@"kMORTCurrJustTableCountMask"] = @127;
	context[@"kMORTCurrJustTableCountShift"] = @0;
	context[@"kMORTCurrInsertCountMask"] = @992;
	context[@"kMORTCurrInsertCountShift"] = @5;
	context[@"kMORTMarkInsertCountMask"] = @31;
	context[@"kMORTMarkInsertCountShift"] = @0;

	context[@"kMORXTag"] = @1836020344;
	context[@"kMORXCurrentVersion"] = @131072;
	context[@"kMORXCoverVertical"] = @-2147483648;
	context[@"kMORXCoverDescending"] = @1073741824;
	context[@"kMORXCoverIgnoreVertical"] = @536870912;
	context[@"kMORXCoverLogicalOrder"] = @268435456;
	context[@"kMORXCoverTypeMask"] = @255;

	context[@"kPROPTag"] = @1886547824;
	context[@"kPROPCurrentVersion"] = @196608;
	context[@"kPROPPairOffsetShift"] = @8;
	context[@"kPROPPairOffsetSign"] = @7;
	context[@"kPROPIsFloaterMask"] = @32768;
	context[@"kPROPCanHangLTMask"] = @16384;
	context[@"kPROPCanHangRBMask"] = @8192;
	context[@"kPROPUseRLPairMask"] = @4096;
	context[@"kPROPPairOffsetMask"] = @3840;
	context[@"kPROPRightConnectMask"] = @128;
	context[@"kPROPZeroReserved"] = @96;
	context[@"kPROPDirectionMask"] = @31;

	context[@"kPROPLDirectionClass"] = @0;
	context[@"kPROPRDirectionClass"] = @1;
	context[@"kPROPALDirectionClass"] = @2;
	context[@"kPROPENDirectionClass"] = @3;
	context[@"kPROPESDirectionClass"] = @4;
	context[@"kPROPETDirectionClass"] = @5;
	context[@"kPROPANDirectionClass"] = @6;
	context[@"kPROPCSDirectionClass"] = @7;
	context[@"kPROPPSDirectionClass"] = @8;
	context[@"kPROPSDirectionClass"] = @9;
	context[@"kPROPWSDirectionClass"] = @10;
	context[@"kPROPONDirectionClass"] = @11;
	context[@"kPROPSENDirectionClass"] = @12;
	context[@"kPROPLREDirectionClass"] = @13;
	context[@"kPROPLRODirectionClass"] = @14;
	context[@"kPROPRLEDirectionClass"] = @15;
	context[@"kPROPRLODirectionClass"] = @16;
	context[@"kPROPPDFDirectionClass"] = @17;
	context[@"kPROPNSMDirectionClass"] = @18;
	context[@"kPROPBNDirectionClass"] = @19;
	context[@"kPROPNumDirectionClasses"] = @20;

	context[@"kTRAKTag"] = @1953653099;
	context[@"kTRAKCurrentVersion"] = @65536;
	context[@"kTRAKUniformFormat"] = @0;

	context[@"kKERNTag"] = @1801810542;
	context[@"kKERNCurrentVersion"] = @65536;
	context[@"kKERNVertical"] = @32768;
	context[@"kKERNResetCrossStream"] = @32768;
	context[@"kKERNCrossStream"] = @16384;
	context[@"kKERNVariation"] = @8192;
	context[@"kKERNUnusedBits"] = @7936;
	context[@"kKERNFormatMask"] = @255;

	context[@"kKERNOrderedList"] = @0;
	context[@"kKERNStateTable"] = @1;
	context[@"kKERNSimpleArray"] = @2;
	context[@"kKERNIndexArray"] = @3;

	context[@"kKERNLineStart"] = @1;
	context[@"kKERNLineEndKerning"] = @2;
	context[@"kKERNNoCrossKerning"] = @4;
	context[@"kKERNNotesRequested"] = @8;
	context[@"kKERNNoStakeNote"] = @1;
	context[@"kKERNCrossStreamResetNote"] = @2;
	context[@"kKERNNotApplied"] = @1;

	context[@"kKERXTag"] = @1801810552;
	context[@"kKERXCurrentVersion"] = @131072;
	context[@"kKERXVertical"] = @-2147483648;
	context[@"kKERXResetCrossStream"] = @32768;
	context[@"kKERXCrossStream"] = @1073741824;
	context[@"kKERXVariation"] = @536870912;
	context[@"kKERXDescending"] = @268435456;
	context[@"kKERXUnusedBits"] = @268435200;
	context[@"kKERXFormatMask"] = @255;

	context[@"kKERXOrderedList"] = @0;
	context[@"kKERXStateTable"] = @1;
	context[@"kKERXSimpleArray"] = @2;
	context[@"kKERXControlPoint"] = @4;
	context[@"kKERXIndexArray"] = @6;

	context[@"kKERXLineStart"] = @1;
	context[@"kKERXLineEndKerning"] = @2;
	context[@"kKERXNoCrossKerning"] = @4;
	context[@"kKERXNotesRequested"] = @8;
	context[@"kKERXNoStakeNote"] = @1;
	context[@"kKERXCrossStreamResetNote"] = @2;
	context[@"kKERXNotApplied"] = @1;

	context[@"kKERXActionTypeMask"] = @3221225472U;
	context[@"kKERXActionTypeControlPoints"] = @0;
	context[@"kKERXActionTypeAnchorPoints"] = @1073741824;
	context[@"kKERXActionTypeCoordinates"] = @2147483648U;
	context[@"kKERXUnusedFlags"] = @1056964608;
	context[@"kKERXActionOffsetMask"] = @16777215;

	context[@"kKERXValuesAreLong"] = @1;

	context[@"kBSLNTag"] = @1651731566;
	context[@"kBSLNCurrentVersion"] = @65536;
	context[@"kBSLNDistanceFormatNoMap"] = @0;
	context[@"kBSLNDistanceFormatWithMap"] = @1;
	context[@"kBSLNControlPointFormatNoMap"] = @2;
	context[@"kBSLNControlPointFormatWithMap"] = @3;

	context[@"kBSLNRomanBaseline"] = @0;
	context[@"kBSLNIdeographicCenterBaseline"] = @1;
	context[@"kBSLNIdeographicLowBaseline"] = @2;
	context[@"kBSLNHangingBaseline"] = @3;
	context[@"kBSLNMathBaseline"] = @4;
	context[@"kBSLNIdeographicHighBaseline"] = @5;
	context[@"kBSLNLastBaseline"] = @31;
	context[@"kBSLNNumBaselineClasses"] = @32;
	context[@"kBSLNNoBaseline"] = @255;
	context[@"kBSLNNoBaselineOverride"] = @255;

	context[@"kANKRCurrentVersion"] = @0;

	context[@"kLTAGCurrentVersion"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreText_SFNTLayoutTypes_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
