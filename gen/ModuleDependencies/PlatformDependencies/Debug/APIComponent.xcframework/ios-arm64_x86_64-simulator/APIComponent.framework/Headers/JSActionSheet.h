//
//  JSActionSheet.h
//  VM
//
//  Created by Saianuhya Kodimela on 22/12/16.
//
//

#import <CoreComponent/JSWidget.h>

@interface JSActionSheet : JSWidget

- (void)show;
- (void)dismiss;
- (void)addAction:(NSArray *)arguments;
- (void)setAnchorConfiguration:(NSArray *)arguments;
@end
