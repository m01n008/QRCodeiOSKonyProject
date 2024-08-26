//
//  KonyAddressBookWrapper.h
//  VM
//
//  Created by Snigdha Satapathy on 01/06/15.
//
//

#import <AddressBook/AddressBook.h>
#import <AddressBook/ABSource.h>

@interface KonyAddressBookWrapper : NSObject

//ABAddressBook.h Wrapper APIs

+ (ABAuthorizationStatus) ABAddressBookGetAuthorizationStatus;

+ (ABAddressBookRef) ABAddressBookCreateWithOptions:(CFDictionaryRef) options error:(NSError**) error;

+ (ABAddressBookRef) ABAddressBookCreate;

+ (void) ABAddressBookRequestAccessWithCompletion:(ABAddressBookRef) addressBook completion:(ABAddressBookRequestAccessCompletionHandler) completion;

+ (BOOL) ABAddressBookSave:(ABAddressBookRef) addressBook error:(NSError**) error;
+ (BOOL) ABAddressBookHasUnsavedChanges: (ABAddressBookRef) addressBook;

+ (BOOL) ABAddressBookAddRecord:(ABAddressBookRef) addressBook record:(ABRecordRef) record error:(NSError**) error;
+ (BOOL) ABAddressBookRemoveRecord:(ABAddressBookRef) addressBook record:(ABRecordRef) record error:(NSError**) error;


+ (CFStringRef) ABAddressBookCopyLocalizedLabel:(CFStringRef) label;

/*+ (void) ABAddressBookRegisterExternalChange:(ABAddressBookRef) addressBook callback:(void (^)(ABAddressBookRef,CFDictionaryRef,NSDictionary*))callbackBlock context:(NSDictionary*)context ;//TO DO: Not generated

+ (void) ABAddressBookUnregisterExternalChange:(ABAddressBookRef) addressBook callback:(void (^)(ABAddressBookRef,CFDictionaryRef,NSDictionary*))callbackBlock context:(NSDictionary*)context ; //TO DO: Not Generated
 */

+ (void) ABAddressBookRevert:(ABAddressBookRef) addressBook;



//ABRecord.h Wrapper APIs

 + (ABRecordID) ABRecordGetRecordID: (ABRecordRef) record;
 + (ABRecordType) ABRecordGetRecordType: (ABRecordRef) record;
 + (CFTypeRef) ABRecordCopyValue: (ABRecordRef) record property: (ABPropertyID)property;
 + (BOOL) ABRecordSetValue: (ABRecordRef) record property: (ABPropertyID)property  value:(CFTypeRef)value  error:(NSError**) error;
 + (BOOL) ABRecordRemoveValue: (ABRecordRef) record property:(ABPropertyID) property error: (NSError **)error ;
 + (NSString*) ABRecordCopyCompositeName: (ABRecordRef) record;


//ABPerson.h Wrapper APIs

+ (ABRecordRef) ABPersonCreate;
+ (ABRecordRef) ABPersonCreateInSource:(ABRecordRef) source;

+ (ABRecordRef) ABPersonCopySource:(ABRecordRef) person;

+ (CFArrayRef) ABPersonCopyArrayOfAllLinkedPeople:(ABRecordRef) person;

+ (ABPropertyType) ABPersonGetTypeOfProperty:(ABPropertyID) property;
+ (CFStringRef) ABPersonCopyLocalizedPropertyName:(ABPropertyID) property;

+ (ABPersonSortOrdering) ABPersonGetSortOrdering;


// Composite Names
+ (ABPersonCompositeNameFormat) ABPersonGetCompositeNameFormat;
+ (ABPersonCompositeNameFormat) ABPersonGetCompositeNameFormatForRecord:(ABRecordRef) record;
+ (CFStringRef) ABPersonCopyCompositeNameDelimiterForRecord:(ABRecordRef) record;
+ (bool) ABPersonSetImageData:(ABRecordRef) person imageData:(CFDataRef)imageData error:(NSError**) error;
+ (CFDataRef) ABPersonCopyImageData:(ABRecordRef) person;
+ (CFDataRef) ABPersonCopyImageDataWithFormat:(ABRecordRef) person format:(ABPersonImageFormat) format;
+ (bool) ABPersonHasImageData:(ABRecordRef) person;
+ (bool) ABPersonRemoveImageData:(ABRecordRef) person error:(NSError**)error;

// Sorting
+ (CFComparisonResult) ABPersonComparePeopleByName:(ABRecordRef) person1 person2:(ABRecordRef) person2 ordering: (ABPersonSortOrdering) ordering;

// Finding people
+ (CFIndex) ABAddressBookGetPersonCount:(ABAddressBookRef) addressBook;
+ (ABRecordRef) ABAddressBookGetPersonWithRecordID:(ABAddressBookRef) addressBook recordID:(ABRecordID) recordID;

