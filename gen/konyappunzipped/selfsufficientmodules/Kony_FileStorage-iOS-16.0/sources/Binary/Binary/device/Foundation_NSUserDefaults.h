#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSUserDefaults_symbols(JSContext*);
@protocol NSUserDefaultsInstanceExports<JSExport>
@property (readonly,copy) NSArray * volatileDomainNames;
-(id) jsinit;
JSExportAs(initWithSuiteName,
-(id) jsinitWithSuiteName: (NSString *) suitename );
JSExportAs(initWithUser,
-(id) jsinitWithUser: (NSString *) username );
-(id) objectForKey: (NSString *) defaultName ;
-(void) setObject: (id) value forKey: (NSString *) defaultName ;
-(void) removeObjectForKey: (NSString *) defaultName ;
-(NSString *) stringForKey: (NSString *) defaultName ;
-(NSArray *) arrayForKey: (NSString *) defaultName ;
-(NSDictionary *) dictionaryForKey: (NSString *) defaultName ;
-(NSData *) dataForKey: (NSString *) defaultName ;
-(NSArray *) stringArrayForKey: (NSString *) defaultName ;
-(NSInteger) integerForKey: (NSString *) defaultName ;
-(float) floatForKey: (NSString *) defaultName ;
-(double) doubleForKey: (NSString *) defaultName ;
-(BOOL) boolForKey: (NSString *) defaultName ;
-(NSURL *) URLForKey: (NSString *) defaultName ;
-(void) setInteger: (NSInteger) value forKey: (NSString *) defaultName ;
-(void) setFloat: (float) value forKey: (NSString *) defaultName ;
-(void) setDouble: (double) value forKey: (NSString *) defaultName ;
-(void) setBool: (BOOL) value forKey: (NSString *) defaultName ;
-(void) setURL: (NSURL *) url forKey: (NSString *) defaultName ;
-(void) registerDefaults: (NSDictionary *) registrationDictionary ;
-(void) addSuiteNamed: (NSString *) suiteName ;
-(void) removeSuiteNamed: (NSString *) suiteName ;
-(NSDictionary *) dictionaryRepresentation;
-(NSDictionary *) volatileDomainForName: (NSString *) domainName ;
-(void) setVolatileDomain: (NSDictionary *) domain forName: (NSString *) domainName ;
-(void) removeVolatileDomainForName: (NSString *) domainName ;
-(NSArray *) persistentDomainNames;
-(NSDictionary *) persistentDomainForName: (NSString *) domainName ;
-(void) setPersistentDomain: (NSDictionary *) domain forName: (NSString *) domainName ;
-(void) removePersistentDomainForName: (NSString *) domainName ;
-(BOOL) synchronize;
-(BOOL) objectIsForcedForKey: (NSString *) key ;
-(BOOL) objectIsForcedForKey: (NSString *) key inDomain: (NSString *) domain ;
@end
@protocol NSUserDefaultsClassExports<JSExport>
+(void) resetStandardUserDefaults;
+(NSUserDefaults *) standardUserDefaults;
@end
#pragma clang diagnostic pop