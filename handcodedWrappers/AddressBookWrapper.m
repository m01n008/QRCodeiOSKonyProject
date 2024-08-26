//
//  KonyAddressBookWrapper.m
//  VM
//
//  Created by Snigdha Satapathy on 01/06/15.
//
//

#import <Foundation/Foundation.h>

#import "AddressBookWrapper.h"
/*
#import "KonyUtil.h"
#import "KonyValueConversionUtility.h"
#import "CallBack.h"
#import "NSException+KonyErrorException.h"
#import "KonyMacros1.h"*/

@interface AddressChangeCallbackObject:NSObject

@property (copy) void (^callbackBlock)(ABAddressBookRef,CFDictionaryRef,NSDictionary*);
@property (copy) NSDictionary* context;

@end

@implementation AddressChangeCallbackObject

-(id)init
{
    self = [super init];
    self.callbackBlock = nil;
    self.context = nil;
    return self;
}

- (void) dealloc
{
    if(self.callbackBlock)
    {
        [self.callbackBlock release];
        self.callbackBlock = nil;
    }
    
    if(self.context)
    {
        [self.context release];
        self.context = nil;
    }
    [super dealloc];
}
@end


@implementation KonyAddressBookWrapper

//ABAddressBook.h Wrapper APIs

+ (ABAuthorizationStatus) ABAddressBookGetAuthorizationStatus
{
    return ABAddressBookGetAuthorizationStatus();
}

+ (ABAddressBookRef) ABAddressBookCreateWithOptions:(CFDictionaryRef) options error:(NSError**) error
{
    return ABAddressBookCreateWithOptions(options,(CFErrorRef*)&error);
}

+ (ABAddressBookRef) ABAddressBookCreate
{
    return ABAddressBookCreate();
}

+ (void) ABAddressBookRequestAccessWithCompletion:(ABAddressBookRef) addressBook completion:(ABAddressBookRequestAccessCompletionHandler) completion
{
    ABAddressBookRequestAccessWithCompletion(addressBook,completion);
}

+ (BOOL) ABAddressBookSave:(ABAddressBookRef) addressBook error:(NSError**) error
{
    return ABAddressBookSave(addressBook,(CFErrorRef*)&error);
}
+ (BOOL) ABAddressBookHasUnsavedChanges: (ABAddressBookRef) addressBook
{
    return ABAddressBookHasUnsavedChanges(addressBook);
}

+ (BOOL) ABAddressBookAddRecord:(ABAddressBookRef) addressBook record:(ABRecordRef) record error:(NSError**) error
{
    return ABAddressBookAddRecord(addressBook,record,(CFErrorRef*)&error);
}

+ (BOOL) ABAddressBookRemoveRecord:(ABAddressBookRef) addressBook record:(ABRecordRef) record error:(NSError**) error
{
    return ABAddressBookRemoveRecord(addressBook,record,(CFErrorRef*)&error);
}


+ (CFStringRef) ABAddressBookCopyLocalizedLabel:(CFStringRef) label
{
    return ABAddressBookCopyLocalizedLabel(label);
}

/*
+ (void) ABAddressBookRegisterExternalChange:(ABAddressBookRef) addressBook callback:(void (^)(ABAddressBookRef,CFDictionaryRef,NSDictionary*))callbackBlock context:(NSDictionary*)context {
    
    AddressChangeCallbackObject *callbackContext = [[AddressChangeCallbackObject alloc]init];
    callbackContext.context = context;
    callbackContext.callbackBlock = callbackBlock;
    ABAddressBookRegisterExternalChangeCallback(addressBook,&KonyAddressBookWrapperCallback,callbackContext);
}*/

void KonyAddressBookWrapperCallback(ABAddressBookRef addressBook, CFDictionaryRef info,void* context)
{
    NSLog(@"KonyAddressBookWrapperCallback");
    
    AddressChangeCallbackObject* callbackContext = (AddressChangeCallbackObject*)context;

    callbackContext.callbackBlock(addressBook,info,callbackContext.context);


}

