//
//  NativeContainerProxy.h
//  VM
//
//  Created by Snigdha on 4/8/2015.
//
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>
#import "NativeContainerModel.h"
#import "BaseProxy.h"

@interface NativeContainerProxy : BaseProxy {
    
}

-(UIView*) getContainerView;

//Redeclared model This avoids unnecessary typecastings in the code!
@property (nonatomic, readonly) NativeContainerModel *model;

@end