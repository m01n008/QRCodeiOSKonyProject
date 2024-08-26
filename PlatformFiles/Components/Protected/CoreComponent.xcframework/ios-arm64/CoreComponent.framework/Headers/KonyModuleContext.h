//
//  KonyModuleContext.h
//  CoreComponent
//
//  Created by Aravind Macharla on 23/06/18.
//  Copyright © 2018 Aravind Macharla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/KonyLibraryResultDelegate.h>
#import <CoreComponent/KonyLibraryInitializationDelegate.h>

@interface KonyModuleContext : NSObject

+ (KonyModuleContext*) sharedContext;
    
@property(nonatomic,retain) NSString *moduleName;
@property(nonatomic,retain) NSString *modulePath;
@property(nonatomic,retain) id<KonyLibraryResultDelegate> moduleResultDelegate;
@property(nonatomic,retain) NSDictionary *moduleInfoDictionary;
@property(nonatomic) BOOL isLibrary;
@property(nonatomic,retain) id<KonyLibraryInitializationDelegate> moduleInitializationDelegate;
@property(nonatomic) BOOL isLibraryInitializationDone;
@property(nonatomic) BOOL requiresUI;
@property(nonatomic,retain) id silentModeCallBack;
    
@end