/*
+ (void) ABAddressBookUnregisterExternalChange:(ABAddressBookRef) addressBook callback:(void (^)(ABAddressBookRef,CFDictionaryRef,NSDictionary*))callbackBlock context:(NSDictionary*)context
{

        AddressChangeCallbackObject *callbackContext = [[AddressChangeCallbackObject alloc]init];
        callbackContext.context = context;
        callbackContext.callbackBlock = callbackBlock;
        ABAddressBookUnregisterExternalChangeCallback(addressBook,&KonyAddressBookWrapperCallback,callbackContext);
        [callbackContext release];

    
}*/

+ (void) ABAddressBookRevert:(ABAddressBookRef) addressBook
{
    ABAddressBookRevert(addressBook);
}


//Wrapper for ABRecord.h APIs
+ (ABRecordID) ABRecordGetRecordID: (ABRecordRef) record
{
    ABRecordID recordId = ABRecordGetRecordID(record);
    return recordId;
}

+ (ABRecordType) ABRecordGetRecordType: (ABRecordRef) record
{
    ABRecordType recordType = ABRecordGetRecordType(record);
    return recordType;
}

+ (CFTypeRef) ABRecordCopyValue: (ABRecordRef) record property: (ABPropertyID)property
{
    CFTypeRef propValue = ABRecordCopyValue(record,property);
    return propValue;
}

+ (BOOL) ABRecordSetValue: (ABRecordRef) record property: (ABPropertyID)property  value:(CFTypeRef)value  error:(NSError**) error
{
    BOOL setValue = ABRecordSetValue(record,property,value,(CFErrorRef*)&error);
    return setValue;
}

+ (BOOL) ABRecordRemoveValue: (ABRecordRef) record property:(ABPropertyID) property error: (NSError**)error
{
    BOOL removeValue  = ABRecordRemoveValue(record,property,(CFErrorRef*)&error);
    return removeValue;
}

+ (NSString*) ABRecordCopyCompositeName: (ABRecordRef) record
{
    NSString* compName = (NSString*)ABRecordCopyCompositeName(record);
    return compName;
}

//ABPerson.h Wrapper APIs

+ (ABRecordRef) ABPersonCreate
{
    return ABPersonCreate();
}
+ (ABRecordRef) ABPersonCreateInSource:(ABRecordRef) source
{
    return ABPersonCreateInSource(source);
}

+ (ABRecordRef) ABPersonCopySource:(ABRecordRef) person
{
    return ABPersonCopySource(person);
}

+ (CFArrayRef) ABPersonCopyArrayOfAllLinkedPeople:(ABRecordRef) person
{
    return ABPersonCopyArrayOfAllLinkedPeople(person);
}

+ (ABPropertyType) ABPersonGetTypeOfProperty:(ABPropertyID) property
{
    return ABPersonGetTypeOfProperty(property);
}

+ (CFStringRef) ABPersonCopyLocalizedPropertyName:(ABPropertyID) property
{
    return ABPersonCopyLocalizedPropertyName(property);
}

+ (ABPersonSortOrdering) ABPersonGetSortOrdering
{
    return ABPersonGetSortOrdering();
}

+ (ABPersonCompositeNameFormat) ABPersonGetCompositeNameFormat
{
    return ABPersonGetCompositeNameFormat();
}
+ (ABPersonCompositeNameFormat) ABPersonGetCompositeNameFormatForRecord:(ABRecordRef) record
{
    return ABPersonGetCompositeNameFormatForRecord(record);
}

+ (CFStringRef) ABPersonCopyCompositeNameDelimiterForRecord:(ABRecordRef) record
{
    return ABPersonCopyCompositeNameDelimiterForRecord(record);
}

+ (bool) ABPersonSetImageData:(ABRecordRef) person imageData:(CFDataRef)imageData error:(NSError**) error
{
    return ABPersonSetImageData(person,imageData,(CFErrorRef*)&error);
}

+ (CFDataRef) ABPersonCopyImageData:(ABRecordRef) person
{
    return ABPersonCopyImageData(person);
}

+ (CFDataRef) ABPersonCopyImageDataWithFormat:(ABRecordRef) person format:(ABPersonImageFormat) format
{
    return ABPersonCopyImageDataWithFormat(person,format);
}

+ (bool) ABPersonHasImageData:(ABRecordRef) person
{
    return ABPersonHasImageData(person);
}
+ (bool) ABPersonRemoveImageData:(ABRecordRef) person error:(NSError**)error
{
    return ABPersonRemoveImageData(person,(CFErrorRef*)&error);
}

