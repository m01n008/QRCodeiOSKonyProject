//
//  Skin.h
//  VM
//
//  Created by Sunil Phani Manne on 12/4/11.
//  Modified by Krishna Kiran Kasturi on 1/10/12.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SkinModel.h"
#import "MSGradient.h"
#import "Shadows.h"

#define SKIN_SELECTOR @"skinWithModel:"
#define DEFAULTSKIN_SELECTOR   @"defaultSkin"

@protocol SkinProtocol <NSObject>

@required

+(Skin*) defaultSkin;           /**< provides skin constructed from its corresponding default skin model  */
+(BOOL) skinmodelRegistration;  /**< registers corresponding skinmodel for this skin   */

@optional

+(Skin*) defaultSkinOfType:(NSString*) aSkinType;   /**< provides default Skin for requested skintype   */
-(void) handleSkinUpdateFor:(NSString*) aModelProperty value:(id) aValue;  /**< Individual widget skins will override this to populate skin from skinmodel for any additional properties that the widget skin registers for */
@end


/**
 *  @Brief  Skin Objects define the complete skinning related aspects applied to any View. 
 *      Responsible for creation,updating and destruction of Skin objects. 
 *      Dependencies: SkinModel.
 *
 *  	@Note   :Any Skin related operations happen through its proxy (SkinModel) that is contained in skin. A Skin is uniquely identified by a unique Id.
 */
@interface Skin : NSObject <SkinProtocol>
{

@private
    SkinModel* skinModel_;                      /**<    */
//    UIColor* backgroundColor;                   /**<    */
    id backgroundColor;                   /**<    */
    UIColor* backgroundTopGradientColor;        /**<    */    
    UIColor* backgroundBottomGradientColor;     /**<    */
    KonyWidgetBackgroundStyle backgroundStyle;  /**<    */
    NSString* backgroundImage;                   /**<    */
    //UIColor* borderColor;                       /**<    */
    id borderColor;                       /**<    */
    float borderWidth;                          /**<    */
    KonyWidgetBorderStyle borderStyle;          /**<    */
    KonyWidgetBorderType borderType;
    KonyWidgetFontColorType fontColorType;
    MSGradient *fontGradient;
    Shadows *shadow;
    float customBorderRadius;
    NSArray *borderLineStyleConfig;
    NSString *borderLineStyle;
}

///Background related skin properties
//@property (nonatomic, retain) UIColor *backgroundColor;
@property (nonatomic, retain) id backgroundColor;
@property (nonatomic, retain) UIColor *backgroundTopGradientColor;
@property (nonatomic, retain) UIColor *backgroundBottomGradientColor;
@property (nonatomic, assign) KonyWidgetBackgroundStyle backgroundStyle;
@property (nonatomic, retain) NSString  *backgroundImage;
@property (nonatomic, retain) UIImage  *tintedImage;
@property (nonatomic, retain) Shadows *shadow;


///Border related skin properties
@property (nonatomic, retain) id borderColor;
@property (nonatomic, assign) float borderWidth;
@property (nonatomic, assign) KonyWidgetBorderStyle borderStyle;
@property (nonatomic, assign) KonyWidgetBorderType borderType;
@property (nonatomic, assign) float customBorderRadius;
@property (nonatomic, retain) NSArray *borderLineStyleConfig;
@property (nonatomic, retain) NSString *borderLineStyle;
@property (nonatomic) KonyWidgetBorderLineStyle borderLineStyleVal;

///Font related
@property (nonatomic, retain) UIFont   *font;
@property (nonatomic, retain) NSString *fontStyle;
@property (nonatomic, retain) UIColor  *fontColor;
@property (nonatomic, assign) KonyWidgetFontColorType fontColorType;
@property (nonatomic, retain) MSGradient *fontGradient;
@property (nonatomic, retain) NSString *bgType;

#pragma mark - Skin API
-(NSString*) skinIdentifier;
+(Skin*) defaultSkin;

-(void)setInternalPropertyWithExternalValue:(NSString *)property value:(id)value;

@end

#pragma mark - Skin(Factory)
@interface Skin (Factory)

+(void) registerFactory:(id) aClass forType:(KonyWidgetType)aWidgetType;
+(void) unregisterFactoryForType:(KonyWidgetType) aWidgetType;
+(Skin*) defaultSkinForType:(KonyWidgetType) aWidgetType;
+(Skin*) skinWithType:(KonyWidgetType)aWidgetType model:(SkinModel *)aModel;

@end

#pragma mark - Skin(Private)
@interface Skin(Private)

-(id) initWithModel:(SkinModel*)aSkinModel;
-(NSArray*) getAllSkinProperties;
-(SkinModel*) getSkinModel;
-(void) updateSkin;
+(Skin*) skinWithModel:(SkinModel*) aModel;

@end

#pragma mark - Skin(UnitTests)
@interface Skin(UnitTests)
@end
