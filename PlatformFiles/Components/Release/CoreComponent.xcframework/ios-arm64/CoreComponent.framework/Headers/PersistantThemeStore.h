//
//  PersistantThemeStore.h
//  VM
//
//  Created by User on 07/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Skin.h"
#import "Theme.h"
#import "JSONKit.h"


#define PERSISTANT_THEMESTORE_PATH @"Themes"
#define THEMEFILE_EXTENSION @"theme"


// As of now, parser is coupled with Theme/Skin/PersistantThemeStore (for ease), ideally it shouldnt.
@protocol ThemeDataParser <NSObject>

@required

-(SkinModel*) getSkin:(NSString*) aSkinId inTheme:(NSString*) aThemeId;

-(NSDictionary*) getAllSkinsInTheme:(NSString*) aThemeId;

-(BOOL) addSkin:(SkinModel*)aSkinModel inTheme:(NSString*) aThemeId;

-(BOOL) deleteSkin:(NSString*)aSkinId inTheme:(NSString*) aThemeId;

-(NSDictionary*) getMetaData:(NSString*) aThemeId;

-(BOOL) addMetaData:(NSDictionary*) aMetaData inTheme:aThemeIdentifier;

-(BOOL) addThemeDict:(NSDictionary*) aDict;

-(SkinModel*) skinModelFromJsonDict:(NSDictionary*) aDictionary skinIdentifier:(NSString*) aSkinIdentifier;

@end

//TODO : release cache on low memory.
@interface PersistantThemeStore :NSObject
{
@private
    id<ThemeDataParser> parser_;
    NSMutableDictionary *cache_;    /** themeIdentifier - skins */
}

-(SkinModel*) getSkin:(NSString*) aSkinIdentifier inTheme:(NSString*)aThemeIdentifier;

-(NSDictionary*) getThemeSkins:(NSString*) aThemeIdentifier;

-(NSArray*) getAllThemes;

-(BOOL) addSkin:(SkinModel*) aSkinModel inTheme:(NSString*) aThemeIdentifier;

-(BOOL) deleteSkin:(NSString*) aSkinIdentifier inTheme:(NSString*) aThemeIdentifier;

-(BOOL) addThemeToStore:(Theme*) aTheme;

-(BOOL) deleteThemeFromStore:(NSString*) aThemeIdentifier;

+(PersistantThemeStore*) defaultThemeStore;

-(NSDictionary*) getSkinDictForTheme:(NSString*)aThemeIdentifier;

-(NSMutableDictionary*) getThemesWithConstantsDictionary;

@end

@interface PersistantThemeStore (Private)

-(BOOL) isSkin:(NSString*) aSkinIdentiier presentInTheme:(NSString*) aThemeIdentifier;

-(NSString*) filePathForTheme:(NSString*) aThemeIdentifier;

+(NSString*) themeStorePath;

-(NSDictionary*) getMetaData:(NSString*) aThemeIdentifier;

-(BOOL) addMetaData:(NSDictionary*) aMetaData inTheme:(NSString*) aThemeIdentifier;

-(void) modifyDictWithProperWtype:(NSMutableDictionary*) aDict;

@end
