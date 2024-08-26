//
//  Kony.h
//  CoreComponent
//
//  Created by Aravind Macharla on 19/06/18.
//  Copyright © 2018 Aravind Macharla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "KonyLibraryResultDelegate.h"
#import "KonyLibraryInitializationDelegate.h"

@interface KonyLibrary : NSObject

+ (void) initialize:(NSString *)libraryId
          delegate :(id<KonyLibraryInitializationDelegate>)initializationDelegate;

+ (void) start : (NSString *)libraryId
viewController : (UIViewController *)viewController
   libraryArgs : (NSDictionary *)libraryArgs
  libraryConfig: (NSDictionary *)libraryConfig
      delegate : (id<KonyLibraryResultDelegate>)resultDelegate;
    
+(void) invokeInHeadlessMode:(NSString *)libraryId
                 libraryArgs:(NSDictionary *)libraryArgs
                    delegate:(id<KonyLibraryResultDelegate>)resultDelegate;

@end
