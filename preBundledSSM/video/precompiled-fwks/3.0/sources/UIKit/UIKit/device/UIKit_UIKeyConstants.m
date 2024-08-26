#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIKeyboardHIDUsageKeyboardErrorRollOver"] = @1L;
	context[@"UIKeyboardHIDUsageKeyboardPOSTFail"] = @2L;
	context[@"UIKeyboardHIDUsageKeyboardErrorUndefined"] = @3L;
	context[@"UIKeyboardHIDUsageKeyboardA"] = @4L;
	context[@"UIKeyboardHIDUsageKeyboardB"] = @5L;
	context[@"UIKeyboardHIDUsageKeyboardC"] = @6L;
	context[@"UIKeyboardHIDUsageKeyboardD"] = @7L;
	context[@"UIKeyboardHIDUsageKeyboardE"] = @8L;
	context[@"UIKeyboardHIDUsageKeyboardF"] = @9L;
	context[@"UIKeyboardHIDUsageKeyboardG"] = @10L;
	context[@"UIKeyboardHIDUsageKeyboardH"] = @11L;
	context[@"UIKeyboardHIDUsageKeyboardI"] = @12L;
	context[@"UIKeyboardHIDUsageKeyboardJ"] = @13L;
	context[@"UIKeyboardHIDUsageKeyboardK"] = @14L;
	context[@"UIKeyboardHIDUsageKeyboardL"] = @15L;
	context[@"UIKeyboardHIDUsageKeyboardM"] = @16L;
	context[@"UIKeyboardHIDUsageKeyboardN"] = @17L;
	context[@"UIKeyboardHIDUsageKeyboardO"] = @18L;
	context[@"UIKeyboardHIDUsageKeyboardP"] = @19L;
	context[@"UIKeyboardHIDUsageKeyboardQ"] = @20L;
	context[@"UIKeyboardHIDUsageKeyboardR"] = @21L;
	context[@"UIKeyboardHIDUsageKeyboardS"] = @22L;
	context[@"UIKeyboardHIDUsageKeyboardT"] = @23L;
	context[@"UIKeyboardHIDUsageKeyboardU"] = @24L;
	context[@"UIKeyboardHIDUsageKeyboardV"] = @25L;
	context[@"UIKeyboardHIDUsageKeyboardW"] = @26L;
	context[@"UIKeyboardHIDUsageKeyboardX"] = @27L;
	context[@"UIKeyboardHIDUsageKeyboardY"] = @28L;
	context[@"UIKeyboardHIDUsageKeyboardZ"] = @29L;
	context[@"UIKeyboardHIDUsageKeyboard1"] = @30L;
	context[@"UIKeyboardHIDUsageKeyboard2"] = @31L;
	context[@"UIKeyboardHIDUsageKeyboard3"] = @32L;
	context[@"UIKeyboardHIDUsageKeyboard4"] = @33L;
	context[@"UIKeyboardHIDUsageKeyboard5"] = @34L;
	context[@"UIKeyboardHIDUsageKeyboard6"] = @35L;
	context[@"UIKeyboardHIDUsageKeyboard7"] = @36L;
	context[@"UIKeyboardHIDUsageKeyboard8"] = @37L;
	context[@"UIKeyboardHIDUsageKeyboard9"] = @38L;
	context[@"UIKeyboardHIDUsageKeyboard0"] = @39L;
	context[@"UIKeyboardHIDUsageKeyboardReturnOrEnter"] = @40L;
	context[@"UIKeyboardHIDUsageKeyboardEscape"] = @41L;
	context[@"UIKeyboardHIDUsageKeyboardDeleteOrBackspace"] = @42L;
	context[@"UIKeyboardHIDUsageKeyboardTab"] = @43L;
	context[@"UIKeyboardHIDUsageKeyboardSpacebar"] = @44L;
	context[@"UIKeyboardHIDUsageKeyboardHyphen"] = @45L;
	context[@"UIKeyboardHIDUsageKeyboardEqualSign"] = @46L;
	context[@"UIKeyboardHIDUsageKeyboardOpenBracket"] = @47L;
	context[@"UIKeyboardHIDUsageKeyboardCloseBracket"] = @48L;
	context[@"UIKeyboardHIDUsageKeyboardBackslash"] = @49L;
	context[@"UIKeyboardHIDUsageKeyboardNonUSPound"] = @50L;
	context[@"UIKeyboardHIDUsageKeyboardSemicolon"] = @51L;
	context[@"UIKeyboardHIDUsageKeyboardQuote"] = @52L;
	context[@"UIKeyboardHIDUsageKeyboardGraveAccentAndTilde"] = @53L;
	context[@"UIKeyboardHIDUsageKeyboardComma"] = @54L;
	context[@"UIKeyboardHIDUsageKeyboardPeriod"] = @55L;
	context[@"UIKeyboardHIDUsageKeyboardSlash"] = @56L;
	context[@"UIKeyboardHIDUsageKeyboardCapsLock"] = @57L;
	context[@"UIKeyboardHIDUsageKeyboardF1"] = @58L;
	context[@"UIKeyboardHIDUsageKeyboardF2"] = @59L;
	context[@"UIKeyboardHIDUsageKeyboardF3"] = @60L;
	context[@"UIKeyboardHIDUsageKeyboardF4"] = @61L;
	context[@"UIKeyboardHIDUsageKeyboardF5"] = @62L;
	context[@"UIKeyboardHIDUsageKeyboardF6"] = @63L;
	context[@"UIKeyboardHIDUsageKeyboardF7"] = @64L;
	context[@"UIKeyboardHIDUsageKeyboardF8"] = @65L;
	context[@"UIKeyboardHIDUsageKeyboardF9"] = @66L;
	context[@"UIKeyboardHIDUsageKeyboardF10"] = @67L;
	context[@"UIKeyboardHIDUsageKeyboardF11"] = @68L;
	context[@"UIKeyboardHIDUsageKeyboardF12"] = @69L;
	context[@"UIKeyboardHIDUsageKeyboardPrintScreen"] = @70L;
	context[@"UIKeyboardHIDUsageKeyboardScrollLock"] = @71L;
	context[@"UIKeyboardHIDUsageKeyboardPause"] = @72L;
	context[@"UIKeyboardHIDUsageKeyboardInsert"] = @73L;
	context[@"UIKeyboardHIDUsageKeyboardHome"] = @74L;
	context[@"UIKeyboardHIDUsageKeyboardPageUp"] = @75L;
	context[@"UIKeyboardHIDUsageKeyboardDeleteForward"] = @76L;
	context[@"UIKeyboardHIDUsageKeyboardEnd"] = @77L;
	context[@"UIKeyboardHIDUsageKeyboardPageDown"] = @78L;
	context[@"UIKeyboardHIDUsageKeyboardRightArrow"] = @79L;
	context[@"UIKeyboardHIDUsageKeyboardLeftArrow"] = @80L;
	context[@"UIKeyboardHIDUsageKeyboardDownArrow"] = @81L;
	context[@"UIKeyboardHIDUsageKeyboardUpArrow"] = @82L;
	context[@"UIKeyboardHIDUsageKeypadNumLock"] = @83L;
	context[@"UIKeyboardHIDUsageKeypadSlash"] = @84L;
	context[@"UIKeyboardHIDUsageKeypadAsterisk"] = @85L;
	context[@"UIKeyboardHIDUsageKeypadHyphen"] = @86L;
	context[@"UIKeyboardHIDUsageKeypadPlus"] = @87L;
	context[@"UIKeyboardHIDUsageKeypadEnter"] = @88L;
	context[@"UIKeyboardHIDUsageKeypad1"] = @89L;
	context[@"UIKeyboardHIDUsageKeypad2"] = @90L;
	context[@"UIKeyboardHIDUsageKeypad3"] = @91L;
	context[@"UIKeyboardHIDUsageKeypad4"] = @92L;
	context[@"UIKeyboardHIDUsageKeypad5"] = @93L;
	context[@"UIKeyboardHIDUsageKeypad6"] = @94L;
	context[@"UIKeyboardHIDUsageKeypad7"] = @95L;
	context[@"UIKeyboardHIDUsageKeypad8"] = @96L;
	context[@"UIKeyboardHIDUsageKeypad9"] = @97L;
	context[@"UIKeyboardHIDUsageKeypad0"] = @98L;
	context[@"UIKeyboardHIDUsageKeypadPeriod"] = @99L;
	context[@"UIKeyboardHIDUsageKeyboardNonUSBackslash"] = @100L;
	context[@"UIKeyboardHIDUsageKeyboardApplication"] = @101L;
	context[@"UIKeyboardHIDUsageKeyboardPower"] = @102L;
	context[@"UIKeyboardHIDUsageKeypadEqualSign"] = @103L;
	context[@"UIKeyboardHIDUsageKeyboardF13"] = @104L;
	context[@"UIKeyboardHIDUsageKeyboardF14"] = @105L;
	context[@"UIKeyboardHIDUsageKeyboardF15"] = @106L;
	context[@"UIKeyboardHIDUsageKeyboardF16"] = @107L;
	context[@"UIKeyboardHIDUsageKeyboardF17"] = @108L;
	context[@"UIKeyboardHIDUsageKeyboardF18"] = @109L;
	context[@"UIKeyboardHIDUsageKeyboardF19"] = @110L;
	context[@"UIKeyboardHIDUsageKeyboardF20"] = @111L;
	context[@"UIKeyboardHIDUsageKeyboardF21"] = @112L;
	context[@"UIKeyboardHIDUsageKeyboardF22"] = @113L;
	context[@"UIKeyboardHIDUsageKeyboardF23"] = @114L;
	context[@"UIKeyboardHIDUsageKeyboardF24"] = @115L;
	context[@"UIKeyboardHIDUsageKeyboardExecute"] = @116L;
	context[@"UIKeyboardHIDUsageKeyboardHelp"] = @117L;
	context[@"UIKeyboardHIDUsageKeyboardMenu"] = @118L;
	context[@"UIKeyboardHIDUsageKeyboardSelect"] = @119L;
	context[@"UIKeyboardHIDUsageKeyboardStop"] = @120L;
	context[@"UIKeyboardHIDUsageKeyboardAgain"] = @121L;
	context[@"UIKeyboardHIDUsageKeyboardUndo"] = @122L;
	context[@"UIKeyboardHIDUsageKeyboardCut"] = @123L;
	context[@"UIKeyboardHIDUsageKeyboardCopy"] = @124L;
	context[@"UIKeyboardHIDUsageKeyboardPaste"] = @125L;
	context[@"UIKeyboardHIDUsageKeyboardFind"] = @126L;
	context[@"UIKeyboardHIDUsageKeyboardMute"] = @127L;
	context[@"UIKeyboardHIDUsageKeyboardVolumeUp"] = @128L;
	context[@"UIKeyboardHIDUsageKeyboardVolumeDown"] = @129L;
	context[@"UIKeyboardHIDUsageKeyboardLockingCapsLock"] = @130L;
	context[@"UIKeyboardHIDUsageKeyboardLockingNumLock"] = @131L;
	context[@"UIKeyboardHIDUsageKeyboardLockingScrollLock"] = @132L;
	context[@"UIKeyboardHIDUsageKeypadComma"] = @133L;
	context[@"UIKeyboardHIDUsageKeypadEqualSignAS400"] = @134L;
	context[@"UIKeyboardHIDUsageKeyboardInternational1"] = @135L;
	context[@"UIKeyboardHIDUsageKeyboardInternational2"] = @136L;
	context[@"UIKeyboardHIDUsageKeyboardInternational3"] = @137L;
	context[@"UIKeyboardHIDUsageKeyboardInternational4"] = @138L;
	context[@"UIKeyboardHIDUsageKeyboardInternational5"] = @139L;
	context[@"UIKeyboardHIDUsageKeyboardInternational6"] = @140L;
	context[@"UIKeyboardHIDUsageKeyboardInternational7"] = @141L;
	context[@"UIKeyboardHIDUsageKeyboardInternational8"] = @142L;
	context[@"UIKeyboardHIDUsageKeyboardInternational9"] = @143L;
	context[@"UIKeyboardHIDUsageKeyboardLANG1"] = @144L;
	context[@"UIKeyboardHIDUsageKeyboardLANG2"] = @145L;
	context[@"UIKeyboardHIDUsageKeyboardLANG3"] = @146L;
	context[@"UIKeyboardHIDUsageKeyboardLANG4"] = @147L;
	context[@"UIKeyboardHIDUsageKeyboardLANG5"] = @148L;
	context[@"UIKeyboardHIDUsageKeyboardLANG6"] = @149L;
	context[@"UIKeyboardHIDUsageKeyboardLANG7"] = @150L;
	context[@"UIKeyboardHIDUsageKeyboardLANG8"] = @151L;
	context[@"UIKeyboardHIDUsageKeyboardLANG9"] = @152L;
	context[@"UIKeyboardHIDUsageKeyboardAlternateErase"] = @153L;
	context[@"UIKeyboardHIDUsageKeyboardSysReqOrAttention"] = @154L;
	context[@"UIKeyboardHIDUsageKeyboardCancel"] = @155L;
	context[@"UIKeyboardHIDUsageKeyboardClear"] = @156L;
	context[@"UIKeyboardHIDUsageKeyboardPrior"] = @157L;
	context[@"UIKeyboardHIDUsageKeyboardReturn"] = @158L;
	context[@"UIKeyboardHIDUsageKeyboardSeparator"] = @159L;
	context[@"UIKeyboardHIDUsageKeyboardOut"] = @160L;
	context[@"UIKeyboardHIDUsageKeyboardOper"] = @161L;
	context[@"UIKeyboardHIDUsageKeyboardClearOrAgain"] = @162L;
	context[@"UIKeyboardHIDUsageKeyboardCrSelOrProps"] = @163L;
	context[@"UIKeyboardHIDUsageKeyboardExSel"] = @164L;
	context[@"UIKeyboardHIDUsageKeyboardLeftControl"] = @224L;
	context[@"UIKeyboardHIDUsageKeyboardLeftShift"] = @225L;
	context[@"UIKeyboardHIDUsageKeyboardLeftAlt"] = @226L;
	context[@"UIKeyboardHIDUsageKeyboardLeftGUI"] = @227L;
	context[@"UIKeyboardHIDUsageKeyboardRightControl"] = @228L;
	context[@"UIKeyboardHIDUsageKeyboardRightShift"] = @229L;
	context[@"UIKeyboardHIDUsageKeyboardRightAlt"] = @230L;
	context[@"UIKeyboardHIDUsageKeyboardRightGUI"] = @231L;
	context[@"UIKeyboardHIDUsageKeyboard_Reserved"] = @65535L;
	context[@"UIKeyboardHIDUsageKeyboardHangul"] = @144L;
	context[@"UIKeyboardHIDUsageKeyboardHanja"] = @145L;
	context[@"UIKeyboardHIDUsageKeyboardKanaSwitch"] = @144L;
	context[@"UIKeyboardHIDUsageKeyboardAlphanumericSwitch"] = @145L;
	context[@"UIKeyboardHIDUsageKeyboardKatakana"] = @146L;
	context[@"UIKeyboardHIDUsageKeyboardHiragana"] = @147L;
	context[@"UIKeyboardHIDUsageKeyboardZenkakuHankakuKanji"] = @148L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIKeyConstants_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
