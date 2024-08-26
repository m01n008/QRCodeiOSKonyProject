#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIMenu (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIMenu class], @protocol(UIMenuInstanceExports));
	class_addProtocol([UIMenu class], @protocol(UIMenuClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIMenuOptionsDisplayInline"] = @1U;
	context[@"UIMenuOptionsDestructive"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIMenuToolbar;
	if (p != NULL) context[@"UIMenuToolbar"] = UIMenuToolbar;
	p = (void*) &UIMenuView;
	if (p != NULL) context[@"UIMenuView"] = UIMenuView;
	p = (void*) &UIMenuReplace;
	if (p != NULL) context[@"UIMenuReplace"] = UIMenuReplace;
	p = (void*) &UIMenuWindow;
	if (p != NULL) context[@"UIMenuWindow"] = UIMenuWindow;
	p = (void*) &UIMenuSubstitutionOptions;
	if (p != NULL) context[@"UIMenuSubstitutionOptions"] = UIMenuSubstitutionOptions;
	p = (void*) &UIMenuSpellingPanel;
	if (p != NULL) context[@"UIMenuSpellingPanel"] = UIMenuSpellingPanel;
	p = (void*) &UIMenuTextStylePasteboard;
	if (p != NULL) context[@"UIMenuTextStylePasteboard"] = UIMenuTextStylePasteboard;
	p = (void*) &UIMenuFile;
	if (p != NULL) context[@"UIMenuFile"] = UIMenuFile;
	p = (void*) &UIMenuRoot;
	if (p != NULL) context[@"UIMenuRoot"] = UIMenuRoot;
	p = (void*) &UIMenuBringAllToFront;
	if (p != NULL) context[@"UIMenuBringAllToFront"] = UIMenuBringAllToFront;
	p = (void*) &UIMenuAbout;
	if (p != NULL) context[@"UIMenuAbout"] = UIMenuAbout;
	p = (void*) &UIMenuSpellingOptions;
	if (p != NULL) context[@"UIMenuSpellingOptions"] = UIMenuSpellingOptions;
	p = (void*) &UIMenuHide;
	if (p != NULL) context[@"UIMenuHide"] = UIMenuHide;
	p = (void*) &UIMenuLearn;
	if (p != NULL) context[@"UIMenuLearn"] = UIMenuLearn;
	p = (void*) &UIMenuSpelling;
	if (p != NULL) context[@"UIMenuSpelling"] = UIMenuSpelling;
	p = (void*) &UIMenuUndoRedo;
	if (p != NULL) context[@"UIMenuUndoRedo"] = UIMenuUndoRedo;
	p = (void*) &UIMenuWritingDirection;
	if (p != NULL) context[@"UIMenuWritingDirection"] = UIMenuWritingDirection;
	p = (void*) &UIMenuFont;
	if (p != NULL) context[@"UIMenuFont"] = UIMenuFont;
	p = (void*) &UIMenuApplication;
	if (p != NULL) context[@"UIMenuApplication"] = UIMenuApplication;
	p = (void*) &UIMenuNewScene;
	if (p != NULL) context[@"UIMenuNewScene"] = UIMenuNewScene;
	p = (void*) &UIMenuMinimizeAndZoom;
	if (p != NULL) context[@"UIMenuMinimizeAndZoom"] = UIMenuMinimizeAndZoom;
	p = (void*) &UIMenuClose;
	if (p != NULL) context[@"UIMenuClose"] = UIMenuClose;
	p = (void*) &UIMenuTextSize;
	if (p != NULL) context[@"UIMenuTextSize"] = UIMenuTextSize;
	p = (void*) &UIMenuFind;
	if (p != NULL) context[@"UIMenuFind"] = UIMenuFind;
	p = (void*) &UIMenuSubstitutions;
	if (p != NULL) context[@"UIMenuSubstitutions"] = UIMenuSubstitutions;
	p = (void*) &UIMenuServices;
	if (p != NULL) context[@"UIMenuServices"] = UIMenuServices;
	p = (void*) &UIMenuHelp;
	if (p != NULL) context[@"UIMenuHelp"] = UIMenuHelp;
	p = (void*) &UIMenuTextStyle;
	if (p != NULL) context[@"UIMenuTextStyle"] = UIMenuTextStyle;
	p = (void*) &UIMenuEdit;
	if (p != NULL) context[@"UIMenuEdit"] = UIMenuEdit;
	p = (void*) &UIMenuSubstitutionsPanel;
	if (p != NULL) context[@"UIMenuSubstitutionsPanel"] = UIMenuSubstitutionsPanel;
	p = (void*) &UIMenuText;
	if (p != NULL) context[@"UIMenuText"] = UIMenuText;
	p = (void*) &UIMenuSpeech;
	if (p != NULL) context[@"UIMenuSpeech"] = UIMenuSpeech;
	p = (void*) &UIMenuQuit;
	if (p != NULL) context[@"UIMenuQuit"] = UIMenuQuit;
	p = (void*) &UIMenuFormat;
	if (p != NULL) context[@"UIMenuFormat"] = UIMenuFormat;
	p = (void*) &UIMenuShare;
	if (p != NULL) context[@"UIMenuShare"] = UIMenuShare;
	p = (void*) &UIMenuTransformations;
	if (p != NULL) context[@"UIMenuTransformations"] = UIMenuTransformations;
	p = (void*) &UIMenuLookup;
	if (p != NULL) context[@"UIMenuLookup"] = UIMenuLookup;
	p = (void*) &UIMenuStandardEdit;
	if (p != NULL) context[@"UIMenuStandardEdit"] = UIMenuStandardEdit;
	p = (void*) &UIMenuPrint;
	if (p != NULL) context[@"UIMenuPrint"] = UIMenuPrint;
	p = (void*) &UIMenuOpenRecent;
	if (p != NULL) context[@"UIMenuOpenRecent"] = UIMenuOpenRecent;
	p = (void*) &UIMenuAlignment;
	if (p != NULL) context[@"UIMenuAlignment"] = UIMenuAlignment;
	p = (void*) &UIMenuPreferences;
	if (p != NULL) context[@"UIMenuPreferences"] = UIMenuPreferences;
	p = (void*) &UIMenuTextColor;
	if (p != NULL) context[@"UIMenuTextColor"] = UIMenuTextColor;
	p = (void*) &UIMenuFullscreen;
	if (p != NULL) context[@"UIMenuFullscreen"] = UIMenuFullscreen;
}
void load_UIKit_UIMenu_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
