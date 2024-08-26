#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol BoolPointerExports <JSExport>

@property (getter=getContents,setter=setContents:) BOOL contents;

@end

@interface BoolPointer: NSObject <BoolPointerExports> {
    BOOL* ptr;
}

+(instancetype) boolPointerWithPtr: (BOOL*) p;
-(BOOL) getContents;
-(void) setContents: (BOOL) b;

@end

@protocol IdPointerExports <JSExport>

@property (unsafe_unretained,getter=getContents,setter=setContents:) id contents;

@end

@interface IdPointer: NSObject <IdPointerExports> {
    id* ptr;
}

+(instancetype) idPointerWithPtr: (id*) p;
-(id) getContents;
-(void) setContents: (id) i;

@end
