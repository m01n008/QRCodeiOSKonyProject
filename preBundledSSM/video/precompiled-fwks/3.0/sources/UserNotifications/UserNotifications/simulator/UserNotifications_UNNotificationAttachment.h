#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UserNotifications_UNNotificationAttachment_symbols(JSContext*);
@protocol UNNotificationAttachmentInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy,nonatomic) NSURL * URL;
@property (readonly,copy,nonatomic) NSString * identifier;
@property (readonly,copy,nonatomic) NSString * type;
@end
@protocol UNNotificationAttachmentClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
JSExportAs(attachmentWithIdentifierURLOptionsError,
+(id) jsattachmentWithIdentifier: (NSString *) identifier URL: (NSURL *) URL options: (NSDictionary *) options error: (JSValue *) error );
@end
#pragma clang diagnostic pop