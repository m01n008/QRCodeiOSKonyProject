//
//  ContactProxy.h
//  konylib
//
//  Created by Manikanta Hanumansetti on 10/03/18.
//

#import <PassKit/PassKit.h>
#import "PaymentInterface.h"

@interface ApplepayContact : PKContact {
}

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
