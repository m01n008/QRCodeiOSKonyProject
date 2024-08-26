//
//  JSBarButtonItem.h
//  VM
//
//  Created by Naresh Kodumuri on 27/12/16.
//
//

#import "JSObject.h"
#import "CallBack.h"

@interface JSBarButtonItem : JSObject


@property (nonatomic,retain) CallBack *action;
@property (nonatomic) KonyBarButtonStyle  style;
@property (nonatomic, retain) UIColor *tintColor;
@property (nonatomic) CGFloat width;

-(void) setBackgroundImage:(NSArray *) arguments;
-(void) setHighlightedBackgroundImage:(NSArray *) arguments;
-(void) setAccessibilityConfig:(NSArray *) arguments;
    

@end
