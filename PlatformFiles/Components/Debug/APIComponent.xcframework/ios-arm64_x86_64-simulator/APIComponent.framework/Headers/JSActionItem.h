//
//  JSActionItem.h
//  VM
//
//  Created by Saianuhya Kodimela on 28/12/16.
//
//

#import <CoreComponent/JSObject.h>
#import "KonyActionItem.h"

@interface JSActionItem : JSObject

@property (nonatomic) BOOL isAdded;
@property (nonatomic, retain) KonyActionItem *konyActionItem;

@end
