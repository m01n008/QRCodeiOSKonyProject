#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIPasteboard_symbols(JSContext*);
@protocol UIPasteboardUIPasteboardDataExtensionsCategoryInstanceExports<JSExport>
@property (copy,nonatomic) NSString * string;
@property (copy,nonatomic) NSURL * URL;
@property (copy,nonatomic) UIImage * image;
@property (copy,nonatomic) UIColor * color;
@property (copy,nonatomic) NSArray * colors;
@property (copy,nonatomic) NSArray * URLs;
@property (copy,nonatomic) NSArray * images;
@property (copy,nonatomic) NSArray * strings;
@end
@protocol UIPasteboardUIPasteboardDataExtensionsCategoryClassExports<JSExport>
@end
@protocol UIPasteboardInstanceExports<JSExport>
@property (readonly,nonatomic) NSInteger numberOfItems;
@property (copy,nonatomic) NSArray * items;
@property (readonly,nonatomic) NSString * name;
@property (readonly,nonatomic) NSInteger changeCount;
@property (getter=isPersistent,nonatomic) BOOL persistent;
-(NSArray *) dataForPasteboardType: (NSString *) pasteboardType inItemSet: (NSIndexSet *) itemSet ;
-(void) addItems: (NSArray *) items ;
-(BOOL) containsPasteboardTypes: (NSArray *) pasteboardTypes ;
-(void) setData: (NSData *) data forPasteboardType: (NSString *) pasteboardType ;
-(void) setValue: (id) value forPasteboardType: (NSString *) pasteboardType ;
-(id) valueForPasteboardType: (NSString *) pasteboardType ;
-(NSIndexSet *) itemSetWithPasteboardTypes: (NSArray *) pasteboardTypes ;
-(NSArray *) pasteboardTypes;
-(NSData *) dataForPasteboardType: (NSString *) pasteboardType ;
-(NSArray *) valuesForPasteboardType: (NSString *) pasteboardType inItemSet: (NSIndexSet *) itemSet ;
-(BOOL) containsPasteboardTypes: (NSArray *) pasteboardTypes inItemSet: (NSIndexSet *) itemSet ;
-(NSArray *) pasteboardTypesForItemSet: (NSIndexSet *) itemSet ;
@end
@protocol UIPasteboardClassExports<JSExport>
+(UIPasteboard *) pasteboardWithName: (NSString *) pasteboardName create: (BOOL) create ;
+(UIPasteboard *) generalPasteboard;
+(void) removePasteboardWithName: (NSString *) pasteboardName ;
+(UIPasteboard *) pasteboardWithUniqueName;
@end
#pragma clang diagnostic pop