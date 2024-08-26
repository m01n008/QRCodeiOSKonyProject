//
//  KonyHTTPRequestUploadProxy.h
//  VM
//
//  Created by Purnachandar on 20/09/16.
//
//

#import <CoreComponent/RuntimeObject.h>
#import <CoreComponent/CallBack.h>

@interface KonyHTTPRequestUploadProxy : RuntimeObject

@property(assign, atomic) id HTTPRequest;
@property (strong,nonatomic) NSMutableDictionary *uploadEventListenersHandler;

@end
