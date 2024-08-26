//
//  ApplicationContext.h
//  VM
//
//  Created by Amba on 19/08/13.
//
//

#import <Foundation/Foundation.h>
#import "VMAppDelegate.h"
#import "UnarchiverDelegate.h"

@interface ApplicationContext : NSObject<UnarchiverDelegate> {
    // Kony Application
    VMAppDelegate *applicationDelegate;
    
    NSString *applicationID;
    NSString *sourcesLocation;
    NSString *userWidgetSourcesLocation;
    NSString *childAppSourcesLocation;
    NSString *resourcesLocation;
    NSString *themesLocation;
    NSString *i18nLocation;
    NSString *fontsLocation;
    NSString *workerThreadsSourceLocation;
    NSString *functionalModuleXMLString;
    NSString *rawFilesLocation;
    NSString* webFilesLocation;
    NSArray *appStartupJSFiles;

    @private
    // Application specific platform singleton(per application) instances
    NSMutableDictionary *singletonInstancesDictionary;
}
@property(nonatomic,retain) VMAppDelegate *applicationDelegate;

@property(nonatomic,retain) NSString *applicationID;
@property(nonatomic,retain) NSString *applicationDirectory;
@property(nonatomic,retain) NSString *sourcesLocation;
@property(nonatomic,retain) NSString *userWidgetSourcesLocation;
@property(nonatomic,retain) NSString *childAppSourcesLocation;
@property(nonatomic,retain) NSString *resourcesLocation;
@property(nonatomic,retain) NSString *themesLocation;
@property(nonatomic,retain) NSString *i18nLocation;
@property(nonatomic,retain) NSString *fontsLocation;
@property(nonatomic,retain) NSString *workerThreadsSourceLocation;
@property(nonatomic,retain) NSString *functionalModuleXMLString;
@property(nonatomic,retain) NSString *rawFilesLocation;
@property(nonatomic,retain) NSString *webFilesLocation;
@property(nonatomic,retain) NSString *webCordovaFilesLocation;

@property(nonatomic,retain) NSString *workerThreadsDirName;
@property(nonatomic,retain) NSArray *appStartupJSFiles;
@property(nonatomic) NSDictionary *localNotificationCallbacksDict;
@property(nonatomic) NSDictionary *remoteNotificationCallbacksDict;


-(id)initWithLocation:(NSString *)applicationBundleLocation appId:(NSString *)appID;
-(NSMutableData *)sourceContent;
-(id) sharedSingletonInstanceForClass:(Class)class_;
-(void)unarchiveFileAtLocation:(NSString *)location toNewLocation:(NSString *)newLocation;
- (void)changeSourcesDirToSourcesForChildAppDir;

@end
