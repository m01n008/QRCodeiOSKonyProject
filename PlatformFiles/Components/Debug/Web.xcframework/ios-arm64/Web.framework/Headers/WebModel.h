//
//  LineModel.h
//  VM
//
//  Created by Uday Bheema on 08/02/12.
//  Copyright (c) 2012 KONY LABS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>
//#import "LuaClosure.h"
#import <CoreComponent/KonyTypes.h>

@interface WebModel : WidgetModel
{
@private
	//widget properties
	NSString *url;
	NSString *method;
	NSArray *data;
    NSString *conditionalEncodedURLString;
    //Basic
    //Config for url method data
    NSMutableDictionary *requestURLConfig;
    NSMutableArray *supportedURLSchemes;
    NSMutableArray *defaultSupportedURLSchemes;
	NSString *htmlString;
	CallBack *onsuccess;
	CallBack *onfailure;
    CallBack *handleRequest;
    CallBack *onPageStarted;
    CallBack *onPageFinished;
    BOOL screenLevelWidget;
	BOOL phoneNumbersToBeDetected;
	BOOL enableZoomAndPan;
    BOOL showProgressIndicator;
    BOOL limitsNavigationsToAppBoundDomains;
    BOOL isPopUpBlockEnabled;
	//NSNumber* containerWeight;
    
    BOOL toReload;
    BOOL toGoBack;
    BOOL toGoForward;
    BOOL toClearHistory;
    
    NSString*   backgroundImageName;
    NSDictionary* scrollingEvents;
    BOOL bounces;
    NSDictionary *loadDataConfig;
    BOOL enableNativeCommunication;
    BOOL contentLoadsKonyWeb;
    BrowserType browserType;
//    ScrollingInfo* scrollingInfo;

	//   WEBDATATYPE typeOfDataToBeLoaded;
}


@property (readwrite, retain) NSString *url;
@property (nonatomic, readonly, retain) NSString *customNameSpaceForNativeCommunication;
@property (readwrite, retain) NSString *method;
@property (readwrite, retain) NSArray *data;
@property (readwrite, retain) NSMutableDictionary *requestURLConfig;
@property (readwrite, retain) NSMutableArray *supportedURLSchemes;
@property (readwrite, retain) NSMutableArray *defaultSupportedURLSchemes;
@property (readwrite, retain) NSString *htmlString;
@property (nonatomic, retain) CallBack *onsuccess;
@property (nonatomic, retain) CallBack *onfailure;
@property (nonatomic, retain) CallBack *handleRequest;
@property (nonatomic, retain) CallBack *onPageStarted;
@property (nonatomic, retain) CallBack *onPageFinished;
//@property (readwrite, assign) NSNumber* containerWeight;
@property (readwrite, assign) BOOL screenLevelWidget;
@property (readwrite, assign) BOOL phoneNumbersToBeDetected;
@property (readwrite, assign) BOOL enableZoomAndPan;
@property (readwrite,retain)  NSString*   backgroundImageName;
@property (readwrite, assign) BOOL toReload;
@property (readwrite, assign) BOOL toGoBack;
@property (readwrite, assign) BOOL toGoForward;
@property (readwrite, assign) BOOL toClearHistory;
@property (nonatomic, retain)   NSDictionary*   scrollingEvents;
@property (nonatomic, assign)         BOOL bounces;
@property (nonatomic) BOOL showProgressIndicator;
@property (nonatomic,retain) NSDictionary *loadDataConfig;
@property (readwrite, assign) BOOL scrollsToTop;
@property (readwrite,retain) NSString *baseURLString;
@property (readwrite,assign) BOOL enableNativeCommunication;
@property (readwrite,assign) BOOL contentLoadsKonyWeb;
@property (nonatomic)   BrowserType browserType;
@property (nonatomic, retain) NSDictionary *cacheConfig;
@property (readwrite,assign) BOOL allowsInlineMediaPlayback;
@property (readwrite, assign) BOOL shareCookiesInBrowsers;
@property (nonatomic, readwrite, assign) SSLValidationBehaviour sslValidationBehaviour;
@property (nonatomic) BOOL limitsNavigationsToAppBoundDomains;
@property (nonatomic, assign) BOOL isPopUpBlockEnabled;
- (Widget *)createWidget;

- (void) reload;
- (BOOL)validateUrl: (id *)ioValue error: (NSError **)outError;
- (BOOL)validateMethod: (id *)ioValue error: (NSError **)outError;
- (BOOL)validateData: (id *)ioValue error: (NSError **)outError;
- (BOOL)validateHtmlString: (id *)ioValue error: (NSError **)outError;
- (void) updateValue: (NSString*) flag;
- (BOOL) canGoBackValue;
- (BOOL) canGoForwardValue;
- (NSString *)evaluateJavaScript:(NSArray*)arguments isSync:(BOOL)isSync;
- (NSString*) getConditionalEncodedURL;
- (void) setConditionalEncodedURL: (NSString*) pconditionalEncodedURLString;
- (void) readCookies:(NSArray*)arguments;
- (void) deleteCookies:(NSArray*)arguments;
- (void) setCookies:(NSArray*)arguments;
@end
