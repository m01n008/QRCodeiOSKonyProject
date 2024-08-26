

#import <Foundation/Foundation.h>

@protocol AccessibilityDelegate <NSObject>
@optional

- (BOOL)customAccessibilityOrderRequired;
- (NSInteger)customAccessibilityElementCount;
- (NSInteger)customIndexOfAccessibilityElement:(id)element;
- (id)customAccessibilityElementAtIndex:(NSInteger)index;

@end
