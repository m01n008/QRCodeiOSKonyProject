#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UITableViewHeaderFooterView_symbols(JSContext*);
@protocol UITableViewHeaderFooterViewInstanceExports<JSExport>
@property (nonatomic,strong) UIView * backgroundView;
@property (readonly,nonatomic,strong) UIView * contentView;
@property (nonatomic) BOOL automaticallyUpdatesBackgroundConfiguration;
@property (readonly,nonatomic,strong) UILabel * detailTextLabel;
@property (readonly,nonatomic,strong) UILabel * textLabel;
@property (copy,nonatomic) id contentConfiguration;
@property (nonatomic) BOOL automaticallyUpdatesContentConfiguration;
@property (copy,nonatomic) UIBackgroundConfiguration * backgroundConfiguration;
@property (readonly,nonatomic) UIViewConfigurationState * configurationState;
@property (readonly,copy,nonatomic) NSString * reuseIdentifier;
-(void) prepareForReuse;
JSExportAs(initWithReuseIdentifier,
-(id) jsinitWithReuseIdentifier: (NSString *) reuseIdentifier );
-(void) updateConfigurationUsingState: (UIViewConfigurationState *) state ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(void) setNeedsUpdateConfiguration;
-(UIListContentConfiguration *) defaultContentConfiguration;
@end
@protocol UITableViewHeaderFooterViewClassExports<JSExport>
@end
#pragma clang diagnostic pop