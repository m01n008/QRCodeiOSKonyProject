//
//  Unarchiver.h
//  UsingLibarchive
//
//  Created by Amba on 15/04/13.
//  Copyright (c) 2013 Konylabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UnarchiverDelegate.h"

@interface Unarchiver : NSObject {
@private
    void *buffer;
}

@property (nonatomic, weak) id<UnarchiverDelegate> delegate;

- (id) initWithDelegate:(id <UnarchiverDelegate>)_delegate;
- (BOOL) unarchiveFromMemory:(void *)bytes ofLength:(NSUInteger)length archiveName:(NSString *)name;

- (BOOL) unarchiveFiles:(NSArray *)listOfFiles fromMemory:(void *)bytes ofLength:(NSUInteger)length archiveName:(NSString *)name;

@end
