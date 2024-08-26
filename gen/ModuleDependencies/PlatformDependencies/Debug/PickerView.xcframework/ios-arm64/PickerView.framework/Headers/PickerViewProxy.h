//
//  PickerViewProxy.h
//  VM
//
//  Created by KH165 on 01/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/BaseProxy.h>

@interface PickerViewProxy : BaseProxy {
    
}

- (void)setComponentDataAt: (NSInteger) compIndex withData : (NSMutableArray*) data;
- (void)setSelectedKeyInComponent: (NSInteger) compIndex withKey : (NSString*) selectedKey;

@end
