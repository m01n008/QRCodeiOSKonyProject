//
//  FlexLayoutEnginePrivate.h
//  VM
//
//  Created by Sunil Phani Manne on 07/07/14.
//
//

#ifndef VM_FlexLayoutEngine1Private_h
#define VM_FlexLayoutEngine1Private_h

@interface FlexLayoutEngine ()

+ (CGSize)performFreeFlowFlexLayoutTypeForContainer:(id <FlexLayoutInfoProtocol>)container
                                   withSubwidgets:(NSArray *)subwidgets;

+ (void)performUnknownFlexLayoutTypeForSubwidgets:(NSArray *)subwidgets;
@end

#endif
