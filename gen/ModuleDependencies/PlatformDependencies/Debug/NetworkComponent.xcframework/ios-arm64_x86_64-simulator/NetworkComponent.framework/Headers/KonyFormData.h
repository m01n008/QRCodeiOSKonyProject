#import <CoreComponent/RuntimeObject.h>

@interface KonyFormData : RuntimeObject
{
@private
    NSMutableDictionary *dict;
    NSString *fileName;
}

@property (nonatomic, readonly) NSMutableDictionary *dict;

-(void) appendName: (NSString *) name withValue: (NSString *) value;
-(void) appendName: (NSString *) name withValue: (NSString *) value andFileName: (NSString *) fileName_;
-(NSString*) toString;
@end
