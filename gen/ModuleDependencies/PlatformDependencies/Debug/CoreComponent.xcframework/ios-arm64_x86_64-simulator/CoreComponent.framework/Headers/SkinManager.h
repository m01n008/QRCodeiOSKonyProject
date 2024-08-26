//
//  SkinManager.h
//  VM
//
//  Created by Sunil Phani Manne on 12/4/11.
//  Modified by Krishna Kiran Kasturi on 1/10/12.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyManager.h"
#import "Skin.h"
#import "SkinModel.h"
#import "CallBack.h"

#define THEME_CHANGE_NOTIFICATION @"THEME_CHANGE_NOTIFICATION"

#define KONY_DEFAULTSKINS_FILENAME          @"DefaultSkins"
#define KONY_DEFAULTSKINS_FILENAME_IOS7     @"Default@iOS7"
#define KONY_DEFAULTSKINS_FILENAME_IOS6     @"Default@iOS6"


#define KONY_DEFAULTSKINS_EXTENSION @"skins"

#define KONY_DEFAULTTHEME_IDENTIFIER    @"default"
#define THEME_METADATA_KEY  @"metadata"

#define KONY_TEMPORARYSKINS_IDENTIFIER  @"__tempskin__"

#define THEMECONSTANTS_THEMESTYLES_KEY @"theme_styles"
#define THEMECONSTANTS_THEMESTYLES_COLOR_KEY @"color"
#define THEMECONSTANTS_THEMESTYLES_BACKGROUND_KEY @"background"
#define THEMECONSTANTS_THEMESTYLES_FONT_KEY @"font"
#define THEMECONSTANTS_THEMESTYLES_BORDER_KEY @"border"
#define THEMECONSTANTS_THEMESTYLES_TEXTSHADOW_KEY @"text_shadow"
#define THEMECONSTANTS_THEMESTYLES_SHADOW_KEY @"shadow"

/**
 *  @Brief  Any Skin container (Themes) should abide this protocol. They form chain of containers that respond to skin request.
 */
@protocol SkinContainerProtocol <NSObject>

@required
-(BOOL) addSkinToContainer:(Skin*) aSkin;
-(Skin*) skinInContainerWithID:(NSString*) aSkinID;
-(Skin*) skinInContainerWithID:(NSString*) aSkinID type:(KonyWidgetType) aWidgetType;
-(id<SkinContainerProtocol>) nextSkinContainer;

@end

@class Theme;

/**
 *  @Brief  SkinManager is (the only) interface for all skin/theming related functionality.
 *  
 *  Responsiblities:
 *      Maintains skins and themes that are used externally. Responsible for creation and destruction and editing.
 *   Colloborations:
 *      a) SkinModel 
 *      b) Skin 
 *      c) Theme
 *      d) PersistantThemeStore
 *  @Note   All skins that are used (in application scope) are from the store maintained/managed by SkinManager.
 */
@interface SkinManager : KonyManager // TODO:avoid usage of KonyManager as base class 
{ 
@private
    id<SkinContainerProtocol>   defaultTheme;       /**< Contains all the skins */
    NSMutableArray *skinContainerQueue;             /**< Contains queue (enqueue at index 0) of skincontainers to get Skin  */
    NSMutableDictionary *themeDictionary;           /**< in memory Themes   */
    NSMutableDictionary *themeConstantsDictionary;
}
-(NSMutableDictionary*)getThemeConstantsDictionary;

-(NSMutableDictionary*)getConstantsDictionary:(NSDictionary*)themeConstants;

-(void)setThemeConstantsDictionary:(NSMutableDictionary*)themeConstants;

/**   @brief  returns the default theme */
-(Theme*)defaultTheme;

/**  @brief  returns current theme (can be defaut theme)    */
-(Theme*) currentTheme;

/** checks if the theme is default theme or not.    */
-(BOOL) isDefaultTheme:(Theme*) aTheme;

/** makes the supplied skincontainer (theme) as the first container, so that fetching skins start from this skincontainer.  */
-(void) setFirstSkinContainer:(id<SkinContainerProtocol>)aSkinContainer;  

-(BOOL) registerWidgetType:(KonyWidgetType) aWidgetType skinType:(NSString*) aStringType;

-(BOOL) registerProperty:(NSString*) aInternalProperty skinProperty:(NSString*) aExternalProperty;

