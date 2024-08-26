//
//  KonyBasicAPI.h
//  VM
//
//  Created by Dhananjay Raj on 19/10/15.
//
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol KonyBasicAPIProtocol <JSExport>

+ (void)print:(id)object;

@end

@interface KonyBasicAPI : NSObject <KonyBasicAPIProtocol>


@end
