//
//  JSBackgroundTaskReply.h
//  VM
//
//  Created by Dhananjay on 14/05/15.
//
//

#import "JSObject.h"

@interface JSBackgroundTaskReply : JSObject
{
    void (^replyFromBackgroundTask)(NSDictionary *replyInfo);
}

- (id)initWithReplyHandler:(void(^)(NSDictionary *replyInfo))watchKitReply;
- (void)executeWithReply:(NSArray *)reply;

@end
