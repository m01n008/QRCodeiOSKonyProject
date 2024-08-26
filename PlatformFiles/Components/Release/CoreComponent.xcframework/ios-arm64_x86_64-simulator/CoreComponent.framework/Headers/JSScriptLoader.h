//
//  JSScriptLoader.h
//  VM
//
//  Created by Sunil Phani Manne on 3/13/12.
//  Copyright (c) 2012 Sunil Phani Manne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JSContextRef.h>
#import "UnarchiverDelegate.h"

#define JS_STARTUP_SCRIPT @"startup.js"
#define JS_LICENSE_SCRIPT @"license.js"
#define JS_VIDEOWIDGET_SCRIPT @"konyVideoWidget.js"
#define JS_SCRIPT_FOLDER @"JSScripts"
#define JS_SCRIPT_IPAD_FOLDER @"JSScriptsIpad"
#define JS_SCRIPT_WORKER_FOLDER @"WorkerThreadScripts"

@class Runtime;

@interface JSScriptLoader : NSObject <UnarchiverDelegate> {
@private
    Runtime *runtime;
    BOOL functionalModulesMode;
    BOOL jsScriptLoadingStatus;
    NSString *startupScript;
}

-(id) initWithRuntime: (Runtime*) aRuntime;
-(void) runScripts:(NSArray *) scriptNames inPath:(NSString *) inPath loadPlain:(BOOL)loadPlain;
-(void) loadJSScripts:(NSArray *) scriptNames inPath:(NSString *) inPath loadPlain:(BOOL)loadPlain;
-(BOOL) loadJSScriptModule:(NSString*) moduleName;
-(void) runScriptString: (NSString*) jsScript inRuntime: (Runtime*) jsRuntime ;
- (BOOL)loadJSFilesInFPMode:(NSArray *)namesOfFiles;

@end

void runLicenseScriptInRuntime(Runtime *rt);
void runVideoWidgetScriptInRuntime(Runtime *rt);
BOOL evaluateScript(CFStringRef jsScript,CFStringRef fileName, JSContextRef context);
