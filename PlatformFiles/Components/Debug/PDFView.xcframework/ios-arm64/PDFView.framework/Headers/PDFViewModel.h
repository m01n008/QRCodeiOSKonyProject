//
//  PDFViewModel.h
//  PDFView
//
//  Created by Zabiullah on 07/05/19.
//  Copyright © 2019 Kony. All rights reserved.
//

#import <CoreComponent/WidgetModel.h>
#import <CoreComponent/KonyTypes.h>
/*!
 @class PDFViewModel
 @brief The PDFViewModel class
 @superclass WidgetModel
 */
API_AVAILABLE(ios(11.0))
@interface PDFViewModel : WidgetModel {
    
@private
    NSString *conditionalEncodedURLString;
}

@property (readwrite, retain) NSString *url;
@property (nonatomic, retain) CallBack *onPageChanged;
@property (nonatomic, retain) CallBack *onDocumentChanged;
@property (nonatomic) PdfDisplayMode displayMode;
@property (nonatomic) PdfDisplayBox displayBox;
@property (nonatomic) PdfDisplayDirection displayDirection;
@property (nonatomic) PdfInterpolationQuality interpolationQuality;
@property (nonatomic) PdfThumbnailPosition pdfThumbnailPosition;
@property (readwrite, retain) NSNumber* pdfThumbnailSizeInPercentage;
@property (readwrite, assign) BOOL displayPageBreak;
@property (readwrite, assign) BOOL displayRTL;
@property (readwrite, assign) BOOL displaysAsBook;
@property (readwrite, assign) BOOL usePageViewController;
@property (readwrite, assign) BOOL enablePDFThumbnailView;
@property (nonatomic, readwrite)            float                minScaleFactor;
@property (nonatomic, readwrite)            float                maxScaleFactor;
@property (nonatomic, readwrite) BOOL autoScales;
@property (readwrite, assign) BOOL enableZoom;
@property (retain, nonatomic) NSString* thumbnailBackgroundColor;
@property (nonatomic) BOOL showProgressIndicator;

/**
 @brief Create PDFView Widget
 */
- (Widget *)createWidget;

/**
 @brief Interact with PDFViewWidget and returns a Boolean value indicating whether the user can navigate to the first page of the document.
 */
-(BOOL) canGoToFirstPage;
/**
 @brief Interact with PDFViewWidget and returns a Boolean value indicating whether the user can navigate to the last page of the document.
 */
-(BOOL) canGoToLastPage;
/**
 @brief Interact with PDFViewWidget and returns a Boolean value indicating whether the user can navigate to the next page of the document.
 */
-(BOOL) canGoToNextPage;
/**
 @brief Interact with PDFViewWidget and returns a Boolean value indicating whether the user can navigate to the previous page of the document.
 */
-(BOOL) canGoToPreviousPage;
/**
 @brief Interact with PDFViewWidget and returns a Boolean value indicating whether the user can navigate to the previous page in the page history.
 */
-(BOOL) canGoBack;
/**
 @brief Interact with PDFViewWidget and returns a Boolean value indicating whether the user can navigate to the next page in the page history.
 */
-(BOOL) canGoForward;
/**
 @brief Interact with PDFViewWidget and returns a Boolean value indicating whether the user can magnify the view and zoom in.
 */
-(BOOL) canZoomIn;
/**
 @brief Interact with PDFViewWidget and returns a Boolean value indicating whether the user can view an expanded area and zoom out.
 */
-(BOOL) canZoomOut;
/**
 @brief Interact with PDFViewWidget and return a Boolean value indicating whether the scroll view is using a UIPageViewController.
 */
-(BOOL) isUsingPageViewController;
/**
 @brief Interact with PDFViewWidget and return a Boolean value indicating whether the document is locked.
 */
-(BOOL) isPDFLocked;
/**
 @brief Interact with PDFViewWidget and return  Boolean value specifying whether the document is encrypted.
 */
-(BOOL)isPDFEncrypted;

/**
 @brief Interact with PDFViewWidget and Navigates to the first page of the document.
 */
-(void) goToFirstPage;
/**
 @brief Interact with PDFViewWidget and Navigates to the last page of the document.
 */
-(void) goToLastPage;
/**
 @brief Interact with PDFViewWidget and Navigates to the next page of the document.
 */
-(void) goToNextPage;
/**
 @brief Interact with PDFViewWidget and Navigates to the previous page of the document.
 */
-(void) goToPreviousPage;
/**
 @brief Interact with PDFViewWidget and Navigates back one step in the page history.
 */
-(void) goBack;
/**
 @brief Interact with PDFViewWidget and Navigates forward one step in the page history.
 */
-(void) goForward;
/**
 @brief Interact with PDFViewWidget and  apply Zooms in by increasing the scaling factor.
 */
-(void) zoomIn;
/**
 @brief Interact with PDFViewModel and Zooms out by decreasing the scaling factor.
 */
-(void) zoomOut;

/**
 @brief Function interact with PDFViewWidget and  scrolls to the specified page.
 @discussion It will scroll the PDF to specified page index.
 @param args Page Index.
 */
-(void) goToPage:(NSNumber *) pageIndex;

/**
 @brief Interact with PDFViewWidget and return the number of pages in the document.
 */
-(NSUInteger *) getPageCount;
/**
 @brief Interact with PDFViewWidget and return the current page number
 */
-(NSString *) getCurrentPageIndex;
/**
 @brief Interact with PDFViewWidget and return a dictionary of document metadata.
 */
-(NSDictionary *) getDocumentHistory;

/**
 @brief Get the encoded conditional URL for the PDFView
 */
- (NSString*) getConditionalEncodedURL;
/**
 @brief Written the encoded constional URL
 */
- (void) setConditionalEncodedURL: (NSString*) pconditionalEncodedURLString;

@end


