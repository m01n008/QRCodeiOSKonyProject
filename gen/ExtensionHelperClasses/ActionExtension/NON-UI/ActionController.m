//
//  ActionViewController.m
//  NONUI_Action
//
//  Created by Satya.bobba on 13/12/16.
//  Copyright © 2016 Satya.bobba. All rights reserved.
//

#import "ActionController.h"
#import <MobileCoreServices/MobileCoreServices.h>


@implementation ActionController

- (void)beginRequestWithExtensionContext:(NSExtensionContext *)extcontext{

    [konyExtensionsRuntime setup:self];
   
    [konyExtensionsRuntime executeCallback:@"beginRequestWithExtensionContext" withArg:@[extcontext]];
}
@end
