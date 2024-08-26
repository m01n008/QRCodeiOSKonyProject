//
//  LayoutModel.h
//  VM
//
//  Created by KH206 on 15/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"
#import "BaseModel.h"
#import "FlexLayoutInfoProtocol.h"

@class Widget;
@class CallBack;

@interface LayoutModel : BaseModel <NSCopying, FlexLayoutInfoProtocol> {
@private
    float			leftMargin;
    float			rightMargin;
    float			topMargin;
    float			bottomMargin;
    
    float			leftPadding;
    float			rightPadding;
    float			topPadding;
    float			bottomPadding;
    
    BOOL      shouldRestrictContentsToBounds;
    
    float           actualLeftMarginValue;
    float           actualRightMarginValue;
    float           actualTopMarginValue;
    float           actualBottomMarginValue;

    float           actualLeftPaddingValue;
    float           actualRightPaddingValue;
    float           actualTopPaddingValue;
    float           actualBottomPaddingValue;

    BOOL            paddingInPixels;
    BOOL            marginInPixels;
    
    float            lengthCache;
    
    KonyWidgetAlignment	widgetAlignment;
    
    
    BOOL calculateAbstractlayoutFrame;
    CGRect abstractlayoutFrame;
    
    id<FlexLayoutMetaInfoProtocol> layoutModelParent;
}
@property (nonatomic, readonly)	CGRect abstractlayoutFrame;
@property (nonatomic, readwrite)BOOL calculateAbstractlayoutFrame;


@property (nonatomic, readonly)			float				leftMargin;
@property (nonatomic, readonly)			float				rightMargin;
@property (nonatomic, readonly)			float				topMargin;
@property (nonatomic, readonly)			float				bottomMargin;

@property (nonatomic, readonly)			float				leftPadding;
@property (nonatomic, readonly)			float				rightPadding;
@property (nonatomic, readonly)			float				topPadding;
@property (nonatomic, readonly)			float				bottomPadding;

@property (nonatomic, readonly)         float               lengthCache;

@property (nonatomic)			float				actualLeftMarginValue;
@property (nonatomic)			float				actualRightMarginValue;
@property (nonatomic)			float				actualTopMarginValue;
@property (nonatomic)			float				actualBottomMarginValue;

@property (nonatomic)			float				actualLeftPaddingValue;
@property (nonatomic)			float				actualRightPaddingValue;
@property (nonatomic)			float				actualTopPaddingValue;
@property (nonatomic)			float				actualBottomPaddingValue;

@property (nonatomic)			BOOL                paddingInPixels;
@property (nonatomic)			BOOL                marginInPixels;


@property (nonatomic)           KonyWidgetAlignment widgetAlignment;
@property (nonatomic)           BOOL          shouldRestrictContentsToBounds;

//Flex layout model properties follow: 

//Horizontal Positioning properties
@property (nonatomic, retain) id left;
@property (nonatomic, retain) id centerX;
@property (nonatomic, retain) id right;

//Vertical Positioning properties
@property (nonatomic, retain) id top;
@property (nonatomic, retain) id centerY;
@property (nonatomic, retain) id bottom;

//Z-dimension position properties
@property (nonatomic, retain) NSNumber *zIndex;

//Dimensional properties
@property (nonatomic, retain) id width;
@property (nonatomic, retain) id height;

//Dimensional constraint properties
@property (nonatomic, retain) id minWidth;
@property (nonatomic, retain) id maxWidth;
@property (nonatomic, retain) id minHeight;
@property (nonatomic, retain) id maxHeight;

// Responsive flex layout properties
@property (nonatomic, retain) id gutterX;
@property (nonatomic, retain) id gutterY;

@property (nonatomic, retain) CallBack *doLayoutCallback;
@property (nonatomic, retain) NSNumber *forceLayoutFlag;
@property (nonatomic, assign) KonyWidgetType widgetType;

- (id)initWithWidgetType:(KonyWidgetType)givenWidgetType;
- (void)setMarginsAndPaddingsForGivenLength:(float)length;
- (void)resetForceLayoutFlag;

- (CGSize)getPreferredSizeForFlexContainerAsParent;

//Some utility methods around pref size to help the widgets having flex container as template
- (CGSize)getPreferredSizeForFlexLayoutForReferenceSize:(CGSize)referenceSize;
- (CGSize)getPreferredSizeForTemplateByDoingTransientLayoutForWidget:(Widget *)widget
                                                       forGivenWidth:(float)width;

- (void)setVisiblePrivate:(BOOL)aVisible;

-(void) setParentLayoutModel:(LayoutModel *)layoutModel;
-(void) removeParent;

//Children related methods...
- (void)addChild:(LayoutModel *)layoutModel;
- (void)addChild:(LayoutModel *)layoutModel at:(NSInteger)index;
- (void)removeChild:(LayoutModel *)layoutModel;
- (void)removeChildAt:(NSInteger)index;
- (void)removeAllChildren;

-(BOOL) isFlexContainer;

@end
