//
//  KonyEncryption.h
//  VM
//
//  Created by Uday Bheema on 05/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Security/Security.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>
#import <CoreComponent/KonyDS.h>
#import <CoreComponent/KonyTypes.h>
// Hash Generation

@interface HashGenerator : NSObject

+ (NSData *)generateHashforSHA1:(NSData *)plainTextData; // produces a digest length of 160 bits
+ (NSData *)generateHashforSHA224:(NSData *)plainTextData; // produces a digest length of 224 bits
+ (NSData *)generateHashforSHA256:(NSData *)plainTextData; // produces a digest length of 256 bits
+ (NSData *)generateHashforSHA384:(NSData *)plainTextData; // produces a digest length of 384 bits
+ (NSData *)generateHashforSHA512:(NSData *)plainTextData;  // produces a digest length of 512 bits
+ (NSData *)generateHashforMD2:(NSData *)plainTextData;  // produces a digest length of 128 bits
+ (NSData *)generateHashforMD4:(NSData *)plainTextData;  // produces a digest length of 128 bits
+ (NSData *)generateHashforMD5:(NSData *)plainTextData;  // produces a digest length of 128 bits

@end

// KeyChain Storage Related

@interface KonyKey : NSObject
{

	NSData * keyTag;
	ALG_ID keyType;
	uint keyLength;

}

@property (nonatomic, assign)  ALG_ID keyType;
@property (nonatomic, retain)  NSData * keyTag;
@property (nonatomic, assign)  uint keyLength;
- (void) dealloc;
@end

@interface KonySymmetricKey : KonyKey
{
	NSData * symmetricKey;

}

@property (nonatomic, retain)  NSData * symmetricKey;
- (void) dealloc;
@end

@interface KonyAsymmetricKey : KonyKey
{
	SecKeyRef  asymmetricKey;
	
}

@property (nonatomic, assign)  SecKeyRef  asymmetricKey;
- (void) dealloc;
@end

@interface KonySecureItemStorage : NSObject

- (OSStatus) SecItemAddToKeyChain:(NSMutableDictionary*) itemAttributes PersistentRef:(CFTypeRef*) persistentRef;
- (OSStatus) SecItemDeleteFromKeyChain:(NSMutableDictionary *) itemAttributes;
- (OSStatus) SecItemGetFromKeyChain:(NSMutableDictionary *) itemAttributes ResultKeyRef:(CFTypeRef *)resultKeyRef;
- (OSStatus) SecItemUpdateInKeyChain:(NSMutableDictionary *) itemAttributes AttributesToUpdate:(NSMutableDictionary *) attributesToUpdate;

@end

@interface KonyKeyStorage : KonySecureItemStorage

+ (KonyKeyStorage *) getKeyStorageInstance;
- (NSMutableDictionary *) getAttributesDictForSymmetricKey:(KonySymmetricKey *) _key accessibleValue:(id)keyChainItemAccessibleString;
- (NSMutableDictionary *) getAttributesDictForAsymmetricKey:(KonyAsymmetricKey *) _key accessibleValue:(id)keyChainItemAccessibleString;
- (NSString*) addKey:(KonyKey*) keyInstance withTag:(NSString *) tag accessibleLevel:(KonyKeyChainItemAccessible) keyChainItemAccessValue ErrorCode:(int*) eCode;
- (OSStatus) deleteKey:(NSData *)appTagData  KeyType:(long long) algorithmId;
//Fix for JSPFQA12644	kony.crypto.readKey() API is not working properly
- (KonySymmetricKey *) getSymmetricKey:(NSData *)appTagData  KeyType:(NSUInteger) algorithmId ErrorCode:(int *) eCode isDeprecatedAlgo:(BOOL)deprecated;
- (KonyAsymmetricKey *) getAsymmetricKey:(NSData *)appTagData  KeyType:(NSUInteger) algorithmId ErrorCode:(int *) eCode;
- (int) getKeySizeforAlgorithmID:(ALG_ID) keyType;
@end

//outer interface
@interface KonySecureItem : NSObject 

+ (NSMutableDictionary*) getItemFromKeychainUsing:(NSMutableDictionary*) itemAttributes;
+ (void) addItemToKeychainUsing:(NSMutableDictionary*) itemAttributes;
+ (void) updateItemInKeychainUsing:(NSMutableDictionary*) itemAttributes;
+ (void) deleteItemFromKeychainUsing:(NSMutableDictionary*) itemAttributes;

@end

@interface KonyKeyGenerator : NSObject

- (KonySymmetricKey *) generateSymmetricKey:(NSString *) passPhrase KeySize:(uint) keySize Hash:(NSString *) hash SubAlgo:(NSString*)subAlgo Mode:(NSString*)keyGenMode ErrorCode:(int *)errorNum;
- (ALG_ID) getAlgorithmIDForKeySize:(uint) keySize Hash:(NSString*) hash;
- (KonyAsymmetricKey*) getPublicKeyFromX509:(NSString*) source IsLocalResouce:(BOOL) islocalResouce ErrorCode:(int *) errorCode;
- (ALG_ID) validateKeySizeAndAlgorithms:(NSString *) passPhrase KeySize:(uint) keySize Hash:(NSString *) hash SubAlgo:(NSString*)subAlgo Mode:(NSString*)keyGenMode ErrorCode:(int *)errorNum;

@end

@interface CypherOptions : NSObject

@property (nonatomic) CCOperation encryptOrDecrypt;
@property (nonatomic) CCAlgorithm algo;
@property (nonatomic) uint8_t blockSize;
@property (nonatomic) uint8_t keySize;
@property (nonatomic) CCOptions option;
@property (nonatomic) NSString * iv;

@end


@interface KonyEncryptor : NSObject

- (NSData*)performCypherWithSymmetricKey:(NSData*)plainTextData Key:(NSData*) key Options:(CypherOptions* ) options ErrorCode:(int *) eCode;
- (NSData *)encryptWithAsymmetricKey:(NSData *)plainTextData keyRef:(SecKeyRef)publicKey Padding:(int) padding ErrorCode:(int *) eCode;

@end


// Wrapper Utils

int konyDeleteKey(NSString * uId);
id konyGetKey(NSString * uId , int * error, BOOL deprecated);
id konySymmetricKeyEncryptDecrypt(NSString * algo ,KonySymmetricKey * symKey, NSString * plainText, NSData* cData, int encrptOrDecrypt, int mode,NSString * iv, int * eCode);
NSData * konyAsymmetricKeyRSAEncrypt(KonyAsymmetricKey * aSymKey, NSString * plainText,int padScheme, int * eCode);





