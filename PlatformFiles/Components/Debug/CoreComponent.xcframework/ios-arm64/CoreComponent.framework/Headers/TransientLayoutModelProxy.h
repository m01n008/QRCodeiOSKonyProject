//
//  TransientLayoutModelProxy.h
//  VM
//
//  Created by Prabhakar K on 11/08/14.
//
//

#import <Foundation/Foundation.h>
#import "Widget.h"
#import "FlexLayoutInfoProtocol.h"

@interface TransientLayoutModelProxy : NSProxy
{
    Widget * __weak associatedWidget;
    CGRect associatedRect;
    LayoutModel *associatedLayoutmodel;
}
-(instancetype) initWithLayoutModel:(LayoutModel*) layoutModel_ andWidget:(Widget*) widget_;
@end
