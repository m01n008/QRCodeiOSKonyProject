//
//  KonyStoryboard.h
//  CoreComponent
//
//  Created by Adithya Ram on 07/03/20.
//  Copyright © 2020 Aravind Macharla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyStoryboardModel.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KonyStoryboard : NSObject

@property (nonatomic,strong) KonyStoryboardModel *storyboardModel;

+(Class)modelClass;

-(instancetype)initWithModel:(KonyStoryboardModel*)model;
-(UIViewController*)viewController;
-(void)show;
-(void)dismiss;

@end

NS_ASSUME_NONNULL_END

