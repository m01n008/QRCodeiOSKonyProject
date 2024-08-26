//
//  KonyLibraryResultDelegate.h
//  VCPassData
//
//  Created by Aravind Macharla on 16/06/18.
//  Copyright © 2018 Aravind Macharla. All rights reserved.
//

@protocol KonyLibraryResultDelegate <NSObject>
@required
- (void)onLibraryResult:(NSString *)libraryId resultData:(NSDictionary *)resultData;
@end
