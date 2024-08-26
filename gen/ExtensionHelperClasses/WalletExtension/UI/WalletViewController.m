
#import "WalletViewController.h"

@implementation WalletViewController
@synthesize completionHandler;

-(void) viewDidLoad {
    [super viewDidLoad];
    [konyExtensionsRuntime executeCallback:@"viewDidLoad"];
}

@end
