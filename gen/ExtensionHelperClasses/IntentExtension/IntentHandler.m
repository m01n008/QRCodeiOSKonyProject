//
//  IntentHandler.m
//  MyApp
//
//  Created by Saurabh Mendhe on 09/12/16.
//
//

#import "IntentHandler.h"
#import "konyExtensionsRuntime.h"
// As an example, this class is set up to handle Message intents.
// You will want to replace this or add other intents as appropriate.
// The intents you wish to handle must be declared in the extension's Info.plist.

// You can test your example integration by saying things to Siri like:
// "Send a message using <myApp>"
// "<myApp> John saying hello"
// "Search for messages in <myApp>"

@interface IntentHandler ()
{
    int count;
}
@end
@implementation IntentHandler


- (id)init {
    if ( self = [super init] ) {
        [konyExtensionsRuntime setup:self];
        return self;
    }
    return NULL;
}

- (id)handlerForIntent:(INIntent *)intent {
    // This is the default implementation.  If you want different objects to handle different intents,
    // you can override this and return the handler you want for that particular intent.
    JSValue *handler = nil;
    handler = (JSValue *)[konyExtensionsRuntime  executeCallback:@"handlerForIntent" withArg:@[intent]];
    return handler.toObject; // Check for memory profile
}
@end
