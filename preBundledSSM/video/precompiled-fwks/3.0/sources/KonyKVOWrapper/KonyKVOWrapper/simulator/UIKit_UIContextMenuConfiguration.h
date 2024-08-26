#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIContextMenuConfiguration_symbols(JSContext*);
@protocol UIContextMenuConfigurationInstanceExports<JSExport>
@property (readonly,nonatomic) id identifier;
@end
@protocol UIContextMenuConfigurationClassExports<JSExport>
JSExportAs(configurationWithIdentifierPreviewProviderActionProvider,
+(id) jsconfigurationWithIdentifier: (id) identifier previewProvider: (JSValue *) previewProvider actionProvider: (JSValue *) actionProvider );
@end
#pragma clang diagnostic pop