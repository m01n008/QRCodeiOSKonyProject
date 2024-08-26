//
//  JS3DTouchAPI.h
//  VM
//
//  Created by Mahesh/KH1128 on 17/12/15.
//
//

#ifndef JS3DTouchAPI_h
#define JS3DTouchAPI_h

#import <Foundation/NSObject.h>

@interface JS3DTouchAPI : NSObject

+ (NSArray*)setQuickActionItems:(NSArray*)args;
+ (NSArray*)getQuickActionItems:(NSArray*)args;;
+ (NSArray*)removeQuickActionItems:(NSArray*)args;

@end
#endif /* JS3DTouchAPI_h */
