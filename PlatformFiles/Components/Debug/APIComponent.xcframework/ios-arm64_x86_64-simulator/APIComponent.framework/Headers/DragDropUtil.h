//
//  DragDropUtil.h
//  KRelease
//
//  Created by Saianuhya Kodimela on 12/10/17.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/KonyTypes.h>
#import <CoreComponent/Widget.h>
#import <CoreComponent/KonyWrapperDS.h>
#import <MobileCoreServices/UTType.h>
#import <MobileCoreServices/UTCoreTypes.h>

#ifdef __IPHONE_11_0
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpartial-availability"

@interface DragDropUtil : NSObject

+ (BOOL)isValidType:(ItemDataType)type;
+ (BOOL)isValidFileVisibility:(FileDataVisibility)visibility;
+ (Widget *)getWidgetFromProxy:(BaseProxy *)widgetProxy;
+ (CGPoint)getCGpointFromLocationDict:(NSDictionary *)locationDict andWidgetFrame:(CGRect)frame;
+ (BOOL)isValidLocationDict:(NSDictionary *)locationDict;
+ (BOOL)isValidCallBacksDictionary:(NSDictionary *)callbackDict;
+ (NSValue *)getTransformValueFromModel:(TransformDataModel *)model;
+ (UITargetedDragPreview *)getPreviewWithPreviewDataDict:(NSDictionary *)previewDataDict;
+ (UIDragPreviewTarget *)getPreviewTarget:(BaseProxy *)containerWidget location:(NSDictionary *)location transform:(NSValue *)tranform;
+ (NSString *)getUTTypeForFileExtension:(NSString *)fileExtension;
+ (NSString *)getUTIArrayMediaType:(NSArray *)UTIarray;
#pragma clang diagnostic pop
#endif
@end
