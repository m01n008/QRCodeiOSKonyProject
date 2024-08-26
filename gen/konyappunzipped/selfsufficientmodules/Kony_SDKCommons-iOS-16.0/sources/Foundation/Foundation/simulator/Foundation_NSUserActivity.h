#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSUserActivity_symbols(JSContext*);
@protocol NSUserActivityInstanceExports<JSExport>
@property (readonly,copy) NSString * activityType;
@property (copy) NSString * title;
@property (copy) NSDictionary * userInfo;
@property (copy) NSSet * requiredUserInfoKeys;
@property (assign) BOOL needsSave;
@property (copy) NSURL * webpageURL;
@property (copy) NSURL * referrerURL;
@property (copy) NSDate * expirationDate;
@property (copy) NSSet * keywords;
@property () BOOL supportsContinuationStreams;
@property (weak) id delegate;
@property (copy) NSString * targetContentIdentifier;
@property (getter=isEligibleForHandoff) BOOL eligibleForHandoff;
@property (getter=isEligibleForSearch) BOOL eligibleForSearch;
@property (getter=isEligibleForPublicIndexing) BOOL eligibleForPublicIndexing;
@property (getter=isEligibleForPrediction) BOOL eligibleForPrediction;
@property (copy) NSUserActivityPersistentIdentifier persistentIdentifier;
JSExportAs(initWithActivityType,
-(id) jsinitWithActivityType: (NSString *) activityType );
-(id) jsinit;
-(void) addUserInfoEntriesFromDictionary: (NSDictionary *) otherDictionary ;
-(void) becomeCurrent;
-(void) resignCurrent;
-(void) invalidate;
JSExportAs(getContinuationStreamsWithCompletionHandler,
-(void) jsgetContinuationStreamsWithCompletionHandler: (JSValue *) completionHandler );
@end
@protocol NSUserActivityClassExports<JSExport>
JSExportAs(deleteSavedUserActivitiesWithPersistentIdentifiersCompletionHandler,
+(void) jsdeleteSavedUserActivitiesWithPersistentIdentifiers: (NSArray *) persistentIdentifiers completionHandler: (JSValue *) handler );
JSExportAs(deleteAllSavedUserActivitiesWithCompletionHandler,
+(void) jsdeleteAllSavedUserActivitiesWithCompletionHandler: (JSValue *) handler );
@end
@protocol NSUserActivityDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) userActivityWillSave: (NSUserActivity *) userActivity ;
-(void) userActivityWasContinued: (NSUserActivity *) userActivity ;
-(void) userActivity: (NSUserActivity *) userActivity didReceiveInputStream: (NSInputStream *) inputStream outputStream: (NSOutputStream *) outputStream ;
@end
@protocol NSUserActivityDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop