//
//  KNYPreparedStatement.h
//  KonySyncV2
//
//  Created by Satya Eedara on 30/01/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Class gives you the datastructure to hold the  PreparedStatements with values.
 **/

@interface  KNYPreparedStatement : NSObject

@property (nonatomic,strong) NSString *query;
@property (nonatomic,strong) NSArray *values;


@end
