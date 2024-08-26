//
//  PaymentInterface.h
//  konylib
//
//  Created by Manikanta Hanumansetti on 10/03/18.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <PassKit/PassKit.h>
#import <CoreComponent/KonyTypes.h>
#import <Contacts/Contacts.h>
#import <Contacts/ContactsDefines.h>
#import <PassKit/PKContact.h>
#import <CoreComponent/CallBack.h>
#import <CoreComponent/JSFunction.h>

typedef void (^KonyPaymentAuthorizationStatusCompletion) (PKPaymentAuthorizationStatus status);

@interface PaymentInterface : UIViewController

@property (class, nonatomic, strong) CallBack *paymentOnSuccessCallBack;
@property (class, nonatomic, strong) CallBack *paymentOnFailureCallBack;
@property (class, assign) KonyPaymentAuthorizationStatusCompletion konyPaymentCompletionHandler;

+(BOOL)canMakePayment:(NSDictionary *)paymentRequirements;
+(void)paymentRequestData:(NSDictionary *)paymentDetails;
+(NSArray *)getSupportedNetworks;
+(void)showPaymentDataandgetPaymentToken:(NSArray *)array;
+ (void) setTransactionStatus:(NSString *)currentTransactionStatus;
+(NSDictionary *)dictionaryWithPayment:(PKPayment *)payment;

@end
