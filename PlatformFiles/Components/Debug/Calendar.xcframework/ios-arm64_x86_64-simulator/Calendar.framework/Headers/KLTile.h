/*
 * Copyright (c) 2008, Keith Lazuka, dba The Polypeptides
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *	- Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *	- Neither the name of the The Polypeptides nor the
 *	  names of its contributors may be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY Keith Lazuka ''AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL Keith Lazuka BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


#import <UIKit/UIKit.h>
#import <CoreComponent/KonyTypes.h>

@class BoxWidget;
@class KLDate;
@class CalendarCellSkin;
@class BoxModel;

@interface KLTile : UIControl {
    NSString *_text;
    CGColorRef _textTopColor;
    CGColorRef _textBottomColor;
    KLDate *_date;
	@public
	CalendarCellSkin* skin;
	NSInteger lineWidth;
	UIColor* lineColor;
	BOOL drawText;
    BOOL isTileActive;
    BOOL isValidDate;
    BOOL isCurrentMonth;
    NSString* skingID;
    KonyWidgetContentAlignment dayTextAlignment;
    BoxWidget *cellBox;
    BoxModel* cellModel;
}
@property(nonatomic,retain) BoxWidget *cellBox;
@property(nonatomic,retain)  BoxModel* cellModel;
@property(nonatomic,retain)     NSString* skingID;
@property(nonatomic, retain) NSString *text;
@property(nonatomic, retain) KLDate *date;
@property(nonatomic, assign) BOOL drawText;
@property(nonatomic,retain) UIColor* lineColor;
@property(nonatomic,assign)   BOOL isTileActive;
@property(nonatomic,assign)   BOOL isValidDate;
@property(nonatomic, assign) BOOL isCurrentMonth;
@property (nonatomic,retain) CalendarCellSkin* skin;
@property (nonatomic) KonyWidgetContentAlignment dayTextAlignment;

- (id)init;			// designated initializer

- (void)flash;		// flash the tile's background color temporarily

- (CGColorRef)textTopColor;
- (void)setTextTopColor:(CGColorRef)color;
- (CGColorRef)textBottomColor;
- (void)setTextBottomColor:(CGColorRef)color;
- (CGSize) suggestSizeForText: (NSString*) text withFont: (UIFont*) font  forWidth: (float) width;
- (float) caluclateXOffsetForWidgetWidth: (float) wx widgetAlignment: (KonyWidgetContentAlignment) align maxWidth: (float) maxw;
- (float) caluclateYOffsetForWidgetHeight: (float) wy widgetAlignment: (KonyWidgetContentAlignment) align maxHeight: (float) maxh;
@end



