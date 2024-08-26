#import "WalletController.h"

@implementation WalletController

-(void) statusWithCompletion:(void (^)(PKIssuerProvisioningExtensionStatus *))completion
{
    [konyExtensionsRuntime executeCallback:@"statusWithCompletion" withArg:@[completion]];
}

-(void)passEntriesWithCompletion:(void (^)(NSArray<PKIssuerProvisioningExtensionPassEntry *> * _Nonnull))completion
{
    [konyExtensionsRuntime executeCallback:@"passEntriesWithCompletion" withArg:@[completion]];
}
-(void)remotePassEntriesWithCompletion:(void (^)(NSArray<PKIssuerProvisioningExtensionPassEntry *> *
_Nonnull))completion
{
    [konyExtensionsRuntime executeCallback:@"remotePassEntriesWithCompletion" withArg:@[completion]];
}
-(void) generateAddPaymentPassRequestForPassEntryWithIdentifier:(NSString *)identifier configuration:(PKAddPaymentPassRequestConfiguration *)configuration certificateChain:(NSArray<NSData *> *)certificates nonce:(NSData *)nonce nonceSignature:(NSData *)nonceSignature completionHandler:(void (^)(PKAddPaymentPassRequest * _Nullable))completion
{
    [konyExtensionsRuntime executeCallback:@"generateAddPaymentPassRequestForPassEntryWithIdentifierConfigurationCertificateChainNonceNonceSignatureCompletionHandler" withArg:@[identifier, configuration,certificates, nonce, nonceSignature, completion]];
}

@end
