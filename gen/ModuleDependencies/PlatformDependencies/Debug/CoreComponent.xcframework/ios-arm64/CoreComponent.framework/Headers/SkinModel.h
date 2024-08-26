//
//  WidgetSkin.h
//  VM
//
//  Created by Sunil Phani Manne on 11/30/11.
//  Modified by Krishna Kiran Kasturi on 1/10/12.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"
#import "SkinUtils.h"
#import "Shadows.h"
#import "MSGradient.h"
#import "SkinManager.h"

#define SKINMODEL_SELECTOR @"skinModelWithIndentifier:"
#define DEFAULTSKINMODEL_SELECTOR   @"defaultModel"

@protocol SkinModelProtocol <NSObject>

@required

+(void) widgetRegistration;     /**< registers external Widget Type (String) with internal WidgetType (KonyWidgetType) */
+(SkinModel*) defaultModel; /**< define the default behavoir of the skin model */

@optional
+(void) propertyRegistration;

@end

/**
 *  @Brief SkinModel:	 
 *  Light weight proxy object for actual skin. Any skin related operations are done on this proxy object before they are actually applied on skin.
 *  Responsible for Creation,Updating and Destruction of SkinModel.
 *  Dependencies: None.
 */

@interface SkinModel: NSObject <SkinModelProtocol>
{

@private
    NSString *identifier;                       /**<  unique identifier for each skin        */
//    int backgroundColor;                   /**<  unsigned int from which  background color (UIColor) is constructed  */
    
    id backgroundColor;
    int backgroundTopGradientColor;        /**<  unsigned int from which  background top gradient color (UIColor) is constructed  */
    int backgroundBottomGradientColor;     /**<  unsigned int from which  background bottom gradient color (UIColor) is constructed  */
    KonyWidgetBackgroundStyle backgroundStyle;  /**<  Enum that defines background style  (Plain,VerticalGradient,VerticalSplit,Image,MSGradient )  */
    NSString* backgroundImage;                  /**<  String holding path? to background image  */
    id borderColor;                       /**<  from which  border color (UIColor or MSGradient) is constructed */
    float borderWidth;                          /**<  border width  */
    KonyWidgetBorderStyle borderStyle;          /**<  Enum that decides border style (Square,RoundedCorner,RoundedEdges)  */
    KonyWidgetBorderType borderType;          /**<  Enum that decides border type (OneColor or MSGradient)  */
    // Same Skin can be used for multiple widgets? if such need arises, this remains default type for this skin.
    KonyWidgetType widgetType;                  /**< Type of widget for which this skin might be used */
    NSString *bgType;                           /**< if image, backgroundstyle is image ingonre any other value (as per LuaTable Skin handling)  */
    KonyWidgetFontColorType fontColorType;   //to ascertain whether font is a color or msg
    MSGradientModel *fontGradient;
    ShadowsModel *shadow;
    float customBorderRadius;
    NSString *borderLineStyle;
    NSArray *borderLineStyleConfig;
}

///Background related skin properties
//@property (nonatomic, assign) int backgroundColor;
@property (nonatomic, retain) id backgroundColor;
@property (nonatomic, assign) int backgroundTopGradientColor;
@property (nonatomic, assign) int backgroundBottomGradientColor;
@property (nonatomic, assign) KonyWidgetBackgroundStyle backgroundStyle;
@property (nonatomic, retain) NSString* backgroundImage;
@property (nonatomic, assign) KonyWidgetType widgetType;
@property (nonatomic, retain) NSString *bgType;
@property (nonatomic, retain) ShadowsModel *shadow;


///Border related skin properties
@property (nonatomic, retain) id borderColor;
@property (nonatomic, assign) float borderWidth;
@property (nonatomic, assign) KonyWidgetBorderStyle borderStyle;
@property (nonatomic, assign) KonyWidgetBorderType borderType;
@property (nonatomic, assign) float customBorderRadius;
@property (nonatomic, retain) NSArray *borderLineStyleConfig;
@property (nonatomic, retain) NSString *borderLineStyle;

@property (nonatomic, retain) NSString *identifier;

@property (nonatomic, assign) int fontColor;
@property (nonatomic, retain) NSString *fontName;
@property (nonatomic, assign) NSUInteger fontSize;
@property (nonatomic, assign) NSInteger fontWeight;
@property (nonatomic, retain) NSString *fontStyle;
@property (nonatomic, assign) KonyWidgetFontColorType fontColorType;
@property (nonatomic, retain) MSGradientModel *fontGradient;
@property (class, nonatomic) BOOL isPMWidget;

+(BOOL) isPMWidget;
+(void) setIsPMWidget:(BOOL)isPMWidget_;

@end

@interface SkinModel (Factory)

+(void) registerFactory:(id)aClass forType:(KonyWidgetType) aWidgetType;
+(void) unregisterFactoryForType:(KonyWidgetType)aWidgetType;
+(SkinModel*) defaultSkinModelForType:(KonyWidgetType) aWidgetType;
+(SkinModel*) skinModelWithType:(KonyWidgetType) aWidgetType identifier:(NSString *)aIdentifier;

@end

@interface SkinModel (Private)

-(id) initWithIdentifier:(NSString*) aIdentifier;
-(NSArray*) getAllSkinModelProperties;
-(BOOL) updateProperties:(NSDictionary*)aPropertyValueDict;
+(SkinModel*) skinModelWithIndentifier:(NSString*)aIdentifier;

@end

@interface SkinModel (UnitTests)
@end
