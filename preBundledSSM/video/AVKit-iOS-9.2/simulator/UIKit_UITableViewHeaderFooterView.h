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
@property (readonly,nonatomic,strong) UILabel * detailTextLabel;
@property (readonly,nonatomic,strong) UILabel * textLabel;
@property (nonatomic,strong) UIColor * tintColor;
@property (readonly,copy,nonatomic) NSString * reuseIdentifier;
-(void) prepareForReuse;
JSExportAs(initWithReuseIdentifier,
-(id) jsinitWithReuseIdentifier: (NSString *) reuseIdentifier );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol UITableViewHeaderFooterViewClassExports<JSExport>
@end
#pragma clang diagnostic pop