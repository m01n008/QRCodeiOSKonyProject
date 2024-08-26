//
//  KonyTabBarControllerDelegate.h
//  KonyCustomTabBarDemo
//
//  Created by KH1244 on 23/05/13.
//  Copyright (c) 2013 Kony Labs. All rights reserved.
//

#define kDefaultTintColor                 [UIColor colorWithRed:41.0/255.0 green:147.0/255.0 blue:239.0/255.0 alpha:1.0]
#define kDefaultTitleColor                [UIColor lightGrayColor]
#define kDefaultSelectedTitleColor        [UIColor whiteColor]
#define kDefaultOffset                     2.f


typedef enum {
    KonyTabBarPositionTop = 0,
    KonyTabBarPositionRight,
    KonyTabBarPositionBottom,
    KonyTabBarPositionLeft,
} KonyTabBarPosition;

NS_INLINE BOOL KonyTabBarIsVertical(KonyTabBarPosition position) {
    return position == KonyTabBarPositionLeft || position == KonyTabBarPositionRight;
}

NS_INLINE BOOL KonyTabBarIsHorizontal(KonyTabBarPosition position) {
    return position == KonyTabBarPositionTop || position == KonyTabBarPositionBottom;
}