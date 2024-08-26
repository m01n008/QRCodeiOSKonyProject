#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSCharacterSet_symbols(JSContext*);
@protocol NSCharacterSetInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSData * bitmapRepresentation;
@property (readonly,copy) NSCharacterSet * invertedSet;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(BOOL) characterIsMember: (unichar) aCharacter ;
-(BOOL) longCharacterIsMember: (UTF32Char) theLongChar ;
-(BOOL) isSupersetOfSet: (NSCharacterSet *) theOtherSet ;
-(BOOL) hasMemberInPlane: (uint8_t) thePlane ;
@end
@protocol NSCharacterSetClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_>
+(NSCharacterSet *) characterSetWithRange: (NSRange) aRange ;
+(NSCharacterSet *) characterSetWithCharactersInString: (NSString *) aString ;
+(NSCharacterSet *) characterSetWithBitmapRepresentation: (NSData *) data ;
+(NSCharacterSet *) characterSetWithContentsOfFile: (NSString *) fName ;
+(NSCharacterSet *) controlCharacterSet;
+(NSCharacterSet *) whitespaceCharacterSet;
+(NSCharacterSet *) whitespaceAndNewlineCharacterSet;
+(NSCharacterSet *) decimalDigitCharacterSet;
+(NSCharacterSet *) letterCharacterSet;
+(NSCharacterSet *) lowercaseLetterCharacterSet;
+(NSCharacterSet *) uppercaseLetterCharacterSet;
+(NSCharacterSet *) nonBaseCharacterSet;
+(NSCharacterSet *) alphanumericCharacterSet;
+(NSCharacterSet *) decomposableCharacterSet;
+(NSCharacterSet *) illegalCharacterSet;
+(NSCharacterSet *) punctuationCharacterSet;
+(NSCharacterSet *) capitalizedLetterCharacterSet;
+(NSCharacterSet *) symbolCharacterSet;
+(NSCharacterSet *) newlineCharacterSet;
@end
@protocol NSMutableCharacterSetInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_>
-(void) addCharactersInRange: (NSRange) aRange ;
-(void) removeCharactersInRange: (NSRange) aRange ;
-(void) addCharactersInString: (NSString *) aString ;
-(void) removeCharactersInString: (NSString *) aString ;
-(void) formUnionWithCharacterSet: (NSCharacterSet *) otherSet ;
-(void) formIntersectionWithCharacterSet: (NSCharacterSet *) otherSet ;
-(void) invert;
@end
@protocol NSMutableCharacterSetClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_>
+(NSMutableCharacterSet *) controlCharacterSet;
+(NSMutableCharacterSet *) whitespaceCharacterSet;
+(NSMutableCharacterSet *) whitespaceAndNewlineCharacterSet;
+(NSMutableCharacterSet *) decimalDigitCharacterSet;
+(NSMutableCharacterSet *) letterCharacterSet;
+(NSMutableCharacterSet *) lowercaseLetterCharacterSet;
+(NSMutableCharacterSet *) uppercaseLetterCharacterSet;
+(NSMutableCharacterSet *) nonBaseCharacterSet;
+(NSMutableCharacterSet *) alphanumericCharacterSet;
+(NSMutableCharacterSet *) decomposableCharacterSet;
+(NSMutableCharacterSet *) illegalCharacterSet;
+(NSMutableCharacterSet *) punctuationCharacterSet;
+(NSMutableCharacterSet *) capitalizedLetterCharacterSet;
+(NSMutableCharacterSet *) symbolCharacterSet;
+(NSMutableCharacterSet *) newlineCharacterSet;
+(NSMutableCharacterSet *) characterSetWithRange: (NSRange) aRange ;
+(NSMutableCharacterSet *) characterSetWithCharactersInString: (NSString *) aString ;
+(NSMutableCharacterSet *) characterSetWithBitmapRepresentation: (NSData *) data ;
+(NSMutableCharacterSet *) characterSetWithContentsOfFile: (NSString *) fName ;
@end
#pragma clang diagnostic pop