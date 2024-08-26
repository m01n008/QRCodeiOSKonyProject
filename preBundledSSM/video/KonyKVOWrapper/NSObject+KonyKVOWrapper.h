#import <Foundation/Foundation.h>
#ifdef NFI_TP_SUPPORT
    #import <AVFoundation/AVFoundation.h>
    #import <AVKit/AvKit.h>
#endif
@interface NSObject (KonyKVOWrapper)

- (void)konyObserveValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change;

-(void) konyAddObserver: (NSObject *) observer forKeyPath: (NSString *) keyPath options: (NSKeyValueObservingOptions) options;

- (void)konyRemoveObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath;

@end
