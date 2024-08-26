//
//  PDFThumbnailViewWidget.h
//  PDFView
//
//  Created by Shaik.jabiulla on 11/09/19.
//  Copyright © 2019 Kony. All rights reserved.
//

#import <CoreComponent/Widget.h>
#import <PDFKit/PDFKit.h>

/*
 In case of Thumbnail position LEFT/RIGHT we are passing the fixed THUMB_WIDTH, THUMB_STANDARD_HEIGHT to maintain the UI consistency.
 In case of Thumbnail position TOP/BOTTOM we are passing the fixed THUMB_HEIGTH to maintain the UI consistency.
 */
#define HUNDRED_PERCENTAGE 100
#define THUMB_WIDTH 61
#define THUMB_HEIGHT 69
#define THUMB_STANDARD_HEIGHT 10

API_AVAILABLE(ios(11.0))
@interface nativePDFThumbnailView: PDFThumbnailView{
    
}
@end
API_AVAILABLE(ios(11.0))
@interface CustomPDFThumbnailScrollView : UIScrollView{
    
    nativePDFThumbnailView *pdfThumbnailView;
}
@property (nonatomic,retain) nativePDFThumbnailView *pdfThumbnailView;
-(void) setPDFThumbnailViewFrame :(CGRect) parentFrame :(NSInteger) contentScrollSize :(NSInteger)thumbnailSize :(PdfThumbnailPosition) position :(PDFView*) pdf;
@end









