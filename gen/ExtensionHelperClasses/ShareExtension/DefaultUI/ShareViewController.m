//
//  ShareViewController.m
//
//  Created by Satya.bobba on 10/11/16.
//  Copyright © 2016 Satya.bobba. All rights reserved.
//

#import "ShareViewController.h"


@implementation ShareViewController

- (BOOL)isContentValid {
    // Do validation of contentText and/or NSExtensionContext attachments here
     JSValue *value = [konyExtensionsRuntime executeCallback:@"isContentValid"];
    return [value toBool];
}

- (void)didSelectPost {
    // This is called after the user selects Post. Do the upload of contentText and/or NSExtensionContext attachments.
    
    // Inform the host that we're done, so it un-blocks its UI. Note: Alternatively you could call super's -didSelectPost, which will similarly complete the extension context.
     [konyExtensionsRuntime executeCallback:@"didSelectPost"];
    // [self.extensionContext completeRequestReturningItems:@[] completionHandler:nil];
   
}

- (void)didSelectCancel{
    [konyExtensionsRuntime executeCallback:@"didSelectCancel"];
    //[self.extensionContext cancelRequestWithError:nil];
    
}
- (NSArray *)configurationItems {
    // To add configuration options via table cells at the bottom of the sheet, return an array of SLComposeSheetConfigurationItem here.
     JSValue *value = [konyExtensionsRuntime executeCallback:@"configurationItems"];
     NSArray *items = [value toArray];
    
    return items;
}

// Called when the sheet presentation animation is finished.
// Subclasses should implement this to begin performing any expensive work (e.g., messaging a server), instead of during initialization, -viewWillAppear, or -viewDidAppear.
- (void)presentationAnimationDidFinish{
    [super presentationAnimationDidFinish];
     [konyExtensionsRuntime executeCallback:@"presentationAnimationDidFinish"];
}

-(void)loadView{
    [super loadView];
    
    [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(dopush:) name:@"pushConfigurationViewController" object:nil];
    [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(dopop:) name:@"popConfigurationViewController" object:nil];
    [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(updatePlaceholder:) name:@"updatePlaceholder" object:nil];
    [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(updateCharactersRemaining:) name:@"updateCharactersRemaining" object:nil];
     [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(postContentTextToJS:) name:@"getcontentText" object:nil];
    [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(postExtensionContextToJS:) name:@"getextensionContext" object:nil];
    
    [konyExtensionsRuntime setup:self];
    
    }

- (void)viewDidLoad{
    [super viewDidLoad];
    [konyExtensionsRuntime executeCallback:@"viewDidLoad"];
}

-(void) dopush:(NSNotification*) notification{
    NSDictionary *dictionary = [notification userInfo];
    UIViewController *controller = [dictionary valueForKey:@"Controller"];
    [self pushConfigurationViewController:controller];
}
-(void) dopop:(NSNotification*) notification{
    
    [self popConfigurationViewController];
}
-(void)updateCharactersRemaining:(NSNotification*) notification{
    NSDictionary *dictionary = [notification userInfo];
    NSNumber *number = [dictionary valueForKey:@"value"];
    self.charactersRemaining = number;
}
-(void)updatePlaceholder:(NSNotification*) notification{
    NSDictionary *dictionary = [notification userInfo];
    NSString *str = [dictionary valueForKey:@"value"];
    self.placeholder = str;
}
- (void)pushConfigurationViewController:(UIViewController *)viewController{
    [super pushConfigurationViewController:viewController];
}

// Dismisses the current configuration view controller.
- (void)popConfigurationViewController{
    [super popConfigurationViewController];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

-(void)postContentTextToJS:(NSNotification*) notification{
    NSDictionary * info =[NSDictionary dictionaryWithObject:[self contentText] forKey:@"value"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"postcontentValue" object:NULL userInfo:info];
}

-(void)postExtensionContextToJS:(NSNotification*) notification{
    NSDictionary * info =[NSDictionary dictionaryWithObject:[self extensionContext] forKey:@"value"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"postExtensionContextValue" object:NULL userInfo:info];
}


-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}



@end
