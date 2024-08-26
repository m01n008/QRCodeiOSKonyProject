//
//  KonyWidgetContainerDrawableView.h
//  VM
//
//  Created by Ashish on 17/07/13.
//
//

#import "KonyWidgetContainerView.h"

@interface KonyWidgetContainerDrawableView : KonyWidgetContainerView

@property (nonatomic, readwrite, retain) NSString *skinIdentifier;

@end

@interface KonyWidgetContainerDrawableScrollView : KonyWidgetContainerScrollView

@property (nonatomic, readwrite, retain) NSString *skinIdentifier;

@end
