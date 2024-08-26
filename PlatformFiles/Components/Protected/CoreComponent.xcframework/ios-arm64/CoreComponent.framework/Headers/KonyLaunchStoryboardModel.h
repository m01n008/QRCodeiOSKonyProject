//
//  KonyLaunchStoryboardModel.h
//  CoreComponent
//
//  Created by Adithya Ram on 07/03/20.
//  Copyright © 2020 Adithya Ram. All rights reserved.
//

#import "KonyStoryboardModel.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KonyLaunchStoryboardModel : KonyStoryboardModel

@property (nonatomic) BOOL storyboardRequiresActivityIndicator;
@property (nonatomic) BOOL storyboardRequiresAnimatedImagesView;
@property (nonatomic) BOOL storyboardRequiresMoviePlayer;

@property (nonatomic,strong) NSMutableArray<UIImage*> *imageSet;
@property (nonatomic) NSTimeInterval animationDuration;

@property (nonatomic,strong) NSURL *movieFileURL;
@property (nonatomic) BOOL mixAudioSupport;
@property (nonatomic) BOOL isVideoInterruptible;

@end

NS_ASSUME_NONNULL_END
