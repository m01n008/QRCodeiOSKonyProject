//
//  ObserverProtocl.h
//  VM
//
//  Created by Uday Bheema on 11/08/12.
//  Copyright (c) 2012 KONY SOLUTIONS. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ObserverProtocl

    -(void) valueChangedForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context;

@end
