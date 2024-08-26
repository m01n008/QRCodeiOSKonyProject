//
//  ActionSheetModel.h
//  VM
//
//  Created by Saianuhya Kodimela on 22/12/16.
//
//

#import <CoreComponent/WidgetModel.h>
#import <CoreComponent/JSObject.h>

@class ActionSheetWidget;

@interface ActionSheetModel : WidgetModel
{
    UIAlertController *alertController;
}

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *message;
@property (nonatomic, retain) NSMutableArray *actionModels;
@property (nonatomic, retain) NSMutableDictionary *actionsheetConfig;
@property (nonatomic, retain) CallBack *showCompletionCallback;

- (void)addAction:(JSObject *)actionModel;
- (void)setAnchorConfiguration:(NSMutableDictionary *)configDictionary;
- (void)show;
- (void)dismiss;

@end
