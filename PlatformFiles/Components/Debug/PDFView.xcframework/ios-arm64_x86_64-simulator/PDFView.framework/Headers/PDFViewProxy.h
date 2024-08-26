//
//  PDFViewProxy.h
//  PDFView
//
//  Created by Zabiullah on 07/05/19.
//  Copyright © 2019 Kony. All rights reserved.
//

#import <CoreComponent/BaseProxy.h>
/*!
 @class PDFViewProxy
 @brief The PDFViewProxy class
 @superclass BaseProxy
 */
@interface PDFViewProxy : BaseProxy {
    
}
/**
 @brief Create PDFViewWidget
 */
+(id) createWidget: (NSDictionary*) config;
/**
 @brief Interact with PDFViewModel and returns a Boolean value indicating whether the user can navigate to the first page of the document.
 */
-(BOOL) canGoToFirstPage;
/**
 @brief Interact with PDFViewModel and returns a Boolean value indicating whether the user can navigate to the last page of the document.
 */
-(BOOL) canGoToLastPage;
/**
 @brief Interact with PDFViewModel and returns a Boolean value indicating whether the user can navigate to the next page of the document.
 */
-(BOOL) canGoToNextPage;
/**
 @brief Interact with PDFViewModel and returns a Boolean value indicating whether the user can navigate to the previous page of the document.
 */
-(BOOL) canGoToPreviousPage;
/**
 @brief Interact with PDFViewModel and returns a Boolean value indicating whether the user can navigate to the previous page in the page history.
 */
-(BOOL) canGoBack;
/**
 @brief Interact with PDFViewModel and returns a Boolean value indicating whether the user can navigate to the next page in the page history.
 */
-(BOOL) canGoForward;
/**
 @brief Interact with PDFViewModel and returns a Boolean value indicating whether the user can magnify the view and zoom in.
 */
-(BOOL) canZoomIn;
/**
 @brief Interact with PDFViewModel and returns a Boolean value indicating whether the user can view an expanded area and zoom out.
 */
-(BOOL) canZoomOut;
/**
 @brief Interact with PDFViewModel and return a Boolean value indicating whether the scroll view is using a UIPageViewController.
 */
-(BOOL) isUsingPageViewController;
/**
 @brief Interact with PDFViewModel and return a Boolean value indicating whether the document is locked.
 */
-(BOOL *) isPDFLocked;
/**
 @brief Interact with PDFViewModel and return  Boolean value specifying whether the document is encrypted.
 */
-(BOOL *) isPDFEncrypted;

/**
 @brief Interact with PDFViewModel and Navigates to the first page of the document.
 */
-(void) goToFirstPage;
/**
 @brief Interact with PDFViewModel and Navigates to the last page of the document.
 */
-(void) goToLastPage;
/**
 @brief Interact with PDFViewModel and Navigates to the next page of the document.
 */
-(void) goToNextPage;
/**
 @brief Interact with PDFViewModel and Navigates to the previous page of the document.
 */
-(void) goToPreviousPage;
/**
 @brief Interact with PDFViewModel and Navigates back one step in the page history.
 */
-(void) goBack;
/**
 @brief Interact with PDFViewModel and Navigates forward one step in the page history.
 */
-(void) goForward;
/**
 @brief Interact with PDFViewModel and  apply Zooms in by increasing the scaling factor.
 */
-(void) zoomIn;
/**
 @brief Interact with PDFViewModel and Zooms out by decreasing the scaling factor.
 */
-(void) zoomOut;

/**
 @brief Function interact with PDFViewModel and  scrolls to the specified page.
 @discussion It will scroll the PDF to specified page index.
 @param args Page Index.
 */
-(void) goToPage:(NSNumber *) pageIndex;

/**
 @brief Interact with PDFViewModel and return the number of pages in the document.
 */
-(NSUInteger *) getPageCount;
/**
 @brief Interact with PDFViewModel and return the current page number
 */
-(NSString *) getCurrentPageIndex;
/**
 @brief Interact with PDFViewModel and return a dictionary of document metadata.
 */
-(NSDictionary *) getDocumentHistory;

@end