+ (CFArrayRef) ABAddressBookCopyArrayOfAllPeople:(ABAddressBookRef) addressBook;
+ (CFArrayRef) ABAddressBookCopyArrayOfAllPeopleInSource:(ABAddressBookRef) addressBook source:(ABRecordRef) source;
+ (CFArrayRef) ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering:(ABAddressBookRef) addressBook source:(ABRecordRef)source sortOrdering:(ABPersonSortOrdering) sortOrdering;
+ (CFArrayRef) ABAddressBookCopyPeopleWithName:(ABAddressBookRef) addressBook name:(NSString*) name;

+ (CFArrayRef) ABPersonCreatePeopleInSourceWithVCardRepresentation:(ABRecordRef) source vCardData:(CFDataRef) vCardData;
+ (CFDataRef) ABPersonCreateVCardRepresentationWithPeople:(CFArrayRef) people;

//ABGroup.h Wrapper Files

+ (ABRecordRef) ABGroupCreate;
+ (ABRecordRef) ABGroupCreateInSource:(ABRecordRef) source;

+ (ABRecordRef) ABGroupCopySource:(ABRecordRef) group;

+ (CFArrayRef) ABGroupCopyArrayOfAllMembers:(ABRecordRef) group;
+ (CFArrayRef) ABGroupCopyArrayOfAllMembersWithSortOrdering:(ABRecordRef) group sortOrdering:(ABPersonSortOrdering)sortOrdering;
+ (bool) ABGroupAddMember:(ABRecordRef) group person:(ABRecordRef) person error:(NSError**) error;
+ (bool) ABGroupRemoveMember:(ABRecordRef) group member:(ABRecordRef) member error:(NSError**) error;

+ (ABRecordRef) ABAddressBookGetGroupWithRecordID:(ABAddressBookRef) addressBook recordID:(ABRecordID) recordID;
+ (CFIndex) ABAddressBookGetGroupCount:(ABAddressBookRef) addressBook;

+ (CFArrayRef) ABAddressBookCopyArrayOfAllGroups:(ABAddressBookRef) addressBook;
+ (CFArrayRef) ABAddressBookCopyArrayOfAllGroupsInSource:(ABAddressBookRef) addressBook source:(ABRecordRef) source;

//ABMultivalue.h Wrapper Files

+ (ABPropertyType) ABMultiValueGetPropertyType:(ABMultiValueRef) multiValue;

+ (CFIndex) ABMultiValueGetCount:(ABMultiValueRef) multiValue;

+ (CFTypeRef) ABMultiValueCopyValueAtIndex:(ABMultiValueRef) multiValue index:(CFIndex) index;
+ (CFArrayRef) ABMultiValueCopyArrayOfAllValues:(ABMultiValueRef) multiValue;

+ (CFStringRef) ABMultiValueCopyLabelAtIndex:(ABMultiValueRef) multiValue index:(CFIndex) index;

+ (CFIndex) ABMultiValueGetIndexForIdentifier:(ABMultiValueRef) multiValue identifier:(ABMultiValueIdentifier) identifier;
+ (ABMultiValueIdentifier) ABMultiValueGetIdentifierAtIndex:(ABMultiValueRef) multiValue index:(CFIndex) index;

+ (CFIndex) ABMultiValueGetFirstIndexOfValue:(ABMultiValueRef) multiValue value:(CFTypeRef) value;

+ (ABMutableMultiValueRef) ABMultiValueCreateMutable:(ABPropertyType) type;
+ (ABMutableMultiValueRef) ABMultiValueCreateMutableCopy:(ABMultiValueRef) multiValue;

/*
+ (bool) ABMultiValueAddValueAndLabel:(ABMutableMultiValueRef) multiValue value:(CFTypeRef) value label:(NSString*) label outIdentifier:(ABMultiValueIdentifier )outIdentifier; //To Do: Not generated
+ (bool) ABMultiValueInsertValueAndLabelAtIndex:(ABMutableMultiValueRef) multiValue value:(CFTypeRef) value label: (NSString*) label index:(CFIndex) index outIdentifier:(ABMultiValueIdentifier )outIdentifier; //To do : Not generated
 */
+ (bool) ABMultiValueRemoveValueAndLabelAtIndex:(ABMutableMultiValueRef) multiValue index:(CFIndex) index;
+ (bool) ABMultiValueReplaceValueAtIndex:(ABMutableMultiValueRef) multiValue value:(CFTypeRef) value index:(CFIndex) index;
+ (bool) ABMultiValueReplaceLabelAtIndex:(ABMutableMultiValueRef) multiValue label:(CFStringRef) label index:(CFIndex) index;


//ABSource.h Wrapper Files

+ (ABRecordRef) ABAddressBookCopyDefaultSource:(ABAddressBookRef) addressBook ;
+ (ABRecordRef) ABAddressBookGetSourceWithRecordID:(ABAddressBookRef) addressBook sourceID:(ABRecordID)sourceID;
+ (CFArrayRef) ABAddressBookCopyArrayOfAllSources:(ABAddressBookRef) addressBook;

//Private methods:
void KonyAddressBookWrapperCallback(ABAddressBookRef addressBook, CFDictionaryRef info,void* context);

@end