+ (void) updatePropertyInDefaultSkins:(NSString *)propertyName;

@end

/** Skin Model related functionality    */
@interface SkinManager(SkinModel) 

/** Returns skinModel for the given Identifier, if exists. */
-(SkinModel*) getSkinModelWithID: (NSString*) skinID forType:(KonyWidgetType) aWidgetType;

/** returns default SkinModel for the given widget type.    */
-(SkinModel*) getDefaultSkinModel:(KonyWidgetType) aWidgetType;

- (SkinModel*) getDefaultSkinModel:(KonyWidgetType) aWidgetType ofSkinType:(NSString*) aSkinType;

@end

/** Skin related functionality  */
@interface SkinManager (Skin)

/** returns Skin associated with given Identifier. (without updation)  */
-(Skin*) getSkinWithID: (NSString*) skinID forType:(KonyWidgetType) aWidgetType;

/** Returns skinModel for the given Identifier, if exists. (with choice to update) */
- (Skin*) getSkinWithID: (NSString*) skinID forType:(KonyWidgetType) aWidgetType forceUpdate:(BOOL) aForceUpdate;

/** returns default Skin for the given widget type. */
-(Skin*) getDefaultSkin:(KonyWidgetType) aWidgetType;

-(Skin*) getDefaultSkin:(KonyWidgetType) aWidgetType skinType:(NSString*) aSkinType;

-(BOOL) updateProperties:(NSDictionary *)properties forSkin:(NSString *)skinID;

@end

@interface SkinManager (Theme)

/** sets the given theme as the current theme.  */
-(BOOL) setCurrentTheme:(NSString *)aThemeIdentifier;

-(BOOL) setCurrentTheme:(NSString *)aThemeIdentifier onSuccess:(CallBack*) aSuccessCallback onError:(CallBack*) aErrorCallback;

-(BOOL) createThemeFromURL:(NSString*) aURL withIdentifier:(NSString*) 
                    aThemeIdentifier onSuccess:(CallBack*) aSuccessCallback onError:(CallBack*) aErrorCallback;

-(BOOL) createThemeFromJSONString:(NSString*)JSONString
                   withIdentifier:(NSString*)aThemeIdentifier
                        onSuccess:(CallBack*)aSuccessCallback
                          onError:(CallBack*)aErrorCallback;

/** creates a new theme from the info provided. Also takes additional input wether to replace the existing theme or valid in current session.   */
-(BOOL) createTheme:(NSDictionary*)aSkinModels replace:(BOOL) aReplace withIdentifier:(NSString*) aIdentifier;

/**
 *  @Brief  checks if there exists a theme with he given theme identifier.
 */
-(BOOL) isThemePresent:(NSString*) aThemeIdentifier;

/**
 *  @Brief  returns identifiers of all themes 
 */
-(NSArray*) allThemes;

/**
 *  @Brief  returns metadata of current theme
 */
/// *** needs clarity.
-(NSDictionary*) getCurrentThemeData;

-(NSString*) getCurrentThemeIdentifier;

/**
 *  @Brief  deletes theme with the given identifier
 */
-(BOOL) deleteTheme:(NSString*) aThemeIdentifier;

@end

@interface SkinManager (Private)

-(BOOL) validateNextSkinContainerOf:(id<SkinContainerProtocol>) aSourceContainer with:(id<SkinContainerProtocol>)aNextContainer;
+(Skin*) skinWithType:(KonyWidgetType)aWidgetType model:(SkinModel *)aModel;
+(SkinModel*) skinModelWithType:(KonyWidgetType)aWidgetType indentifier:(NSString *)aIdentifier;

@end


@interface SkinManager (UnitTests)

#pragma mark - Theme related API's

+(BOOL) Test_setCurrentTheme;

+(BOOL) Test_createTheme;

+(BOOL) Test_isThemePresent;

+(BOOL) Test_allThemes;

+(BOOL) Test_getCurrentThemeData;

+(BOOL) Test_deleteTheme;

+(BOOL) Test_currentTheme;

+(BOOL) Test_getSkin;

+(BOOL) Test_getSkinModel;

+(BOOL) Test_defaultSkinWithType;

+(BOOL) Test_defaultSkin;

+(BOOL) Test_defaultSkinModel;

+(BOOL) Test_skinFactoryMethods;

+(BOOL) Test_negativeTests;

+(void) skinTests;

@end
