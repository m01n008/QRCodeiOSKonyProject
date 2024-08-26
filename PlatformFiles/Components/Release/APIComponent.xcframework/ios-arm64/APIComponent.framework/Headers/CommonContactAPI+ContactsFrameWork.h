//
//  CommonContactAPI+ContactsFrameWork.h
//  VM
//
//  Created by KH1128 on 03/01/17.
//
//

#import "CommonContactAPI.h"
#import <Contacts/CNContact.h>

@class CNMutableContact;
@class CNContact;

@interface CommonContactAPI (ContactsFrameWork)

+ (NSArray *)addContactUsingContactsFW:(NSArray *) args;
+ (NSArray *)findContactUsingContactsFW:(NSArray *) args;
+ (NSArray *)fetchDetailsUsingContactsFW:(NSArray *) args;
+ (NSArray *)deleteContactUsingContactsFW:(NSArray *) args;
+ (NSMutableDictionary *)contactDictWithCNContact:(CNContact *)contactObj needDetails:(BOOL)needDetails;
+ (NSMutableDictionary *)contactDictWithCNContact:(CNContact *)contactObj needDetails:(BOOL)needDetails withFilteredKeys:(NSArray *)filterArray;
+ (CNMutableContact *)CNMutableContactWithContactDict:(NSDictionary *)contactDict;
+ (BOOL)isValidFirstName:(id)firstName;
+ (BOOL)isValidPhoneNumber:(id)phoneNumber;
+ (NSArray<id<CNKeyDescriptor>> *)keysToFetch;

@end
