//
//  CollapsibleItem.h
//  VM
//
//  Created by Uday Bheema on 25/07/12.
//  Copyright (c) 2012 KONY SOLUTIONS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CollapsibleView.h"
#import "CollapsibleButton.h"


@interface CollapsibleItem : UIView
{
    
@protected
	CollapsibleButton* itemButton;
	//BOOL isLayoutDone;
	CollapsibleItemState itemState;
	CollapsibleItemState itemPrevState;
	UIImage *collapsedIndicatorImage;
	UIImage *expandedIndicatorImage;
	UIImageView *collapsibleItemIndicator;
    TabViewCollapsibleTabNameAlignment tabNameAlignment;
    TabViewCollapsibleImagePosition indicatorAllignment;
    Widget *boxWidget;
    NSString *itemName;
	id target;
	SEL targetSelector;
    NSString *tabId;
}

@property (nonatomic, retain, readwrite) CollapsibleButton* itemButton;
@property (nonatomic, retain, readwrite) NSString *itemName;
@property (nonatomic, retain, readwrite) Widget *boxWidget;
@property (nonatomic)                    CollapsibleItemState itemState;
@property (nonatomic, retain, readwrite) UIImage* collapsedIndicatorImage;
@property (nonatomic, retain, readwrite) UIImage* expandedIndicatorImage;
@property (nonatomic)                    TabViewCollapsibleTabNameAlignment tabNameAlignment;
@property (nonatomic)                    TabViewCollapsibleImagePosition indicatorAllignment;
@property (nonatomic, retain, readwrite) UIImageView* collapsibleItemIndicator;
@property (nonatomic, weak) CollapsibleView* parentWidget;
@property (nonatomic, retain, readwrite) NSString *tabId;

- (id) initWithConfig: (NSDictionary*) configDict parent: (CollapsibleView*) pWidget;
- (void) loadConfigDict:(NSDictionary*) cDict;
- (void) createButton;
- (void) toggleState;
- (void) setItemState : (CollapsibleItemState) tmpState withAnimation : (BOOL) value;
- (void) onClick: (id) sender;
- (UIScrollView*) getParentScrollView;
- (void) setTitleInsets;
- (void) refreshCollapsedIndicatorWithImage : (UIImage*) indicatorImage;
- (void) setItemState : (CollapsibleItemState) tmpState;
- (void) expandItem;
- (void) unExpandItem;
- (CGSize) getPreferredSizeForGivenSize: (CGSize) givenSize;
- (void) setViewFrame : (CGRect) rect withActualItemSize:(CGSize)itemSize;
- (UIView*) getView;
- (UIView*) getBoxView;
- (void) refreshItemWithConfig:(NSDictionary*) cDict;
- (CGSize) getCollapsibleButtonSizeForGivenSize:(CGSize) size withSkin:(TabSkin*) skin;
- (void) applyFocusSkin: (id) sender;
- (void) reloadSkins;

@end
