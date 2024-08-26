//
//  SegmentedUIViewDelegateProtocol.h
//  VM
//
//  Created by KH206 on 19/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <CoreComponent/KonyTypes.h>
#import <CoreComponent/Widget.h>
#import <CoreComponent/KonyWrapperDS.h>

typedef enum SegmentedUIEditingEvent
{
    SegmentedUIEditingEventInsert,
    SegmentedUIEditingEventDelete
}SegmentedUIEditingEvent;

@protocol SegmentedUIViewDelegateProtocol <NSObject>

- (void) rowClicked: (NSInteger) rowIndex inSection: (NSInteger) sectionIndex;
- (void) handleEvent: (KonyWidgetEventType) event onWidget: (Widget*)widget atRow: (NSInteger) rowIndex inSection: (NSInteger) section;

- (void) handleEditEvent: (SegmentedUIEditingEvent) event atRow: (NSInteger) rowIndex inSection: (NSInteger) sectionIndex;
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView;
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate;
- (void) scrollViewDidScroll:(UIScrollView *)scrollView;
- (void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView;
- (void) handleEditEventForEditAction: (SegmentedUIEditingEvent) event atRow: (NSInteger) rowIndex inSection: (NSInteger) sectionIndex :(CallBack*) deleteCallBack;
//- (void) viewReachedToTop;
//- (void) viewReachedToBottom;
//- (void) viewPulledInDirection: (NSInteger) direction;
- (void) rowFocusChangedTo: (NSInteger) rowIndex inSection: (NSInteger) sectionIndex withPageRemovalInProgress:(BOOL)isPageRemovalInProgress;

- (void) searchInitiatedWithText:(NSString*) text;
- (void) searchTextUpdated:(NSString*) text;
- (void) searchEnded;

- (void)segmentedUIViewEndUpdatesDidFinish;

-(void) dragCompletedFromIndexPath:( NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *) toIndexPath;

- (NSMutableArray *)getAddAtConfiguration;
- (NSMutableArray *)getRemoveAtConfiguration;
- (NSMutableArray *)getSetDataAtConfiguration;
- (NSMutableArray *)getAddAllConfiguration;
- (NSMutableArray *)getSetDataConfiguration;
- (NSMutableArray *)getRemoveAllConfiguration;
- (NSMutableArray *)getAddSectionAtConfiguration;
- (NSMutableArray *)getRemoveSectionAtConfiguration;
- (NSMutableArray *)getSetSectionAtConfiguration;

- (CallBack *)getOnRowDisplayListenerCallback;

- (void)executeOnRowDisplayListenerForRow:(NSNumber *)row andSection:(NSNumber *)section withState:(SegmentOperationState)state;

- (void)addWheelWidgetsToRootContainerFromSegmentsContainer:(Widget *)aWidget;
- (void)removeWheelWidgetsToRootContainerFromSegmentsContainer:(Widget *)aWidget;

@end

