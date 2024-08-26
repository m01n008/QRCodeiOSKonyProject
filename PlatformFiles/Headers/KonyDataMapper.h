//
//  DMVCoordinator.h
//  WatchAppDemo
//
//  Created by Hareesh on 16/05/15.
//  Copyright (c) 2015 Kony labs. All rights reserved.
//
/**
 *  KonyDataMapper is used to map values to oulets.
 *  KonyDataMapper object must be created using initWithObject: it expects an object to which the outlets values to be mapped. Trying to initialize using init raises an exception.
 *  To map values to oulets use updateWidgetPropertiesFromDictionary: which expects a dictionary
 *  Dictionary must be specified in the following pattern.
 *  1.Keys in dictionary are oulets in the object that is passed during object creation i.e., to initWithObject:
 *  2.Values must be dictionary with keys as properties of oulet and their cooresponding values.
 *  Format and type of values for widgets are given below.
 *  
 *
 *  WKInterfaceObject is super class for all widgets supperted by iWatch. It holds all the information of widget dimension and visibility.
 *  Dimensions like "width" and "height" accept float value. To set opacity use "alpha" it also accept float value. To set visibility use "visible" it takes a boolean value.
 *  Every widget inherites these values and can specify these values in cooresponding widget value dictionary.
 *  
 *  WKInterfaceLabel used to display the text information on screen. To add styles dynamically use attributed string.
 *  Values it support are :
                            Text,
                            Color and
 *  Text is simple string which will be displayed using system default font, scale and alignment.
 *  To use custom values for text then assign them attributed text.
 *  The default label color is white. To give custom value assign hexadecimal string to color key.
 *
 *  Sytax to be followed in dictionary
 *
 *  <labelOuletName> : {

                        <width>           : <float value as string or number object>,
                        <height>          : <float value as string or number object>,
                        <alpha>           : <float value as string or number object>,
                        <visible>         : <bool value as string or number object>,
 
                        <text>            : <LabelName as string>, //"label"
                        <textColor>           : <color in hexadecimal string>, //"#5236ce"
                        }
 *     ***** or ****
 *  <labelOutletName> : <labelName as string>
 *
 *  First four values represent the super class i.e., WKInterfaceObject values 
 *  The order of keys are not manditory and use only required key values pairs.
 *
 *  WKInterfaceButton object represents a tappable area on the screen. Button can have a title, color and a background image. In addition to styling button support actions. They can be used to call method associated to them on tap.
 *  Button can be enabled and disabled dynamically and styles for title can be given using attributed title.
 *  Values it support are:
                        Title,
                        Background Color,
                        Background Image and 
                        Enabled
 *  Syntax to be followed in dictionary
 *
 *  <buttonOuletName> : {
 
                        //WKInterfaceObject values for refernce see label syntax
 
                        <title>            :   <title as string>,
                        <backgroundColor>  :   <color in hexadecimal string>, //"#5236ce"
                        <backgroundImage>  :   <image name as string>, //"imageName"
                        <enabled>          :   <boolean value>
                        }
 *  **** or ****
 *  <buttonOuletName> : <button title as string>
 *  The order of keys are not manditory and use only required key values pairs.
 *
 *  WKInterfaceSlider object is like a volume controller we have plus and minus signs to adjust the slider. It increment using float values. Slider can be configured by setting value, color and number of steps. Value take float values from 0 to 1.0 and number of steps takes a positive integer can be used in incrementing the slider value. Slider color can be configured and it can be enabled or disabled dynamically.
 *  Number of steps must be positive Integers . Negative value causes undefined behaviour.
 *  Values it support are:
 *                      value,
                        color,
                        number of steps and 
                        enabled
 *  Syntax to be followed in dictionary
 *
 *  <sliderName> : {
                
            //WKInterfaceObject values for refernce see label syntax

            <value>         : <positive float value as string or number object>,
            <color>         : <color in hexadecimal string>,         //"#5236ce"
            <numberOfSteps> : <positive integer as string or number onbject>,
            <enabled>       : <bool value as string or number object>
                }
 *  giving negative values to number of steps and value doesn't raise any exception but results in undefined behaviour.
 *  The order of keys are not manditory and use only required key values pairs.
 *  
 *  WKInterfaceTable is used to represent single column table interface. Every row in tabel is a class which is subclass of NSObject and contains Oulets in it. Rows can be created at a single shot or they can be insertes at a particular positions and they can also remove at specified indices.
 *  Values it support are:
            <tableName> : {
             <data> : {
                    <controller>:<controller name as string> //must
                    
                     <rows> : //array of dictionaries
                            [{},{},...] //each dictioanry represents a row
 
                    **** or ****
 
                    <rowActions> : //dicionary
                            {
                                <insert> : //array of dictionaries
 
                                                [{<index>:<index number>,<data>:{}}, ...],
                                <remove> : //array of indexes to be removed
                                                [...]
 
                            }
                        }
                }
 *  index value ranges from 0 to number of rows in table.
 *  table gives a dictionary containing controller for row and data dictionary for each widget
 *  To initialize a group of rows at a time then we use "rows" key to mention array of widget dictionaries.
 *  To insert rows at different positions or delete different rows use rowActions.
 *  rowActions key gives a dictionary which contains insert and remove keys.
 *  insert key gives an array of dictionaries each contains an index and data of widget.
 *  remove key gives an array of indexes to be removed.
 *  
 *  WKInterfaceImage is used to display images and set tint color.Images must be in ImageAssests and name of image is used in dictionary.
 *  Values it support are:
 *      ImageName and
 *      Tint color
 *  Syntax to be followed in dictionary
 *              <imageOuletName> : {
                        //WKInterfaceObject values for refernce see label syntax
                                    <imageName> : <imageName as string>,
                                    <tintColor> : <color in hexadecimal string>    }
 *
 *  WKInterfaceSwitch is used to toggle button but in addition watch support label for switch. Switch can be configured by setting its color and text. Text can be normal or attributed text.
 *  Values it support are:
                title,
                color and
                state
 *  Syntax to be followed in dictionary
 *              <switchOuletName> : {
                    //WKInterfaceObject values for refernce see label syntax
                                <title>          : <title name as string>,
                                <color>          : <color in hexadecimal string>,
                                <state>          : <bool value as string or number object>
                                }
 *  The order of keys are not manditory and use only required key values pairs.
 *  
 *  WKInterfaceSeparator is used to separate widgets.Separators can have diifernt colors.
 *  Syntax in dictionary
                <separatorOuletName> : {
                    //WKInterfaceObject values for refernce see label syntax
                                    <color> : <color in hexadecimal string>
 *                                          }
 *  
 *  WKIntefaceGroup is used to group one or more widgets. Groups can be configured by setting image,color and cornerRadius.
 *  Syntax to be followed in dictionary
                    <groupOutletName> : {  
                    //WKInterfaceObject values for refernce see label syntax
                        <backgroundImage>     : <imageName as String>,
                        <backgroundColor>         : <color in hexadecimal string>,
                        <cornerRadius>  : <float value as string or number object>
                        }
 *  The order of keys are not manditory and use only required key values pairs.
 *
 *  WKInterafceDate is used to display data or time. Date can be configured by TimeZone and Calender. Date label's color can also be changed dynamically.
 *  TimeZones are specified as string which are supported by ios. Ex:"Asia/Kolkata"
 *  Calendar are specied as string.Supported calendar formats are
 
                     GregorianCalendar
                     BuddhistCalendar
                     ChineseCalendar
                     HebrewCalendar
                     IslamicCalendar
                     IslamicCivilCalendar
                     JapaneseCalendar
                     RepublicOfChinaCalendar
                     PersianCalendar
                     IndianCalendar

 *  Syntax to be followed in dictionary
 *  <dateOutletName> : {
            //WKInterfaceObject values for refernce see label syntax
                        <textColor>     : <color in hexadecimal string>,
                        <timeZone>  : <timeZone as string>,
                        <calendar>  : <calendar as string>
                        }
 *  The order of keys are not manditory and use only required key values pairs.
 *
 *  WKInterfaceTimer is used for countdown timer. Their is no delegate for timer. To know when timer reaches 0 user need to run a separate timer alongside of timer.
 *  Timer can be stop/start and countdown is automatically calculated from date.
 *  Timer reaches 0 then it starts counting up.
 *  Syntax to be followed in dictionary
 *  <timerOutletName> : {
                //WKInterfaceObject values for refernce see label syntax
                        <date>  : <date as string with format mm/dd/yyyy hh:mm a>,
                        <textColor> : <color in hexadecimal string>,
                        <action>: <start/stop as string>
                        }
 *  The order of keys are not manditory and use only required key values pairs.
 *
 *  WKInterfaceMap is used to represent a map on watch.Maps must be dynamically configured.Map support geograhic location,annotation with image and pincolors.Map can have more than one annotations.
 *  Values supperted by map are
 *                  region,
                    mapRect,
                    annotationWithImage and
                    annotationWithPinColor
 *  Pin color are restricted to only 3 color as of now. They are red, green and purple.
 *  Syntax to be followed in dictionary
 *  <mapOuletName> : { 
                    //WKInterfaceObject values for refernce see label syntax
                      <region>      : <array of 4 double values latitude, longitude, spanNorth,     spanSouth>,
                      <mapRect>     : <array with 4 double values x, y, width and height>,
                      <annotation>  : //dictionary
                                    {
                                    <location>  : <array of 2 double values lat and long>,//must
                                    <imageName> : <imageName as string>, //optional
 
                                    <offset>    : <array of 2 float values>,
                                        **** or ****
                                    <pinColor>  : <color as string (red/green/purple case sensitive) >
 
                                    <remove>   : <bool value as string or number object>
                                    }
                        }
 * In annotation:image:offset or annotation:pinColor isspecified
 * Offset is must to display custom pin. If pin image name is not given then red pin is used.
 * remove takes boolean value if it is yes then it removes all annotations.
 * The order of keys are not manditory and use only required key values pairs.
 *
 
 *  summary of valid values supprted in iWatch:
 
 *  bool value accept string as yes (case insensitive) or a integer.
 *  Integer value accept an integer string or an integer.
 *  float value accept an float string or an float.
 *  string can be string or a number.
 *  color accept a hexString. Invalid hexString causes undefined behaviour.
 *  TimeZone must be a valid TimeZone string.
 *  Calendar must be a calendar ID.
 *  Date must be in "mm/dd/yyyy hh:mm a" format.('a' indicates am/pm)
 *  pincolor must be "red","green","purple" (case sensitive).
 *  action in timer must be start/stop (case sensitive).
 
 *  Note: all key specified in syntax are used as they are with out <>. Values as their type without <>
 */
#import <Foundation/Foundation.h>

@interface KonyDataMapper : NSObject
@property id object;
- (instancetype)initWithObject:(id)object;
- (void)updateWidgetPropertiesFromDictionary:(NSDictionary *)dictionary;
- (id) getAssociatedData;
@end
