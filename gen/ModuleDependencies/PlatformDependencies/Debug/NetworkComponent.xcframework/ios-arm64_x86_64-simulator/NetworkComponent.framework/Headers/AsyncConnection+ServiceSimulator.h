//
//  AsyncConnection+ServiceSimulator.h
//  VM
//
//  Created by KH035 on 6/25/13.
//
//

#import <Foundation/Foundation.h>
#import "KonyInvokeService.h"

@interface AsyncConnection (ServiceSimulator)

+ (void) enableAsynchronousServiceSimulator;
- (void) simulateSendRequest : (NSString*) httpBodyString requestType:(NSString*) requestType CallBack:(id) callBack HeaderFields:(NSDictionary*) headerFields timeOut : (int) timeOut infoDict: (id) info;
- (void)simulateConnectionDidFinishLoading:(NSURLConnection *)connection;

@end
