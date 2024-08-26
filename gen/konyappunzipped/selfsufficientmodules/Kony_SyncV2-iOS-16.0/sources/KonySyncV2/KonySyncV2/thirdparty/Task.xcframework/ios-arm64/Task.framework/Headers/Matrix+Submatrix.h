//
//  Matrix+Submatrix.h
//  TaskFrameworkLibrary
//
//  Created by Sunil Phani Manne on 17/02/16.
//  Copyright © 2016 Sunil Phani Manne. All rights reserved.
//

#import "Matrix.h"

@interface Matrix (Submatrix)

- (BOOL)canAccomodate:(Matrix *)otherMatrix;
- (Matrix *)submatrixWithRowRange:(NSRange)rowRange
                   andColumnRange:(NSRange)columnRange;

- (void)setMatrix:(Matrix *)submatrix atColumn:(NSUInteger)column andRow:(NSUInteger)row;
- (void)maskMatrix:(Matrix *)submatrix atColumn:(NSUInteger)column andRow:(NSUInteger)row;

- (void)setZerosToRow:(NSInteger)row;
- (void)setZerosToColumn:(NSInteger)column;
- (void)fillMatrixWithValue:(double)value;

- (BOOL)isAllColumnsOnesForRow:(NSInteger)row;
- (BOOL)isAllRowsOnesForColumn:(NSInteger)column;
- (BOOL)isAllZeros;

- (Matrix *)getLowerTraingle;
- (Matrix *)getUpperTriangle;
- (NSArray *)OrOfAllRows;
- (NSArray *)OrOfAllColumns;

@end
