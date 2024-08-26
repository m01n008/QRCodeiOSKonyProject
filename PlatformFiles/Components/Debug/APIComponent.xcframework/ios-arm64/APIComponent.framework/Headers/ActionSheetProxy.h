//
//  ActionSheetProxy.h
//  VM
//
//  Created by Saianuhya Kodimela on 22/12/16.
//
//

#import <CoreComponent/BaseProxy.h>
#import <CoreComponent/JSObject.h>

@interface ActionSheetProxy : BaseProxy

- (void)show;
- (void)dismiss;
- (void)addAction:(JSObject *)actionProxy;
- (void)setAnchorConfiguration:(NSArray *)arguments;

@end
