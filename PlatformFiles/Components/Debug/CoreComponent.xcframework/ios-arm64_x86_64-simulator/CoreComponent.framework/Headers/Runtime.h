// Copyright 2008 Google Inc.
// 
// Licensed under the Apache License, Version 2.0 (the "License"); you may not
// use this file except in compliance with the License.  You may obtain a copy
// of the License at
// 
// http://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
// License for the specific language governing permissions and limitations under
// the License.

// The JavaScript runtime.  A wrapper around JavaScriptCore framework so that
// it's relatively easy to use ObjC objects.

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

#import "CallBack.h"
#import "RuntimeObject.h"
#import "JSFunction.h"
@class WrkrThread;

void runSwappingScriptInRuntime(Runtime *rt);
bool evaluateScriptInContext(CFStringRef script, CFStringRef url, JSContextRef context, NSException **exception);

@interface Runtime : NSObject {
    JSGlobalContextRef globalContext_;
    JSObjectRef global_;
    JSValueRef jsnullvalue;
    CFMutableDictionaryRef classMap_;
    CFMutableDictionaryRef classnameForJSMap_;
    NSMutableDictionary *namespaceClassnameForJSMap_;
    CFMutableDictionaryRef staticFunctionsMap_;
    CFMutableDictionaryRef classFunctionsMap_;
    CFMutableDictionaryRef constructorMap_;
    CFMutableDictionaryRef constructorNamespaceMap_;
    CFMutableDictionaryRef methodMap_;
    CFMutableDictionaryRef methodNames_;
    CFMutableSetRef staticClassElements_;
    CFMutableSetRef prototypeUpdated_;
    NSMutableDictionary *staticAPICallFrequencies_;
    
  @private
    uint runTimeID;
    Runtime * __weak parentRunTimeEnvironment_;
    NSMutableArray *childRunTimeEnvironments_;
    JSContextGroupRef contextGroupRef_;
    WrkrThread *aWorkerThread_;
    id workerDelegate;
}

@property(nonatomic,readwrite, retain) CallBack* uncaughtExceptionHandler;
@property(readonly, strong)WrkrThread *workerThread;
@property(readwrite, weak)Runtime *parentRunTime;
@property(readonly)uint runTimeID;

// As the current runtime is the owner of the worker delegate (Worker object) in this scope, runtime holds a strong reference to the delegate 
@property(readonly,retain)id workerDelegate;

- (id)initWithID:(uint) uniqueID;
- (id)initWithID:(uint) uniqueID WithParentRunTime:(Runtime*) aParentRunTime WorkerDelegate:(id) wrkrDelegate;

- (NSString *) typeOfJSObject: (RuntimeObject *)runtimeObject;

- (BOOL) setConstantsDict: (NSDictionary*)constantsDict inNamespace:(NSString*)jsnamespace;

- (BOOL) setConstant:(id)constant withName: (NSString*)constantKey inNamespace:(NSString*)jsnamespace;
- (id) getConstantWithName: (NSString*)constantKey inNamespace:(NSString*)jsnamespace;

// Protect value from garbage collection of js runtime
// can be used by any class, which is holding JSValueRef
- (void) protectValueFromGarbageCollection:(JSValueRef) value;

// Unprotect value from garbage collection of js runtime,
// can be used by any class, which is going to hold JSValueRef
- (void) unprotectValueFromGarbageCollection:(JSValueRef) value;

// |objcClass| needs to be a class that conforms to JSWrapper.  This will allow
// the class to be created in the Runtime.
- (BOOL)registerClass:(Class)objcClass;

// |objcClass| needs to be a class that conforms to JSWrapper.
// |methodSelector| needs to be a selector(class level) in the objcClass class
- (BOOL)registerMethod:(NSString*)methodName withJSNamespace:(NSString*)jsnamespace invoke:(NSString*)methodSelector onTargetClass:(Class)objcClass;

- (NSString *) selectorStringForClass: (Class)customclass jsMethod:(NSString*)jsMethodName;

// |objcClass| needs to be a class that conforms to JSStaticAPI.  This will allow
// the methods in class to be used in Runtime.
- (BOOL)registerClassAsStaticAPI:(Class)objCClass;

- (BOOL)registerAutoBinding;
- (void)deregisterAutoBinding;


// Set |obj| into the Runtime with |name|
- (BOOL)setObject:(NSObject <RuntimeObject> *)obj withName:(NSString *)name;

- (id)callAsFunction:(NSString *)str;
- (id)executeJSFunction:(JSObjectRef)function withArguments: (NSArray*) arguments;
- (JSFunction *)getFunctionObjectFromFunctionName:(NSString *)functionName;
- (id)executeJSFunctionWithName:(NSString *)functionName thisObject:(id) thisObject withArguments: (NSArray*) arguments;
- (BOOL)checkIfJSFunctionWithNameExists:(NSString *)functionName thisObject:(id) thisObject withArguments: (NSArray*) arguments;
- (JSValueRef)executeStaticFunction:(JSObjectRef)function withArguments: (NSArray*) arguments exception:(JSValueRef *)exception;

- (JSValueRef)convertObject:(id)object context:(JSContextRef)context exception:(JSValueRef*)exception;

//- (void)setObject: (NSObject*) forJSObject: (JSValueRef) JSObject;

//- (void)setJSObject:(JSValueRef *) forJSObject :(JSValueRef)JSObject;
- (NSNumber*)startDebuggerOnPort: (NSNumber*) p;
- (BOOL)debuggerEnabled;
-(void) startGarbageCollection;

-(JSContextRef) jsContext;

-(void) startJSFunctionStackTracing;
-(void) endJSFunctionStackTracing;

-(NSArray*) getChildRunTimeEnvironments;
-(void) propagateException:(NSDictionary *) errorDict;
//-(void) setParentRunTime:(Runtime*) aParentRunTime;
-(Runtime*) getParentRunTime;
-(BOOL) addChildRunTimeEnvironment:(Runtime*) aChildRunTime;
-(BOOL) removeChildRunTimeEnvironmentWithID:(int) aChildRunTimeID;
-(BOOL) removeChildRunTimeEnvironment:(Runtime*) aChildRunTime;
-(int) getRunTimeID;
-(void) destroyWorkerThread;
-(void) terminateWorkerThread;
-(void) stopWorkerThread;
-(void) startWorkerThread;
-(void) registerWrappersForWorker;
-(NSDictionary*) getErrDictFrom:(NSDictionary*) eDict withName:(NSString*) eName withReason:(NSString*) eReason;

- (JSObjectRef) getJShandleForObject:(id) object;
- (void) tryCreateJShandleForObject:(id) object withClassValue: (NSValue*) classRef;
-(id) getObjectForProperty:(NSString *)propertyName fromJSValue:(JSValueRef)jsValue exception:(JSValueRef*)exception;
- (id)convertJSValue:(JSValueRef)value exception:(JSValueRef *)exception context:(JSContextRef)context;

- (NSDictionary *)propertiesForObject:(JSObjectRef)object
                            exception:(JSValueRef *)exception
                              context:(JSContextRef)context;
-(void)registerInheritedWidgetFunctions;
@end
