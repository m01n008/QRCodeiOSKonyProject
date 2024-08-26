    //
//  SkinUtils.h
//  VM
//
//  Created by User on 20/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//



#import <Foundation/Foundation.h>
#import "KonyTypes.h"
#import "objc/runtime.h"

@class SkinModel;
@class Skin;

#define SKIN_GROUPEDTEXTURE         @"KonyCustomGroupedTexture"
#define SKIN_GROUPEDTABLEVIEW       @"KonyCustomGroupedTableView"


#define ext_prop(a) EXT_##PROP_##SKIN_##a
#define ext_val(a)  EXT_##VAL_##SKIN_##a
  
#define SKIN_INT_TO_UICOLOR(c)	[ UIColor colorWithRed:((c>>24)&0xFF)/255.0 \
green:((c>>16)&0xFF)/255.0 \
blue:((c >>8)&0xFF)/255.0 \
alpha: (1.0 - ((c)&0xFF)/100.0) ];


#define SKIN_UICOLOR_TO_INT(c)

/** External skin properties */
#define EXT_PROP_SKIN_BGCOLOR               @"background_color"
#define EXT_PROP_SKIN_BGGRADTOPCOLOR        @"background_gradient_top_color"
#define EXT_PROP_SKIN_BGGRADBOTTOMCOLOR     @"background_gradient_bottom_color"
#define EXT_PROP_SKIN_BGIMAGE               @"background_image"
#define EXT_PROP_SKIN_BGSTYLE               @"background_style"
#define EXT_PROP_SKIN_BORDERSTYLE           @"border_style"
#define EXT_PROP_SKIN_BORDERTYPE            @"border_type"
#define EXT_PROP_SKIN_FONTNAME              @"font_name"
#define EXT_PROP_SKIN_FONTWEIGHT            @"font_weight"
#define EXT_PROP_SKIN_FONTSIZE              @"font_size"
#define EXT_PROP_SKIN_FONTSTYLE             @"font_style"
#define EXT_PROP_SKIN_FONTCOLOR             @"font_color"
//#define EXT_PROP_SKIN_FONTCOLORTYPE         @"font_color_type"
#define EXT_PROP_SKIN_BORDERCOLOR           @"border_color"
#define EXT_PROP_SKIN_BORDERWIDTH           @"border_width"
#define EXT_PROP_SKIN_BORDER_LINE_STYLE     @"border_line_style"
#define EXT_PROP_SKIN_BORDER_LINE_STYLE_CONFIG     @"border_line_style_config"
#define EXT_PROP_SKIN_SHADOWCOLOR           @"shadowcolor"
#define EXT_PROP_SKIN_SHADOWOFFSETX         @"shadowoffsetx"
#define EXT_PROP_SKIN_SHADOWOFFSETY         @"shadowoffsety"
#define EXT_PROP_SKIN_SHADOW                @"shadow"
#define EXT_PROP_SKIN_TEXTSHADOW            @"text_shadow"
#define EXT_PROP_SKIN_CONTENTALIGNMENT      @"contentAlignment"
#define EXT_PROP_SKIN_TRANSPARENCY          @"transparency"
#define EXT_PROP_SKIN_BGTYPE                @"bg_type"
#define EXT_PROP_SKIN_LINECOLOR             @"lineColor"
#define EXT_PROP_SKIN_RIGHTFONTCOLOR        @"right_font_color"
#define EXT_PROP_SKIN_LEFTFONTCOLOR         @"left_font_color"
#define EXT_PROP_SKIN_LEFTBGIMAGE           @"left_background_image"
#define EXT_PROP_SKIN_RIGHTBGIMAGE          @"right_background_image"
#define EXT_PROP_SKIN_LEFTBGCOLOR           @"left_background_color"
#define EXT_PROP_SKIN_RIGHTBGCOLOR          @"right_background_color"
#define EXT_PROP_SKIN_THUMBCOLOR            @"thumb_color"
#define EXT_PROP_SKIN_WIDGETTYPE            @"wtype"
#define EXT_PROP_SKIN_WIDGETTYPE2            @"wType"
#define EXT_PROP_SKIN_CUSTOMBORDERRADIUS    @"border_radius"
#define EXT_PROP_SKIN_USENATIVE             @"use_native"
#define EXT_PROP_SKIN_TINTCOLOR             @"tint_color"

