#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UINavigationItem_symbols(JSContext*);
@protocol UINavigationItemInstanceExports<JSExport, NSCodingInstanceExports_>
@property (readwrite,copy,nonatomic) UINavigationBarAppearance * compactAppearance;
@property (assign,readwrite,nonatomic) UINavigationItemBackButtonDisplayMode backButtonDisplayMode;
@property (assign,readwrite,nonatomic) BOOL hidesSearchBarWhenScrolling;
@property (readwrite,copy,nonatomic) NSString * prompt;
@property (readwrite,nonatomic,strong) UISearchController * searchController;
@property (readwrite,copy,nonatomic) NSString * title;
@property (readwrite,copy,nonatomic) NSArray * rightBarButtonItems;
@property (readwrite,copy,nonatomic) UINavigationBarAppearance * scrollEdgeAppearance;
@property (readwrite,copy,nonatomic) NSArray * leftBarButtonItems;
@property (assign,readwrite,nonatomic) BOOL hidesBackButton;
@property (readwrite,copy,nonatomic) NSString * backButtonTitle;
@property (assign,readwrite,nonatomic) UINavigationItemLargeTitleDisplayMode largeTitleDisplayMode;
@property (readwrite,nonatomic,strong) UIBarButtonItem * backBarButtonItem;
@property (readwrite,nonatomic,strong) UIBarButtonItem * rightBarButtonItem;
@property (readwrite,copy,nonatomic) UINavigationBarAppearance * standardAppearance;
@property (readwrite,nonatomic,strong) UIView * titleView;
@property (assign,readwrite,nonatomic) BOOL leftItemsSupplementBackButton;
@property (readwrite,nonatomic,strong) UIBarButtonItem * leftBarButtonItem;
-(void) setRightBarButtonItems: (NSArray *) items animated: (BOOL) animated ;
JSExportAs(initWithTitle,
-(id) jsinitWithTitle: (NSString *) title );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(void) setHidesBackButton: (BOOL) hidesBackButton animated: (BOOL) animated ;
-(void) setRightBarButtonItem: (UIBarButtonItem *) item animated: (BOOL) animated ;
-(void) setLeftBarButtonItem: (UIBarButtonItem *) item animated: (BOOL) animated ;
-(void) setLeftBarButtonItems: (NSArray *) items animated: (BOOL) animated ;
@end
@protocol UINavigationItemClassExports<JSExport, NSCodingClassExports_>
@end
#pragma clang diagnostic pop