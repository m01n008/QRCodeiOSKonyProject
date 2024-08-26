#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UICellAccessory_symbols(JSContext*);
@protocol UICellAccessoryOutlineDisclosureInstanceExports<JSExport>
@property (nonatomic) UICellAccessoryOutlineDisclosureStyle style;
@property (getter=getJsActionHandler,setter=setJsActionHandler:) JSValue* jsactionHandler;
@end
@protocol UICellAccessoryOutlineDisclosureClassExports<JSExport>
@end
@protocol UICellAccessoryCheckmarkInstanceExports<JSExport>
@end
@protocol UICellAccessoryCheckmarkClassExports<JSExport>
@end
@protocol UICellAccessoryDeleteInstanceExports<JSExport>
@property (getter=getJsActionHandler,setter=setJsActionHandler:) JSValue* jsactionHandler;
@property (nonatomic,strong) UIColor * backgroundColor;
@end
@protocol UICellAccessoryDeleteClassExports<JSExport>
@end
@protocol UICellAccessoryDisclosureIndicatorInstanceExports<JSExport>
@end
@protocol UICellAccessoryDisclosureIndicatorClassExports<JSExport>
@end
@protocol UICellAccessoryMultiselectInstanceExports<JSExport>
@property (nonatomic,strong) UIColor * backgroundColor;
@end
@protocol UICellAccessoryMultiselectClassExports<JSExport>
@end
@protocol UICellAccessoryReorderInstanceExports<JSExport>
@property (nonatomic) BOOL showsVerticalSeparator;
@end
@protocol UICellAccessoryReorderClassExports<JSExport>
@end
@protocol UICellAccessoryCustomViewInstanceExports<JSExport>
@property (readonly,nonatomic,strong) UIView * customView;
@property (nonatomic) BOOL maintainsFixedSize;
@property (readonly,nonatomic) UICellAccessoryPlacement placement;
@property (getter=getJsPosition,setter=setJsPosition:) JSValue* jsposition;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
JSExportAs(initWithCustomViewPlacement,
-(id) jsinitWithCustomView: (UIView *) customView placement: (UICellAccessoryPlacement) placement );
@end
@protocol UICellAccessoryCustomViewClassExports<JSExport>
@end
@protocol UICellAccessoryInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (nonatomic) CGFloat reservedLayoutWidth;
@property (getter=isHidden,nonatomic) BOOL hidden;
@property (nonatomic) UICellAccessoryDisplayedState displayedState;
@property (nonatomic,strong) UIColor * tintColor;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(id) jsinit;
@end
@protocol UICellAccessoryClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol UICellAccessoryInsertInstanceExports<JSExport>
@property (getter=getJsActionHandler,setter=setJsActionHandler:) JSValue* jsactionHandler;
@property (nonatomic,strong) UIColor * backgroundColor;
@end
@protocol UICellAccessoryInsertClassExports<JSExport>
@end
@protocol UICellAccessoryLabelInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSString * text;
@property (nonatomic,strong) UIFont * font;
@property (nonatomic) BOOL adjustsFontForContentSizeCategory;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
JSExportAs(initWithText,
-(id) jsinitWithText: (NSString *) text );
@end
@protocol UICellAccessoryLabelClassExports<JSExport>
@end
#pragma clang diagnostic pop