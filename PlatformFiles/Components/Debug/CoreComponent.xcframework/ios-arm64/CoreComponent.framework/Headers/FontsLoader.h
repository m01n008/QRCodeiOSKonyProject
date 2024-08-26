//
//  FontsLoader.h
//  VM
//
//  Created by Amba on 12/03/14.
//
//

#import <Foundation/Foundation.h>

@interface FontsLoader : NSObject

-(BOOL)loadFontsFromArchiveData:(NSData *)archive;
-(void)loadFont:(NSData *)data;

@end
