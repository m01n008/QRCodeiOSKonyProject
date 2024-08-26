//
//  KonyAppDelegateClassFactory.m
//  VM
//
//
//

#import "KonyAppDelegateClassFactory.h"

#import "VMAppDelegate.h"

@implementation KonyAppDelegateClassFactory

+(Class)appDelegateClass
{
    return [VMAppDelegate class];
}

@end
