
#import <Foundation/Foundation.h>
#import "RuntimeObject.h"

void enableJSFunctionTracing();
void disableJSFunctionTracing();

@interface Runtime 

- (BOOL)registerClass:(Class)objcClass;
- (BOOL)registerClassAsStaticAPI:(Class)objCClass;

@end