#define EXT_PROP_SKIN_DAYSFONTCOLOR            @"days_font_color"
/* external skin values     */
#define EXT_VAL_SKIN_FONTBOLD                       @"bold"
#define EXT_VAL_SKIN_FONTNORMAL                     @"normal"
#define EXT_VAL_SKIN_FONTLARGE                      @"large"
#define EXT_VAL_SKIN_FONTMEDIUM                     @"medium"
#define EXT_VAL_SKIN_FONTITALIC                     @"italic"
#define EXT_VAL_SKIN_FONTUNDERLINE                  @"underline"
#define EXT_VAL_SKIN_BORDERSTYLESQUARE              @"plain"
#define EXT_VAL_SKIN_BORDERSTYLEROUNDCORNER         @"rc"
#define EXT_VAL_SKIN_BORDERSTYLEROUNDEDGE           @"cr"  
#define EXT_VAL_SKIN_BORDERSTYLECUSTOMROUNDCORNER   @"custom"
#define EXT_VAL_SKIN_BGSTYLEPLAIN                   @"plain"
#define EXT_VAL_SKIN_BGSTYLEVERTICALGRADIENT        @"vg"
#define EXT_VAL_SKIN_BGSTYLEVERTICALSPLIT		    @"vs"
#define EXT_VAL_SKIN_BGSTYLEMSGRADIENT		        @"linear"
#define EXT_VAL_SKIN_BGSTYLEIMAGE                   @"image"
#define EXT_VAL_SKIN_BORDERTYPEONE                      0
#define EXT_VAL_SKIN_BORDERTYPEMSG                      1
//#define EXT_VAL_SKIN_FONTCOLORTYPEONE                   0
//#define EXT_VAL_SKIN_FONTCOLORTYPEMSG                   1
//#define SKIN_BORDERSTYLEROUNDEDEDGE               @"rounded_edge" //???

/* external widget types    */
#define EXT_VAL_SKIN_WIDGETARRENDERER                  @"ARRenderer"
#define EXT_VAL_SKIN_WIDGETLABEL                        @"Label"
#define EXT_VAL_SKIN_WIDGETBUTTON                       @"Button"
#define EXT_VAL_SKIN_WIDGETCANVAS                       @"Canvas"
#define EXT_VAL_SKIN_WIDGETRICHTEXT                     @"RichText"
#define EXT_VAL_SKIN_WIDGETRADIOBTNGRP                  @"RadioButtonGroup"
#define EXT_VAL_SKIN_WIDGETTEXTAREA                     @"TextArea"
#define EXT_VAL_SKIN_WIDGETTEXTBOX                      @"TextBox"
#define EXT_VAL_SKIN_WIDGETHIMGSTRIP                    @"HImageStrip"
#define EXT_VAL_SKIN_WIDGETLISTBOX                      @"ListBox"
#define EXT_VAL_SKIN_WIDGETDATAGRID                     @"DataGrid"
#define EXT_VAL_SKIN_WIDGETCALENDAR                     @"Calendar"
#define EXT_VAL_SKIN_WIDGETCALENDARCELL                 @"Grid Calendar Cell Skin"
#define EXT_VAL_SKIN_WIDGETGRIDCALENDAR                 @"Grid Calendar"
#define EXT_VAL_SKIN_WIDGETSEGMENT                      @"Segment2"
#define EXT_VAL_SKIN_WIDGETOLDSEGMENT                   @"Segment"
#define EXT_VAL_SKIN_WIDGETCHECKBOXGRP                  @"CheckBoxGroup"
#define EXT_VAL_SKIN_WIDGETTAB                          @"Tab"
#define EXT_VAL_SKIN_WIDGETTABPANE                      @"TabPane"
#define EXT_VAL_SKIN_WIDGETLINK                         @"Link"
#define EXT_VAL_SKIN_WIDGETCAMERA                       @"Camera"
#define EXT_VAL_SKIN_WIDGETSLIDER                       @"Slider"
#define EXT_VAL_SKIN_WIDGETHBOX                         @"HBox"
#define EXT_VAL_SKIN_WIDGETVBOX                         @"VBox"
#define EXT_VAL_SKIN_WIDGETFORM                         @"Form"
#define EXT_VAL_SKIN_WIDGETPHONE                        @"Phone"
#define EXT_VAL_SKIN_WIDGETLINE                         @"Line"
#define EXT_VAL_SKIN_WIDGETCOMBOBOX                     @"ComboBox"
#define EXT_VAL_SKIN_WIDGETGROUP                        @"GroupWidget"
#define EXT_VAL_SKIN_WIDGETSCROLLBOX                    @"ScrollBox"
#define EXT_VAL_SKIN_WIDGETTEXTAREA2                    @"TextArea2"
#define EXT_VAL_SKIN_WIDGETTEXTBOX2                     @"TextBox2"
#define EXT_VAL_SKIN_WIDGETDATAGRID                     @"DataGrid"
#define EXT_VAL_SKIN_WIDGETSWITCH                       @"Switch"
#define EXT_VAL_SKIN_WIDGETIMAGEGALLERY                 @"ImageGallery"
#define EXT_VAL_SKIN_WIDGETOLDIMAGEGALLERY              @"OldImageGallery"
#define EXT_VAL_SKIN_WIDGETIMAGESTRIP                   @"HImageStrip"
#define EXT_VAL_SKIN_WIDGETOLDIMAGESTRIP                @"OldImageStrip"
#define EXT_VAL_SKIN_WIDGETGENERICSKIN                  @"Common"
#define EXT_VAL_SKIN_WIDGETBADGE                        @"Badge"
#define EXT_VAL_SKIN_WIDGETIMAGE                        @"Image2"
#define EXT_VAL_SKIN_WIDGETPICKERVIEW                   @"PickerView"
#define EXT_VAL_SKIN_WIDGETINPUTACCESSORYVIEWSKIN       @"InputAccessoryView"
#define EXT_VAL_SKIN_WIDGETAPPMENU                      @"AppMenu"
#define EXT_VAL_SKIN_WIDGETTITLEBAR                     @"TitleBar"
#define EXT_VAL_SKIN_WIDGETPICKERVIEW                   @"PickerView"
#define EXT_VAL_SKIN_WIDGETFLEXCONTAINER                @"FlexContainer"
#define EXT_VAL_SKIN_WIDGETFLEXSCROLLCONTAINER          @"FlexScrollContainer"
#define EXT_VAL_SKIN_WIDGETWEB                          @"Web"
#define EXT_VAL_SKIN_WIDGETMAP                          @"Map"
#define EXT_VAL_SKIN_WIDGETNATIVECONTAINER              @"NativeContainer"
#define EXT_VAL_SKIN_WIDGETCOLLECTIONVIEW               @"CollectionView"
#define EXT_VAL_SKIN_WIDGETPDFVIEW                      @"PDFView"
#define EXT_VAL_SKIN_WIDGETSIGNINWITHAPPLE              @"SignInWithApple"

