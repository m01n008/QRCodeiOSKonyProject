//
//  TaskUtils.h
//  TaskFrameworkLibrary
//
//  Created by MADP on 07/09/16.
//  Copyright © 2016 MADP. All rights reserved.
//


#import <Foundation/Foundation.h>

#import "Matrix.h"

@class KSTask;

@interface TaskUtils : NSObject

//Node related util methods
+ (NSSet *)getInitialNodeIndicesOf:(Matrix *)matrix;
+ (BOOL) haveCommonAncestorTasks:(KSTask *)task1
                            With:(KSTask *)task2;
+ (NSSet *)getAllEndNodeIndicesForMatrix:(Matrix *)matrix;
+ (NSSet *)getDependentNodeIndicesFor:(NSUInteger)givenIndex
                             inMatrix:(Matrix *)matrix;
+ (NSSet *)getPrerequisiteNodeIndicesFor:(NSUInteger)givenIndex
                                inMatrix:(Matrix *)matrix;
+ (NSSet *)identifyOneNodesInMatrix:(Matrix *)matrix
                      forGivenIndex:(NSUInteger)givenIndex;
+ (NSSet *)identifyOneNodesInMatrix:(Matrix *)matrix
                      forGivenRow:(NSUInteger)givenRow;
+ (NSSet *)identifyOneNodesInMatrix:(Matrix *)matrix
                      forGivenColumn:(NSUInteger)givenColumn;

//Cycle detection methods
+ (BOOL)isCyclic:(Matrix *)matrix;

//Bitmap related util methods
+ (void)setBit:(NSUInteger)bit inBitmap:(NSUInteger *)bitmap;
+ (void)resetBit:(NSUInteger)bit inBitmap:(NSUInteger *)bitmap;
+ (void)resetAllBits:(NSUInteger *)bitmap;
+ (BOOL)isBitSet:(NSUInteger)bit inBitmap:(NSUInteger)bitmap;

//Miscellaneous methods
+ (NSString *)getUniqueID;
+ (NSString *)trimWhitespaces:(NSString *)name;
@end
