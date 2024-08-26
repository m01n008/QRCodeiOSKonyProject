//
//  KonyModuleProxyProtocol.h
//  VM
//
//  Created by KH206 on 08/04/15.
//
//

#import <Foundation/Foundation.h>

#define SELSTRING(selector) NSStringFromSelector(selector)

@protocol KonyModuleProxyProtocol <NSObject>
+(NSString*) proxyNameSpace;
+(NSDictionary*) proxyMethodMapping;
@end
