//
//  KonyItemProvider.h
//  KRelease
//
//  Created by Saianuhya Kodimela on 29/09/17.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/KonyTypes.h>

@interface KonyItemProvider : NSObject <NSItemProviderReading, NSItemProviderWriting>

@property (class, NS_NONATOMIC_IOSONLY, readonly, copy) NSArray<NSString *> *writableTypeIdentifiersForItemProvider;
@property (class, NS_NONATOMIC_IOSONLY, readonly, copy) NSArray<NSString *> *readableTypeIdentifiersForItemProvider;;

- (instancetype)initWithData:(id)data type:(ItemDataType)type visibility:(FileDataVisibility)visibility;
- (id)getItemData;
- (ItemDataType)getItemDataType;
- (FileDataVisibility)getItemFileVisibility;

@end