+ (CFComparisonResult) ABPersonComparePeopleByName:(ABRecordRef) person1 person2:(ABRecordRef) person2 ordering: (ABPersonSortOrdering) ordering
{
    return ABPersonComparePeopleByName(person1,person2,ordering);
}

+ (CFIndex) ABAddressBookGetPersonCount:(ABAddressBookRef) addressBook
{
    return ABAddressBookGetPersonCount(addressBook);
}
+ (ABRecordRef) ABAddressBookGetPersonWithRecordID:(ABAddressBookRef) addressBook recordID:(ABRecordID) recordID
{
    return ABAddressBookGetPersonWithRecordID(addressBook,recordID);
}

+ (CFArrayRef) ABAddressBookCopyArrayOfAllPeople:(ABAddressBookRef) addressBook
{
    return ABAddressBookCopyArrayOfAllPeople(addressBook);
}
+ (CFArrayRef) ABAddressBookCopyArrayOfAllPeopleInSource:(ABAddressBookRef) addressBook source:(ABRecordRef) source
{
    return ABAddressBookCopyArrayOfAllPeopleInSource(addressBook,source);
}
+ (CFArrayRef) ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering:(ABAddressBookRef) addressBook source:(ABRecordRef)source sortOrdering:(ABPersonSortOrdering) sortOrdering
{
    return ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(addressBook,source,sortOrdering);
}
+ (CFArrayRef) ABAddressBookCopyPeopleWithName:(ABAddressBookRef) addressBook name:(NSString*) name
{
    return ABAddressBookCopyPeopleWithName(addressBook,(CFStringRef)name);
}

+ (CFArrayRef) ABPersonCreatePeopleInSourceWithVCardRepresentation:(ABRecordRef) source vCardData:(CFDataRef) vCardData
{
    return ABPersonCreatePeopleInSourceWithVCardRepresentation(source,vCardData);
}
+ (CFDataRef) ABPersonCreateVCardRepresentationWithPeople:(CFArrayRef) people
{
    return ABPersonCreateVCardRepresentationWithPeople(people);
}

//ABGroup.h Wrapper APIs

+ (ABRecordRef) ABGroupCreate
{
    return ABGroupCreate();
}
+ (ABRecordRef) ABGroupCreateInSource:(ABRecordRef) source
{
    return ABGroupCreateInSource(source);
}

+ (ABRecordRef) ABGroupCopySource:(ABRecordRef) group
{
    return ABGroupCopySource(group);
}

+ (CFArrayRef) ABGroupCopyArrayOfAllMembers:(ABRecordRef) group
{
    return ABGroupCopyArrayOfAllMembers(group);
}
+ (CFArrayRef) ABGroupCopyArrayOfAllMembersWithSortOrdering:(ABRecordRef) group sortOrdering:(ABPersonSortOrdering)sortOrdering
{
    return ABGroupCopyArrayOfAllMembersWithSortOrdering(group,sortOrdering);
}
+ (bool) ABGroupAddMember:(ABRecordRef) group person:(ABRecordRef) person error:(NSError**) error
{
    return ABGroupAddMember(group,person,(CFErrorRef*)&error);
}
+ (bool) ABGroupRemoveMember:(ABRecordRef) group member:(ABRecordRef) member error:(NSError**) error
{
    return ABGroupRemoveMember(group,member,(CFErrorRef*)&error);
}

+ (ABRecordRef) ABAddressBookGetGroupWithRecordID:(ABAddressBookRef) addressBook recordID:(ABRecordID) recordID
{
    return ABAddressBookGetGroupWithRecordID(addressBook,recordID);
}
+ (CFIndex) ABAddressBookGetGroupCount:(ABAddressBookRef) addressBook
{
    return ABAddressBookGetGroupCount(addressBook);
}

+ (CFArrayRef) ABAddressBookCopyArrayOfAllGroups:(ABAddressBookRef) addressBook
{
    return ABAddressBookCopyArrayOfAllGroups(addressBook);
}
+ (CFArrayRef) ABAddressBookCopyArrayOfAllGroupsInSource:(ABAddressBookRef) addressBook source:(ABRecordRef) source
{
    return ABAddressBookCopyArrayOfAllGroupsInSource(addressBook,source);
}

