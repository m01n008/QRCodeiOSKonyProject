//
//  BoxTemplateModel.h
//  VM
//
//  Created by Pramod Jain on 29/08/13.
//
//

#import "BoxModel.h"

@interface BoxTemplateModel : BoxModel
{
    BOOL isTemplateBoxInitialised;
    CallBack *addWidgets;
    CallBack *initializeBoxTemplate;
    CallBack *onDestroy;
}

@property(nonatomic,retain) CallBack *addWidgets;
@property(nonatomic,retain) CallBack *initializeBoxTemplate;
@property(nonatomic,retain) CallBack *onDestroy;
- (void) executeInitMethods;
- (void) destroy;


@end
