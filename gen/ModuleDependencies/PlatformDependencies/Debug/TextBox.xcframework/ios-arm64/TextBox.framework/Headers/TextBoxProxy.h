//
//  TextBoxProxy.h
//  VM
//
//  Created by User Kasturi on 15/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/BaseProxy.h>

@interface TextBoxProxy : BaseProxy

@end

@interface TextBoxProxy2 : BaseProxy

- (void)setSelection:(NSNumber *)startIndex endIndex:(NSNumber *)endIndex;
- (NSDictionary *)getSelection;

@end
