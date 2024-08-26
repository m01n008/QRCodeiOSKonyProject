//
//  WKJSScriptLoader.h
//  VM
//
//  Created by Dhananjay Raj on 04/02/16.
//
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@interface WKJSScriptLoader : NSObject
{
    @private
    JSContext *jsContext;
}

- (id)initWithWKJSContext:(JSContext *)context;
- (void)loadWKJSScripts;

@end