//ABMultivalue.h Wrapper APIs
+ (ABPropertyType) ABMultiValueGetPropertyType:(ABMultiValueRef) multiValue
{
    return ABMultiValueGetPropertyType(multiValue);
}

+ (CFIndex) ABMultiValueGetCount:(ABMultiValueRef) multiValue
{
    return ABMultiValueGetCount(multiValue);
}

+ (CFTypeRef) ABMultiValueCopyValueAtIndex:(ABMultiValueRef) multiValue index:(CFIndex) index
{
    return ABMultiValueCopyValueAtIndex(multiValue,index);
}
+ (CFArrayRef) ABMultiValueCopyArrayOfAllValues:(ABMultiValueRef) multiValue
{
    return ABMultiValueCopyArrayOfAllValues(multiValue);
}

+ (CFStringRef) ABMultiValueCopyLabelAtIndex:(ABMultiValueRef) multiValue index:(CFIndex) index
{
    return ABMultiValueCopyLabelAtIndex(multiValue,index);
}

+ (CFIndex) ABMultiValueGetIndexForIdentifier:(ABMultiValueRef) multiValue identifier:(ABMultiValueIdentifier) identifier
{
    return ABMultiValueGetIndexForIdentifier(multiValue,identifier);
}
+ (ABMultiValueIdentifier) ABMultiValueGetIdentifierAtIndex:(ABMultiValueRef) multiValue index:(CFIndex) index
{
    return  ABMultiValueGetIdentifierAtIndex(multiValue,index);
}

+ (CFIndex) ABMultiValueGetFirstIndexOfValue:(ABMultiValueRef) multiValue value:(CFTypeRef) value
{
    return ABMultiValueGetFirstIndexOfValue(multiValue,value);
}

+ (ABMutableMultiValueRef) ABMultiValueCreateMutable:(ABPropertyType) type
{
    return ABMultiValueCreateMutable(type);
}
+ (ABMutableMultiValueRef) ABMultiValueCreateMutableCopy:(ABMultiValueRef) multiValue
{
    return ABMultiValueCreateMutableCopy(multiValue);
}
/*
+ (bool) ABMultiValueAddValueAndLabel:(ABMutableMultiValueRef) multiValue value:(CFTypeRef) value label:(NSString*) label outIdentifier:(ABMultiValueIdentifier)outIdentifier
{
    return ABMultiValueAddValueAndLabel(multiValue,value,(CFStringRef)label,&outIdentifier);
}
 
+ (bool) ABMultiValueInsertValueAndLabelAtIndex:(ABMutableMultiValueRef) multiValue value:(CFTypeRef) value label: (NSString*) label index:(CFIndex) index outIdentifier:(ABMultiValueIdentifier )outIdentifier
{
    return ABMultiValueInsertValueAndLabelAtIndex(multiValue,value,(CFStringRef)label,index,&outIdentifier);
}*/

+ (bool) ABMultiValueRemoveValueAndLabelAtIndex:(ABMutableMultiValueRef) multiValue index:(CFIndex) index
{
    return ABMultiValueRemoveValueAndLabelAtIndex(multiValue,index);
}
+ (bool) ABMultiValueReplaceValueAtIndex:(ABMutableMultiValueRef) multiValue value:(CFTypeRef) value index:(CFIndex) index
{
    return ABMultiValueReplaceValueAtIndex(multiValue,value,index);
}
+ (bool) ABMultiValueReplaceLabelAtIndex:(ABMutableMultiValueRef) multiValue label:(CFStringRef) label index:(CFIndex) index
{
    return ABMultiValueReplaceLabelAtIndex(multiValue,label,index);
}



//ABSource.h Wrapper APIs
+ (ABRecordRef) ABAddressBookCopyDefaultSource:(ABAddressBookRef) addressBook
{
    return  ABAddressBookCopyDefaultSource(addressBook);
}
+ (ABRecordRef) ABAddressBookGetSourceWithRecordID:(ABAddressBookRef) addressBook sourceID:(ABRecordID)sourceID
{
    return  ABAddressBookGetSourceWithRecordID(addressBook,sourceID);
}
+ (CFArrayRef) ABAddressBookCopyArrayOfAllSources:(ABAddressBookRef) addressBook
{
    return  ABAddressBookCopyArrayOfAllSources(addressBook);
}

@end