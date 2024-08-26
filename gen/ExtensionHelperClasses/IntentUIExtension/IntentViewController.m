//
//  IntentViewController.m
//  MyAppUI
//
//  Created by Saurabh Mendhe on 13/12/16.
//
//

#import "IntentViewController.h"
#import <Intents/Intents.h>
#import "konyExtensionsRuntime.h"

// As an example, this extension's Info.plist has been configured to handle interactions for INSendMessageIntent.
// You will want to replace this or add other intents as appropriate.
// The intents whose interactions you wish to handle must be declared in the extension's Info.plist.

// You can test this example integration by saying things to Siri like:
// "Send a message using <myApp>"

@interface IntentViewController ()

@end

@implementation IntentViewController

-(void)loadView{
    [super loadView];
    [konyExtensionsRuntime setup:self];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [konyExtensionsRuntime executeCallback:@"viewDidLoad"];
    [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(postViewToJSEX:) name:@"getViewEx" object:nil];
    [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(postExtensionContextToJS:) name:@"getextensionContext" object:nil];
    [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(postViewControllerToJSEX:) name:@"getViewControllerEx" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// Called when the view is about to made visible. Default does nothing
- (void)viewWillAppear:(BOOL)animated{
    [konyExtensionsRuntime executeCallback:@"viewWillAppear"];
    [super viewWillAppear:animated];
}

// Called when the view has been fully transitioned onto the screen. Default does nothing
- (void)viewDidAppear:(BOOL)animated{
    [konyExtensionsRuntime executeCallback:@"viewDidAppear"];
    [super viewDidAppear:animated];
}

// Called when the view is dismissed, covered or otherwise hidden. Default does nothing
- (void)viewWillDisappear:(BOOL)animated{
    [konyExtensionsRuntime executeCallback:@"viewWillDisappear"];
    [super viewWillDisappear:animated];
}

// Called after the view was dismissed, covered or otherwise hidden. Default does nothing
- (void)viewDidDisappear:(BOOL)animated{
    [konyExtensionsRuntime executeCallback:@"viewDidDisappear"];
    [super viewDidDisappear:animated];
}
#pragma mark - INUIHostedViewControlling

// Prepare your view controller for the interaction to handle.
- (void)configureWithInteraction:(INInteraction *)interaction context:(INUIHostedViewContext)context completion:(void (^)(CGSize))completion {
    NSNumber *uiContext = [NSNumber numberWithInt:context];
    [konyExtensionsRuntime executeCallback:@"configureWithInteractionContextCompletion" withArg:@[interaction,uiContext,completion]];
}
-(void)postViewToJSEX:(NSNotification*)notification{
    NSDictionary * info =[NSDictionary dictionaryWithObject:[self view] forKey:@"value"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"postViewValueEX" object:NULL userInfo:info];
}
-(void)postExtensionContextToJS:(NSNotification*) notification{
    NSDictionary * info =[NSDictionary dictionaryWithObject:[self extensionContext] forKey:@"ExValue"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"postExtensionContextValue" object:NULL userInfo:info];
}

-(void)postViewControllerToJSEX:(NSNotification*) notification{
    NSDictionary * info =[NSDictionary dictionaryWithObject:self forKey:@"ViewControllerValue"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"postViewControllerToJSEX" object:NULL userInfo:info];
}

@end
