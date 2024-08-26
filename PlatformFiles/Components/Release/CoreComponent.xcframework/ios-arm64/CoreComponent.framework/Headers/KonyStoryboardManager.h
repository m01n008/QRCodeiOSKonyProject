//
//  KonyStoryboardManager.h
//  CoreComponent
//
//  Created by Adithya Ram on 07/03/20.
//  Copyright © 2020 Aravind Macharla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyStoryboard.h"

NS_ASSUME_NONNULL_BEGIN

@interface KonyStoryboardManager : NSObject

+(instancetype) sharedManager;

-(KonyStoryboard*) createStoryboard:(NSString*)storyboardIdentifier storyboardClass:(Class)StoryboardClass;
-(KonyStoryboard*) getStoryboard:(NSString*)storyboardIdentifier;
-(void) releaseStoryboard:(NSString*)storyboardIdentifier;

@end

NS_ASSUME_NONNULL_END

