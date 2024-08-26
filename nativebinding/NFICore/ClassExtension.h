#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol ClassExtensionExports <JSExport>

JSExportAs(newClass,
+(id)createClass: (NSString*) className extending: (NSString*) baseClass conformingTo: (NSArray*) protocols withInstanceMembers: (JSValue*) instanceMembers);
+(id)import: (NSString*) className;
@end

@interface ClassExtension : NSObject <ClassExtensionExports>
@end
