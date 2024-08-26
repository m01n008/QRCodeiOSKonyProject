//
//  JSKeychainAPI.h
//  VM
//
//  Created by Ameya Jathar on 27/04/17.
//
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSStaticAPI.h>

@interface JSKeychainAPI : NSObject<JSStaticAPI>
/*!
    @function saveObject
    @abstract Save provided secure data to the keychain.
    @param arguments An array of identifier, and secure data and account name(all string).
       identifier is required to uniquely identify the data.
    @result Error objects Error dictionary with errors identifying with account or password.
    @discussion identifier and secure data are necessary parameters, result will be true even in the case where only one parameter is modified.
 */
+(NSArray*)saveObject:(NSArray*)arguments;


/*!
    @function retrieveObject
    @abstract retrieve secure data from the keychain with the provided identifier.
    @param An array containing the identifier (string).
       identifier is required to uniquely identify the secure data.
    @result Dictionary containing the resulting secure data,account name and the identifier (all string).
    @discussion In case the data does not exist in the keychain, empty dict is returned.
 */
+(NSArray*)retrieveObject:(NSArray*)arguments;


/*!
 @function deleteObject
 @abstract Delete secure data from the keychain with the provided identifier.
 @param arguments An array containing the identifier (string).
    identifier is required to uniquely identify the data.
 @result Status success or failure error code.
 @discussion In case the data does not exist in the keychain, success error code is returned.
 */
+(NSArray*)removeObject:(NSArray*)arguments;

@end










