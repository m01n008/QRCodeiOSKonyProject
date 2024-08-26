//
//  KonyCWIEnvironment.h
//  VM
//
//  Created by Amba on 05/02/13.
//
//

#import <Foundation/Foundation.h>

@interface KonyCWIEnvironment : NSObject {
@private
    id model;
    id widget;
}

@property (nonatomic, retain) id model;

- (id) initWithModel : (id) _model forWidget:(id) _widget;
- (void) forceLayout;

@end
