//
//  NSObject+KonyKVOWrapper.m
//  VM
//
//  Created by Snigdha Satapathy on 28/10/15.
//
//

#import "NSObject+KonyKVOWrapper.h"


@implementation NSObject(KonyKVOWrapper)

- (void)konyObserveValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change{
    
    [self observeValueForKeyPath:keyPath ofObject:object change:change context:NULL ];

}

-(void) konyAddObserver: (NSObject *) observer forKeyPath: (NSString *) keyPath options: (NSKeyValueObservingOptions) options{
    [self addObserver:observer forKeyPath:keyPath options:options context:NULL ];

}

- (void)konyRemoveObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath{
    [self removeObserver:observer forKeyPath:keyPath context:NULL ];

}

@end