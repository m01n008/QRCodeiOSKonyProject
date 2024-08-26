//
//  JSPDFView.h
//  PDFView
//
//  Created by Zabiullah on 07/05/19.
//  Copyright © 2019 Kony. All rights reserved.
//

#import <CoreComponent/RuntimeObject.h>
#import <CoreComponent/JSWidget.h>
#import <CoreComponent/KonyBoolean.h>
/*!
 @class JSPDFView
 @brief The JSPDFView class
 @discussion    This class was designed and implemented to support the PDFView widget to render the PDF's.
 @superclass NSObject
 */
@interface JSPDFView : JSWidget {
    
}
/**
 @brief Interact with PDFViewProxy and returns a Boolean value indicating whether the user can navigate to the first page of the document.
 */
-(KonyBoolean *) canGoToFirstPage;
/**
 @brief Interact with PDFViewProxy and returns a Boolean value indicating whether the user can navigate to the last page of the document.
 */
-(KonyBoolean *) canGoToLastPage;
/**
 @brief Interact with PDFViewProxy and returns a Boolean value indicating whether the user can navigate to the next page of the document.
 */
-(KonyBoolean *) canGoToNextPage;
/**
 @brief Interact with PDFViewProxy and returns a Boolean value indicating whether the user can navigate to the previous page of the document.
 */
-(KonyBoolean *) canGoToPreviousPage;
/**
 @brief Interact with PDFViewProxy and returns a Boolean value indicating whether the user can navigate to the previous page in the page history.
 */
-(KonyBoolean *) canGoBack;
/**
 @brief Interact with PDFViewProxy and returns a Boolean value indicating whether the user can navigate to the next page in the page history.
 */
-(KonyBoolean *) canGoForward;
/**
 @brief Interact with PDFViewProxy and returns a Boolean value indicating whether the user can magnify the view and zoom in.
 */
-(KonyBoolean *) canZoomIn;
/**
 @brief Interact with PDFViewProxy and returns a Boolean value indicating whether the user can view an expanded area and zoom out.
 */
-(KonyBoolean *) canZoomOut;
/**
 @brief Interact with PDFViewProxy and return a Boolean value indicating whether the scroll view is using a UIPageViewController.
 */
-(KonyBoolean *) isUsingPageViewController;
/**
 @brief Interact with PDFViewProxy and return a Boolean value indicating whether the document is locked.
 */
-(KonyBoolean *) isPDFLocked;
/**
 @brief Interact with PDFViewProxy and return  Boolean value specifying whether the document is encrypted.
 */
-(KonyBoolean *) isPDFEncrypted;

/**
 @brief Interact with PDFViewProxy and Navigates to the first page of the document.
 */
-(void) goToFirstPage;
/**
 @brief Interact with PDFViewProxy and Navigates to the last page of the document.
 */
-(void) goToLastPage;
/**
 @brief Interact with PDFViewProxy and Navigates to the next page of the document.
 */
-(void) goToNextPage;
/**
 @brief Interact with PDFViewProxy and Navigates to the previous page of the document.
 */
-(void) goToPreviousPage;
/**
 @brief Interact with PDFViewProxy and Navigates back one step in the page history.
 */
-(void) goBack;
/**
 @brief Interact with PDFViewProxy and Navigates forward one step in the page history.
 */
-(void) goForward;
/**
 @brief Interact with PDFViewProxy and  apply Zooms in by increasing the scaling factor.
 */
-(void) zoomIn;
/**
 @brief Interact with PDFViewProxy and Zooms out by decreasing the scaling factor.
 */
-(void) zoomOut;

/**
 @brief Function interact with PDFViewProxy and scrolls to the specified page.
 @discussion It will scroll the PDF to specified page index.
 @param args Page Index.
 */
-(void) goToPage:(NSArray *) arguments;

/**
 @brief Interact with PDFViewProxy and return the number of pages in the document.
 */
-(NSArray *) getPageCount;
/**
 @brief Interact with PDFViewProxy and return the current page number
 */
-(NSArray *) getCurrentPageIndex;
/**
 @brief Interact with PDFViewProxy and return a dictionary of document metadata.
 */
-(NSDictionary *) getDocumentHistory;

@end


