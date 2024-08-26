//
//  Theme.h
//  VM
//
//  Created by Sunil Phani Manne on 12/7/11.
//  Modified by Krishna Kiran Kasturi on 1/10/12.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SkinManager.h"

/**
 *  @brief  Theme is collection of skins. 
 *  Responsible for:
 *      a) storing and retriving skins (as it implements SkinContainerProtcol).
 *      b) load and unload skins from Persistant Theme Store.
 *      c) save and delete skins to Persistant Theme Store.
 *   Colloborations:
 *      a) Skin
 *      b) SkinManager (owns default theme).
 *      c) Persistant Theme Store
 *
 */
@interface Theme : NSObject <SkinContainerProtocol> 
{
@private
    NSString *identifier;                           /**< every theme is uniquely identified by its identtifier   */
    NSDictionary *metaData;                         /**< metaData associated with theme */
    
@protected
    NSMutableDictionary* privateSkinsDict;          /**< Store where skins are stored */   
    id<SkinContainerProtocol> nextSkinContainer;    /**< next probable skin container to look for if the current skin container fails */
}

/**
 *  @brief  set the NextSkinContainer for the current skinContainer, which is used to retieve the skin if not present in current skinContainer.
 */
-(void) setNextSkinContainer:(id<SkinContainerProtocol>) aNextSkinContainer;    // Ideally this should be handled at base class level (if one exists).

/**
 *  @brief  init method.
 */ 
-(id) initWithIdentifier:(NSString*) themeIdentifier;

/**
 *  @brief  return unique theme identifier
 */
-(NSString*) getThemeIdentifier;

/**
 *  @brief  returns metadata , if present.
 */ 
-(NSDictionary*) getMetaData;

/**
 *  @brief  sets metaData for Theme
 */
-(void) setMetaData:(NSDictionary*) aMetaData;

@end


@interface Theme (Private)

/**
 *  @brief  loads all skins (from persistant store) into current theme.
 */
-(BOOL) loadTheme;

/**
 *  @brief  loads skin with the given identifier, if present in corresponding Theme Persistant store.
 */
-(BOOL) loadSkin:(NSString*) aSkinIdentifier type:(KonyWidgetType) aWidgetType;

/**
 *  @brief  unloads skin with the given identifier, if present in Theme.
 */
-(BOOL) unloadSkin:(NSString*) aSkinIdentifier;

/**
 *  @brief  saves skin with the given identifier, in Theme persistant store.
 */
-(BOOL) saveSkin:(NSString*) aSkinIdentifier replace:(BOOL) aReplace;

/**
 *  @brief  deletes skin with the given identifier, in Theme persistant store.
 */
-(BOOL) deleteSkin:(NSString*) aSkinIdentifier;

/**
 *  @brief  initialization of application default theme (skin manager owns it).
 */
-(id) initDefaultTheme;

/**
 *  loads meta data associated with the Theme (if any).
 */
-(void) loadMetaData;

/**
 *  returns all skins that are loaded for this theme.
 */
-(NSArray*) getLoadedSkins;

-(Skin*) getLoadedSkin:(NSString*) aSkinId forType:(KonyWidgetType) aWidgetType;
-(BOOL) loadSkin:(NSString*) aSkinIdentifier;


@end
