//
//  KonyLibraryInitializationDelegate.h
//  CoreComponent
//
//  Created by Aravind Macharla on 05/07/18.
//  Copyright © 2018 Aravind Macharla. All rights reserved.
//

@protocol KonyLibraryInitializationDelegate <NSObject>
@required
- (void) onLibraryInitSuccess:(NSString *)libraryId;
- (void) onLibraryInitFailed:(NSString *)libraryId exception:(NSException*)exception;
@end

