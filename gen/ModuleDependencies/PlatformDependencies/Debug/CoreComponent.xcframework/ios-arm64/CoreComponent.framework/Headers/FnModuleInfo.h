//
//  FunctionalModuleInfoProvider.h
//  VM
//
//  Created by Girish Haniyamballi on 15/05/14.
//
//

#import <Foundation/Foundation.h>
#import "JSUtil.h"


#define FUNCTIONAL_MODULE_XML_FILE_NAME @"functionalModules.xml"
#define KONY_STARTUP_MODULE     @"KonydefaultModules"
#define KONY_LIBRARY_FILENAME   @"konylibrary.js"
#define KONY_REQUIREJS_FILENAME @"require.js"
#define KONY_MVCSDK_FILENAME    @"001konymvc_sdk.js"


#if DEBUGINFO
#define  __FN_MODULE_DEBUG_INFO 1
#endif

//uncomment to log only functional module logs in release mode
//#define  __FN_MODULE_DEBUG_INFO 1


@interface FnModuleInfo : NSObject {
    
    NSDictionary* fnModuleInfoDictionary;
    BOOL isFunctionalModulesEnabled;
    NSMutableSet* loadedFunctionalModules;
    dispatch_queue_t queue;
}
@property(nonatomic,assign) BOOL isFunctionalModulesEnabled;

- (instancetype)initWithXMLString:(NSString*)aXMLString;

-(NSString*) getInitMethodForModule:(NSString*) moduleName;
-(NSArray*) functionalModuleList;
-(BOOL) checkIfModuleExist:(NSString*) moduleName;
-(NSArray*) getDependentModuleNamesForModule:(NSString*) moduleName;
- (NSArray *)getFilesInModule:(NSString *)moduleName;
- (NSArray *)getStartupModules;
-(BOOL) isFunctionalModuleLoaded:(NSString*) moduleName inRuntime:(Runtime*) jsRuntime;
-(void) markModuleAsLoaded:(NSString*)moduleName inRuntime:(Runtime*) jsRuntime;
-(void) markModuleAsFailedToLoad:(NSString*)moduleName inRuntime:(Runtime*) jsRuntime;

@end
