//
//  WKWebWidget.h
//  VM
//
//  Created by Praveen Kothapeta on 21/03/17.
//
//

#import <CoreComponent/Widget.h>
#import <WebKit/WebKit.h>
#import <CoreComponent/KonyScrollViewDelegateProxy.h>
#import "WebConstants.h"
#import <NetworkComponent/KonyAuthChallengesHandler.h>

@interface CustomWKWebView : WKWebView {
    
}
@end

@interface WKWebWidget : Widget<WKNavigationDelegate, CallBackListenerProtocol, WKUIDelegate>
{
@protected
    CustomWKWebView *webView;
    NSMutableURLRequest *request;
    WEBDATATYPE typeOfDataToBeLoaded;
    UIImageView *bgImageView;
    UIActivityIndicatorView *indicator;
    BOOL isWebRequestComplete;
    BOOL showBgForFirstTime;
    KonyScrollViewDelegateProxy<UIScrollViewDelegate>* scrollDelegateProxy;
    WKWebView *popupView;
}

@property (readonly)  CustomWKWebView *webView;
@property (nonatomic,retain) NSMutableURLRequest *request;
@property (nonatomic,assign) WEBDATATYPE typeOfDataToBeLoaded;
@property (readwrite,retain) UIImageView *bgImageView;
@property (readwrite,retain) UIActivityIndicatorView *indicator;
@property (readwrite,assign) BOOL isWebRequestComplete;
@property (readwrite,retain)  WKWebView *popupView;

+ (WKProcessPool *)getSharedProcessPool;
- (void) createRequestForUrl;
- (void) loadDataForWebView;
- (BOOL) isScreenLevelWidget;
- (BOOL) canGoBack;
- (BOOL) canGoForward;
- (void) updateScrollingEvents;
- (NSString *) evaluateJavaScript:(NSArray*)arguments isSync:(BOOL)isSync;
- (void) readCookies:(NSArray*)arguments;
- (void) deleteCookies:(NSArray*)arguments;
- (void) setCookies:(NSArray*)arguments;
@end
