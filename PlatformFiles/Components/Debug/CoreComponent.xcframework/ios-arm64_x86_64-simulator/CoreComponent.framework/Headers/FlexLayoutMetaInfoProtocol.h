//
//  FlexLayoutMetaInfoProtocol.h
//  VM
//
//  Created by Sunil Phani Manne on 30/06/14.
//
//

#import <Foundation/Foundation.h>

@class FlexLayoutModelProperty;

@protocol FlexLayoutMetaInfoProtocol <NSObject>

- (NSArray *)flexLayoutPropertyNames;
- (NSArray *)flexLayoutInternalPropertyNames;

- (NSArray *)flexLayoutModelPropertyObjects;
- (NSArray *)flexLayoutModelInternalPropertyObjects;

@end
