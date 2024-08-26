//
//  BarButtonItemModel.h
//  VM
//
//  Created by Naresh Kodumuri on 27/12/16.
//
//

#import "BarButtonItemWidget.h"
#import "KonyTypes.h"

@interface BarButtonItemModel : NSObject{
    
}

@property (nonatomic) KonyBarButtonType      type;
@property (nonatomic) KonyBarButtonStyle     style;
@property (nonatomic, retain) CallBack      *action;
@property (nonatomic, retain) NSMutableDictionary  *metaData;

@property (nonatomic,retain) NSMutableDictionary *imgSource;
@property (nonatomic,retain) NSMutableDictionary *highlightedImgSource;
@property (nonatomic,retain) NSMutableDictionary *accessibilityConfig;



@property (nonatomic) CGFloat width;
@property (nonatomic, retain) UIColor *tintColor;

@property (nonatomic) BOOL enabled;
@property (nonatomic) BOOL isLegacyRightButton;

//MADPIOS-4778:Adding this for Jasmine Automation recording for NavBar Items.
@property (nonatomic) NSString *barButtonID;


- (BarButtonItemWidget *)createBarButtonItem;
- (id) initWithConfig: (NSDictionary*) config;


@end

