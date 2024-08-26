//
//  JSKonyAudio.h
//  VM
//
//  Created by Praveen Kanike on 28/02/17.
//
//

#ifndef JSKonyAudio_h
#define JSKonyAudio_h

#import <Foundation/NSObject.h>
#import <CoreComponent/CallBack.h>
#import <CoreComponent/JSObject.h>
/*!
 @class JSKonyAudio
 
 @brief The JSKonyAudio class
 
 @discussion    This class was designed and implemented to support the kony.media namespace API's which are in JS.
                And also it is an interface to communicate between kony.media(JS namesapce) to Native code(Audio interface)
 @superclass NSObject
 */
@interface JSKonyAudio : JSObject

@end

#endif /* JSKonyAudio_h */
