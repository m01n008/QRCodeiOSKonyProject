//
//  KonyJSValue.h
//  VM
//
//  Created by Sunil Phani Manne on 21/01/14.
//
//


#ifndef VM_KonyJSValue_h
#define VM_KonyJSValue_h

#ifdef __cplusplus
extern "C" {
#endif

void *retainJSValue(void *jsValue);
void releaseJSValue(void *jsValue);

#ifdef __cplusplus
}
#endif

#endif

    
