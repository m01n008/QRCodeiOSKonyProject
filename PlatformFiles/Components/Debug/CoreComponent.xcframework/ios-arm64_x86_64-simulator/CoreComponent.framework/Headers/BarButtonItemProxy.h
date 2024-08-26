//
//  BarButtonItemProxy.h
//  VM
//
//  Created by Naresh Kodumuri on 27/12/16.
//
//

#import "BaseProxy.h"
#import "BarButtonItemModel.h"

#define BARMETRICS_DEFAULT  @"default"
#define BARMETRICS_COMPACT  @"compact"
#define BARMETRICS_DEFAULT_PROMPT  @"defaultprompt"
#define BARMETRICS_COMPACT_PROMPT  @"compactprompt"


@interface BarButtonItemProxy : NSObject

+(id) createBarButtonProxy: (NSDictionary*) config;
-(void) setBackgroundImageforBarButtonItem:(NSString *) imageSource forBarMetrics:(KonyBarMetrics) barMetrics;
-(void) setHighlightedBackgroundImageforBarButtonItem:(NSString *) highLightedImageSource forBarMetrics:(KonyBarMetrics) barMetrics;

-(void) setAccessibilityConfig:(NSDictionary *) accessibilityConfig;

-(id) initWithModel: (BarButtonItemModel *)model;

@property (nonatomic,retain) BarButtonItemModel *model;
@end
