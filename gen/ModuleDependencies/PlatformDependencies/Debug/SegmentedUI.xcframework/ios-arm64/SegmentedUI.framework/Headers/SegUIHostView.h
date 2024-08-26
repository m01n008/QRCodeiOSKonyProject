//
//  SegUIHostView.h
//  VM
//
//  Created by KH206 on 08/08/14.
//
//

#import <UIKit/UIKit.h>
#import <CoreComponent/KonyTypes.h>

@interface SegUIHostView : UIView {
    NSString *skinId;
    SegmentedUIViewType viewType;
}

@property (nonatomic, retain) NSString *skinId;
@property (nonatomic) SegmentedUIViewType viewType;

@end
