//
//  JSINVocabulary.h
//  VM
//
//  Created by Saurabh Mendhe on 03/01/17.
//
//

#import "JSObject.h"
#import <Intents/Intents.h>
@interface JSVocabulary : JSObject

/*To register terms that are specific to a single user.
@param :
"vocabulary" – Array of vocabulary strings to associate with the specified type. Each NSString object should contain terms that are unique to your app and to the specific user. Sort the strings in descending order of importance. In other words, the first string should be the most important, followed by strings of decreasing importance.
"vocabularyType"  - The designated purpose for the strings in the vocabulary parameter. You must specify one of the designated types. You cannot specify custom types of strings. For a list of possible values see VocabularyStringType.
 */
+ (NSArray *)setVocabularyNamesForType:(NSArray *)args;

/* To removes all user-specific vocabulary strings. */
+ (NSArray *)removeAllVocabulary;
@end
