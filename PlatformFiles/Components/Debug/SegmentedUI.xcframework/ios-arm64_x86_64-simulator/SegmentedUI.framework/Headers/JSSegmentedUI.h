//
//  JSSegmentedUI.h
//  VM
//
//  Created by KH206 on 04/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "JSOldSegmentedUI.h"

@interface JSSegmentedUI : JSOldSegmentedUI
{
    
}

- (void) addDataAt:  (NSArray *)arguments;
- (void) addSectionAt:  (NSArray *)arguments;
- (void) removeSectionAt:  (NSArray *)arguments;
- (void) setSectionAt:  (NSArray *)arguments;
- (void) setSelectedRowIndex: (NSArray*)arguments;
- (NSArray*) getRowByIndex: (NSArray*) arguments;
@end
