//
//  PDFViewWidget.h
//  PDFView
//
//  Created by Zabiullah on 07/05/19.
//  Copyright © 2019 Kony. All rights reserved.
//

#import <CoreComponent/Widget.h>
#import "PDFViewConstants.h"
#import "PDFThumbnailViewWidget.h"
#import "PDFViewSkin.h"
#import <PDFKit/PDFKit.h>

/*
 In case of Thumbnail Position LEFT/RIGHT, we need to pass the standdar height 10% to calculate the contentscroll size.  
 */
#define HUNDRED_PERCENTAGE 100
#define THUMBNAIL_HEIGHT 10
/*!
 @class PDFViewWidget
 @brief The PDFViewWidget which used to hold the PDFView object.
 @superclass PDFViewWidget
 */
API_AVAILABLE(ios(11.0))
@interface CustomPDFView : UIView {
    //    PDFView *nativePDFView;
    //    CustomPDFThumbnailScrollView *thumbnailScrollView;
}
@property (nonatomic,retain) PDFView *nativePDFView;
@property (nonatomic, retain) CustomPDFThumbnailScrollView *thumbnailScrollView;
@end

API_AVAILABLE(ios(11.0))
@interface PDFViewWidget : Widget<PDFViewDelegate, PDFDocumentDelegate, CallBackListenerProtocol>
{
    //    @protected
    CustomPDFView* pdfView;
    PDFDATATYPE typeOfDataToBeLoaded;
    
}

@property (nonatomic) CustomPDFView * pdfView;
@property (nonatomic,assign) PDFDATATYPE typeOfDataToBeLoaded;
@property (strong, nonatomic) PDFDocument* currentDocument;

/**
 @brief Return a Boolen value that the widget is GreedyWidget
 */
- (BOOL)isGreedyWidget;

/**
 @brief Returns a Boolean value indicating whether the user can navigate to the first page of the document.
 */
-(BOOL) canGoToFirstPage;
/**
 @brief Returns a Boolean value indicating whether the user can navigate to the last page of the document.
 */
-(BOOL) canGoToLastPage;
/**
 @brief Returns a Boolean value indicating whether the user can navigate to the next page of the document.
 */
-(BOOL) canGoToNextPage;
/**
 @brief Returns a Boolean value indicating whether the user can navigate to the previous page of the document.
 */
-(BOOL) canGoToPreviousPage;
/**
 @brief Returns a Boolean value indicating whether the user can navigate to the previous page in the page history.
 */
-(BOOL) canGoBack;
/**
 @brief Returns a Boolean value indicating whether the user can navigate to the next page in the page history.
 */
-(BOOL) canGoForward;
/**
 @brief Returns a Boolean value indicating whether the user can magnify the view and zoom in.
 */
-(BOOL) canZoomIn;
/**
 @brief Returns a Boolean value indicating whether the user can view an expanded area and zoom out.
 */
-(BOOL) canZoomOut;
/**
 @brief Return a Boolean value indicating whether the scroll view is using a UIPageViewController.
 */
-(BOOL) isUsingPageViewController;
/**
 @brief Return a Boolean value indicating whether the document is locked.
 */
-(BOOL) isPDFLocked;
/**
 @brief Return  Boolean value specifying whether the document is encrypted.
 */
-(BOOL) isPDFEncrypted;

/**
 @brief Navigates to the first page of the document.
 */
-(void) goToFirstPage;
/**
 @brief Navigates to the last page of the document.
 */
-(void) goToLastPage;
/**
 @brief Navigates to the next page of the document.
 */
-(void) goToNextPage;
/**
 @brief Navigates to the previous page of the document.
 */
-(void) goToPreviousPage;
/**
 @brief Navigates back one step in the page history.
 */
-(void) goBack;
/**
 @brief Navigates forward one step in the page history.
 */
-(void) goForward;
/**
 @brief Apply Zooms in by increasing the scaling factor.
 */
-(void) zoomIn;
/**
 @brief Apply Zooms out by decreasing the scaling factor.
 */
-(void) zoomOut;

/**
 @brief Function is to scrolls to the specified page.
 @discussion It will scroll the PDF to specified page index.
 @param args Page Index.
 */
-(void) goToPage:(NSNumber *) pageIndex;

/**
 @brief Return the number of pages in the document.
 */
-(NSUInteger *) getPageCount;
/**
 @brief Return the current page number
 */

-(NSString *) getCurrentPageIndex;
/**
 @brief Return a dictionary of document metadata.
 */
-(NSDictionary *) getDocumentHistory;

/**
 @brief Function is used to apply the skin on PDFView
 */
- (void)applySkin;

@end

