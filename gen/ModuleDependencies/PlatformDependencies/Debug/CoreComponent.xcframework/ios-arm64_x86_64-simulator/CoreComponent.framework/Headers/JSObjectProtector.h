//
//  JSObjectProtector.h
//  VM
//
//  Created by Snigdha Satapathy on 01/10/15.
//
//

#ifndef VM_JSObjectProtector_h
#define VM_JSObjectProtector_h


#import <Foundation/Foundation.h>
#include <JavaScriptCore/JSObjectRef.h>

@interface JSObjectProtector : NSObject {
    void *jsObject;
}

-(id) initWithJSObject:(void*) theJsObject;

-(void*) getProtectedJSObject;
@end

#endif
