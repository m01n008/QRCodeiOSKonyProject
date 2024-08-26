//
//  FlexLayoutEngine1.h
//  VM
//
//  Created by Sunil Phani Manne on 26/06/14.
//
//

#import <Foundation/Foundation.h>

#import "KonyTypes.h"

@class FlexLayoutModelProperty;

@protocol FlexLayoutInfoProtocol;

@interface FlexLayoutEngine : NSObject

+ (Class)layoutEngineForType:(FlexLayoutType)flexLayoutType;

/*!
    @brief Performs Layout of the subwidgets of the given <code>FlexLayoutType</code> of a given container
    @param Indicates the layout type to be performed.
    @param Container conforming to <code>FlexLayoutInfoProtocol</code> on which the layout of subwidgets has to be done.
    @param The smallest possible encapsulating size accomodating all the subwidgets.
 */
+ (CGSize)performLayoutOfType:(FlexLayoutType)flexLayoutType
               forContainer:(id <FlexLayoutInfoProtocol>)container
             withSubwidgets:(NSArray *)subwidgets;

+ (CGSize)performLayoutOfType:(FlexLayoutType)flexLayoutType
                 forContainer:(id <FlexLayoutInfoProtocol>)container
               withSubwidgets:(NSArray *)subwidgets
                  forAutogrow:(BOOL)autogrow
isSetFrameAndCallDoLayoutEnabled:(BOOL)shouldSetFrameAndCallDoLayout;

+ (CGSize)performLayoutOfType:(FlexLayoutType)flexLayoutType
                 forContainer:(id <FlexLayoutInfoProtocol>)container
               withSubwidgets:(NSArray *)subwidgets
                  forAutogrow:(BOOL)autogrow;

/*!
 @brief Performs a transient Layout of the subwidgets of the given <code>FlexLayoutType</code> of a given container
 @param Indicates the layout type to be performed.
 @param Container conforming to <code>FlexLayoutInfoProtocol</code> on which the layout of subwidgets has to be done.
 @param Array containing the frames corresponding to the respective subwidget.
 */
+ (NSArray *)performTransientLayoutOfType:(FlexLayoutType)flexLayoutType
                             forContainer:(id <FlexLayoutInfoProtocol>)container
                           withSubwidgets:(NSArray *)subwidgets;

+ (NSArray *)performTransientLayoutOfType:(FlexLayoutType)flexLayoutType
                             forContainer:(id <FlexLayoutInfoProtocol>)container
                           withSubwidgets:(NSArray *)subwidgets
                              forAutogrow:(BOOL)autogrow;

/*!
 @brief Performs realtime transient Layout of the subwidgets of the given <code>FlexLayoutType</code> of a given container
 @param Indicates the layout type to be performed.
 @param Container conforming to <code>FlexLayoutInfoProtocol</code> on which the layout of subwidgets has to be done.
 @param Array containing the frames corresponding to the respective subwidget.
 */
+ (NSArray *)performRealTimeTransientLayoutOfType:(FlexLayoutType)flexLayoutType
                                  forContainer:(id <FlexLayoutInfoProtocol>)container
                                withSubwidgets:(NSArray *)subwidgets;

+ (NSArray *)performRealTimeTransientLayoutOfType:(FlexLayoutType)flexLayoutType
                                     forContainer:(id <FlexLayoutInfoProtocol>)container
                                   withSubwidgets:(NSArray *)subwidgets
                                      forAutogrow:(BOOL)autogrow;
@end
