//
//  KonyDataMapperUtil.h
//  VMAppWithKonylib
//
//  Created by KH206 on 19/05/15.
//
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface KonyDataMapperUtil : NSObject

+(id) getAssociatedDataForTable:(WKInterfaceTable*) table atRowIndex:(NSUInteger) rowIndex;
+(id) getAssociatedDataForController:(id) controller;
+(void) updateController:(id)controller withData:(id) data;

@end
