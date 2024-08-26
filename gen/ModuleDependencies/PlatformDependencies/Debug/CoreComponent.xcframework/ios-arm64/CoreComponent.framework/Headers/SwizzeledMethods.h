//
//  SwizzeledMethods.h
//  VM
//
//  Created by Uday Bheema on 13/08/12.
//  Copyright (c) 2012 KONY SOLUTIONS. All rights reserved.
//


#import <Foundation/Foundation.h>

Class newClassMethodForObject(id object, SEL selector);

void newSetterMethodForObject(id object, SEL selector, id newVal);
void newSetterMethodForBool(id object, SEL selector, BOOL newVal);
void newSetterMethodForInt(id object, SEL selector, int newVal);
void newSetterMethodForUnsignedInt(id object, SEL selector, uint newVal);
void newSetterMethodForFloat(id object, SEL selector, float newVal);
void newSetterMethodForChar(id object, SEL selector, char newVal);
void newSetterMethodForDouble(id object, SEL selector, double newVal);
void newSetterMethodForLong(id object, SEL selector, long newVal);
void newSetterMethodForShort(id object, SEL selector, short newVal);


