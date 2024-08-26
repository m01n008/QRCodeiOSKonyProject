//
//  BoxLayoutModel.h
//  VM
//
//  Created by KH206 on 20/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LayoutModel.h"

@interface BoxLayoutModel : LayoutModel
{
    BOOL			hExpand;
	BOOL			vExpand;
    BOOL            fixedWidthOrHeight;
	float			containerWt;
    BOOL            marginsIncludedInWidgetContainerWeight;
    
    NSNumber        *containerHeight;
    KonyLayoutConstraint    containerHeightReference;
}

@property (nonatomic)			BOOL				hExpand;
@property (nonatomic)			BOOL				vExpand;
@property (nonatomic)			float				containerWt;
@property (nonatomic)			BOOL                fixedWidthOrHeight;
@property (nonatomic)			BOOL                marginsIncludedInWidgetContainerWeight;
@property (nonatomic, retain)   NSNumber            *containerHeight;
@property (nonatomic)           KonyLayoutConstraint    containerHeightReference;

-(void) setHExpandPrivate:(BOOL) isHExpand;
-(void) setVExpandPrivate:(BOOL) isVExpand;

@end
