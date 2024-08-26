//
//  BarButtonItemWidget.h
//  VM
//
//  Created by Naresh Kodumuri on 27/12/16.
//
//

#import "CallBack.h"
#import "KonyUtil.h"


#define BARMETRICS_DEFAULT  @"default"
#define BARMETRICS_COMPACT  @"compact"
#define BARMETRICS_DEFAULT_PROMPT  @"defaultprompt"
#define BARMETRICS_COMPACT_PROMPT  @"compactprompt"

#define TYPE @"type"
#define STYLE @"style"
#define ENABLED @"enabled"
#define META_DATA @"metaData"
#define ACTION @"action"
#define TINT_COLOR_BARBUTTON @"tintColor"
#define IMAGE @"image"
#define SYSTEM_ITEM @"systemItem"
#define TITLE @"title"
#define CUSTOM_BAR_BUTTON @"custom"
#define WIDTH @"width"

#define IMG_SOURCE_DEFAULT @"imgSource.default"
#define IMG_SOURCE_COMPACT @"imgSource.compact"
#define IMG_SOURCE_DEFAULT_PROMPT @"imgSource.defaultprompt"
#define IMG_SOURCE_COMPACT_PROMPT @"imgSource.compactprompt"

#define HIGHLIGHTED_IMG_SOURCE_DEFAULT @"highlightedImgSource.default"
#define HIGHLIGHTED_IMG_SOURCE_COMPACT @"highlightedImgSource.compact"
#define HIGHLIGHTED_IMG_SOURCE_DEFAULT_PROMPT @"highlightedImgSource.defaultprompt"
#define HIGHLIGHTED_IMG_SOURCE_COMPACT_PROMPT @"highlightedImgSource.compactprompt"

#define ACCESSIBILITY_CONFIG @"accessibilityConfig"
#define ACCESSIBILITY_LABEL @"a11yLabel"
#define ACCESSIBILITY_VALUE @"accessibilityConfig"
#define ACCESSIBILITY_HINT @"accessibilityConfig"

@class BarButtonItemModel;
@interface BarButtonItemWidget : UIBarButtonItem

- (id)initWithModel:(BarButtonItemModel *)model;
- (void)onClick;
- (void)setTintColorForBarButtonItem:(UIColor *)tintColor;
- (void)setStyleForBarButtonItem:(KonyBarButtonStyle) style;
- (void)setBackgroundImageforBarButtonItem:(NSString *) imageSource
                             forBarMetrics:(KonyBarMetrics) barMetrics
                                  forState:(UIControlState)state;
-(void) setBackgroundImageForBarButtonItem:(NSMutableDictionary *)imgSource
                                  forState:(UIControlState)state;
-(void) setAccessibilityConfig:(NSMutableDictionary *)config;



@property (nonatomic,retain) CallBack *jsActionCallback;
@property (nonatomic,retain) BarButtonItemModel *model;
@property (nonatomic,retain) Widget *customWidReference;


@end
