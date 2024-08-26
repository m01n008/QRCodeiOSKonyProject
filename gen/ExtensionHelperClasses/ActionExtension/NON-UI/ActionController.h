//
//  ActionViewController.h
//  NONUI_Action
//
//  Created by Satya.bobba on 13/12/16.
//  Copyright © 2016 Satya.bobba. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "konyExtensionsRuntime.h"

@interface ActionController : NSObject <NSExtensionRequestHandling>{
}
- (void)beginRequestWithExtensionContext:(NSExtensionContext *)context;
@end