// enum for kony ios system font
// All the contract based system fonts b/w iOS & VIZ
// JIRA Ticket: MADPIOS-2186
// Epic Link: APPPLT-4463
// Wiki: https://konysolutions.atlassian.net/wiki/spaces/MADP/pages/157483111/Default+Fonts+for+the+native+platforms
typedef NS_ENUM(NSInteger, KonySystemFont) {
    KonySystemFontRegular,
    KonySystemFontBold,
    KonySystemFontItalic,
    KonySystemFontFallbackDefault
};

@interface SkinUtils : NSObject

+(BOOL) registerWidgetType:(KonyWidgetType) aWidgetType string:(NSString*) aString;

+(BOOL) registerProperty:(NSString*) aInternalProperty externalProperty:(NSString*) aExternalProperty;

+(KonyWidgetType) getWidgetType:(NSString*) aString;

+(NSString*) getWidgetTypeString:(KonyWidgetType) aWidgetType;

+(void) registerDefaultSkin:(NSString*) aSkinIdentifier skinType:(NSString*) aSkinType widgetType:(KonyWidgetType) aWidgetType;

+ (id)getValueForThemeConstant:(id) val;

+ (BOOL) isThemeConstant:(id) val;

+ (NSDictionary *) getBorderPropertiesFromDictionary: (NSDictionary*) borderProperties;

+ (NSDictionary *) getBgPropertiesFromDictionary: (NSDictionary*) backgroundProperties;

+ (NSMutableArray *) getValueOfColorConstantInArray: (NSArray*) colorArray;

+ (NSMutableDictionary *) getValueOfMultiStepColorConstantInDictionary: (NSDictionary*) properties;

+ (NSDictionary *) getBgPropertiesFromThemeDictionary: (NSDictionary*) backgroundProperties;

+ (NSDictionary *) getBorderPropertiesFromThemeDictionary: (NSDictionary*) borderProperties;

+ (void) exchangeKey:(NSString *)key withKey:(NSString *)newKey inMutableDictionary:(NSMutableDictionary *)dict;

+ (NSDictionary *) getFontPropertiesFromThemeDictionary: (NSDictionary*) fontProperties;

+ (NSDictionary *) getShadowPropertiesFromThemeDictionary: (NSDictionary*) shadowProperties;

+ (NSDictionary*) getSkinPropertiesFromDictionary:(NSDictionary*) arguments ForKey:(NSString*) key;

+(NSDictionary*) getSkinPropertiesFromDictionary:(NSDictionary*) dict;

@end


@interface SkinUtils (Private)

+(void) constructPropertyLists;

+(void) constructTypeLists;

+(NSArray*) getAllProperties:(id) cls;

+(NSDictionary*) getDictionaryForSkinModel:(SkinModel*) aModel;

+(BOOL) populateSkinModel:(SkinModel*) aSkinModel FromDict:(NSDictionary*) aDictionary;

+(BOOL) populateSkinModel:(SkinModel*) aSkinModel fromModel:(SkinModel*) aSourceModel;

+(NSMutableDictionary*) populateSkinPropertiesFromThemeDict:(NSDictionary*) aDictionary;

+(void) updateSkin:(Skin*) aSkin;

+(Skin*) defaultSkinForClass:(id) aSkinClass withWidgetType:(KonyWidgetType) aWidgetType;

+(Skin*) defaultSkinOfSkinType:(NSString*) aSkinType widgetType:(KonyWidgetType) aWidgetType;

+(NSString*) getDefaultSkinIdentifierFor:(KonyWidgetType) aWidgetType skinType:(NSString*) aSkinType;

+(BOOL) registerSkinModel:(id) aSkinModelClass forSkin:(id) aSkinClass;

+(BOOL) isSkinModelValid:(id) aSkinModelClass;

+(BOOL) isSkinValid:(id) aSkinClass;

+(void)registerMissingSkinTypes;

@end
