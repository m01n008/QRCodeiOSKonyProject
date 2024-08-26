#import <objc/runtime.h>
#import <objc/message.h>
#import <dlfcn.h>

#import "ClassExtension.h"
#import "BridgeSupport.h"
#import <NFIUtility/PointerSupport.h>
#import <NFIUtility/CallbackSupport.h>


NSString* const JSBInstanceMembersKey = @"instanceMembers";
NSString* const JSBStaticMembersKey = @"staticMembers";

NSString* propertyNameFromSelector(SEL selector)
{
    NSArray* split = [NSStringFromSelector(selector) componentsSeparatedByString: @":"];
    NSMutableString* propertyName = [NSMutableString string];
    for (NSInteger i = 0; i < split.count; i++) {
        NSString* string = split[i];
        if (i > 0) {
            if (string.length > 0) {
                NSString* firstCharacter = [string substringWithRange: NSMakeRange(0, 1)];
                [propertyName appendString: [string stringByReplacingCharactersInRange: NSMakeRange(0, 1) withString: firstCharacter.uppercaseString]];
            }
        } else {
            [propertyName appendString: string];
        }
    }
    
    return propertyName;
}

JSValue* propertyForObject(id obj, NSString* propertyName)
{
    JSContext* context = [BridgeSupport mainContext];
    
    JSValue* properties = nil;
    
    Class cls = object_getClass(obj);
    if (class_isMetaClass(cls)) {
        properties = context[NSStringFromClass(obj)][JSBStaticMembersKey];
    } else {
        properties = context[NSStringFromClass(cls)][JSBInstanceMembersKey];
    }
    
    return properties[propertyName];
}

NSArray* extractArguments(NSInvocation* invocation)
{
    JSContext* context = [BridgeSupport mainContext];
    NSMethodSignature* methodSignature = invocation.methodSignature;
    NSUInteger numberOfArguments = methodSignature.numberOfArguments;
    NSMutableArray* arguments = [NSMutableArray arrayWithCapacity: numberOfArguments];
    
    for (NSUInteger i = 2; i < numberOfArguments; i++) {
        const char* type = [methodSignature getArgumentTypeAtIndex: i];
        if (strcmp(type, @encode(char)) == 0) {
            char argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strcmp(type, @encode(bool)) == 0) {
            bool argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strcmp(type, @encode(short)) == 0) {
            short argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strcmp(type, @encode(int)) == 0) {
            int argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strcmp(type, @encode(long)) == 0) {
            long argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strcmp(type, @encode(long long)) == 0) {
            long long argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strcmp(type, @encode(unsigned char)) == 0) {
            unsigned char argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strcmp(type, @encode(unsigned short)) == 0) {
            unsigned short argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strcmp(type, @encode(unsigned int)) == 0) {
            unsigned int argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strcmp(type, @encode(unsigned long)) == 0) {
            unsigned long argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strcmp(type, @encode(unsigned long long)) == 0) {
            unsigned long long argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strcmp(type, @encode(float)) == 0) {
            float argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strcmp(type, @encode(double)) == 0) {
            double argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strcmp(type, @encode(BOOL)) == 0) {
            BOOL argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject: [JSValue valueWithObject: @(argument) inContext: context]];
        } else if (strlen(type) >= 1 && type[0] == '{') {
            if (strcmp(type, @encode(CGRect)) == 0) {
                CGRect argument;
                [invocation getArgument: &argument atIndex: i];
                [arguments addObject: [JSValue valueWithRect: argument inContext: context]];
            } else if (strcmp(type, @encode(CGPoint)) == 0) {
                CGPoint argument;
                [invocation getArgument: &argument atIndex: i];
                [arguments addObject: [JSValue valueWithPoint: argument inContext: context]];
            } else if (strcmp(type, @encode(CGSize)) == 0) {
                CGSize argument;
                [invocation getArgument: &argument atIndex: i];
                [arguments addObject: [JSValue valueWithSize: argument inContext: context]];
            } else if (strcmp(type, @encode(NSRange)) == 0) {
                NSRange argument;
                [invocation getArgument: &argument atIndex: i];
                [arguments addObject: [JSValue valueWithRange: argument inContext: context]];
            } else {
                JSValue* (*extractStructArgument)(const char* , NSInvocation* , NSUInteger, JSContext*) = (JSValue* (*)(const char* , NSInvocation* , NSUInteger, JSContext*) )dlsym(RTLD_DEFAULT, "extractStructArgument");
                JSValue* argument = extractStructArgument(type,  invocation, i, context);
                if (argument) {
                    [arguments addObject: argument];
                }
            }
        } else if (strcmp(type, @encode(id)) == 0) {
            id __unsafe_unretained argument = nil;
            [invocation getArgument: &argument atIndex: i];
            if (argument) {
                [arguments addObject: [JSValue valueWithObject: argument inContext: context]];
            } else {
                [arguments addObject: [JSValue valueWithUndefinedInContext: context]];
            }
        } else if (strcmp(type, @encode(SEL)) == 0) {
            SEL argument;
            [invocation getArgument: &argument atIndex: i];
            if (argument) {
                [arguments addObject: [JSValue valueWithObject: NSStringFromSelector(argument)
                                                     inContext: context]];
            } else {
                [arguments addObject: [JSValue valueWithUndefinedInContext: context]];
            }
        } else if (strcmp(type, @encode(Class)) == 0) {
            Class argument;
            [invocation getArgument: &argument atIndex: i];
            if (argument) {
                [arguments addObject: [JSValue valueWithObject: argument inContext: context]];
            } else {
                [arguments addObject: [JSValue valueWithUndefinedInContext: context]];
            }
        } else if (strcmp(type, "@?") == 0) {
            // block type
            id __unsafe_unretained argument = nil;
            [invocation getArgument: &argument atIndex: i];
            if (argument) {
                [arguments addObject: [JSValue valueWithObject: argument inContext: context]];
            } else {
                [arguments addObject: [JSValue valueWithUndefinedInContext: context]];
            }
        } else if (strcmp(type, @encode(void*)) == 0 ||
                   (strlen(type) >= 2 && type[0] == '^' && type[1] == '{')) {
            void* argument;
            [invocation getArgument: &argument atIndex: i];
            if (argument) {
                [arguments addObject: [JSValue valueWithObject: (__bridge id)argument
                                                     inContext: context]];
            } else {
                [arguments addObject: [JSValue valueWithUndefinedInContext: context]];
            }
        } else if (strcmp(type, @encode(id*)) == 0) {
            id* argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject:
                            [JSValue valueWithObject: [IdPointer idPointerWithPtr: argument]
                                           inContext: context]];
        } else if (strcmp(type, @encode(BOOL*)) == 0) {
            BOOL* argument;
            [invocation getArgument: &argument atIndex: i];
            [arguments addObject:
                            [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: argument]
                                           inContext: context]];
        } else {
            // Unsupported type
            [arguments addObject: [JSValue valueWithNullInContext: context]];
        }
    }

    return arguments;
}

void setReturnValue(JSValue* value, NSInvocation* invocation)
{
    NSMethodSignature* methodSignature = invocation.methodSignature;
    const char* type = methodSignature.methodReturnType;
    
    if (strcmp(type, @encode(void)) == 0) {
        return;
    }
    
    if (strcmp(type, @encode(bool)) == 0 ||
        strcmp(type, @encode(BOOL)) == 0) {
        BOOL returnValue = value.toBool;
        [invocation setReturnValue: &returnValue];
    } else if (strcmp(type, @encode(char)) == 0 ||
               strcmp(type, @encode(int)) == 0 ||
               strcmp(type, @encode(short)) == 0) {
        int32_t returnValue = value.toInt32;
        [invocation setReturnValue: &returnValue];
    } else if (strcmp(type, @encode(unsigned char)) == 0 ||
               strcmp(type, @encode(unsigned int)) == 0 ||
               strcmp(type, @encode(unsigned short)) == 0) {
        uint32_t returnValue = value.toUInt32;
        [invocation setReturnValue: &returnValue];
    } else if (strcmp(type, @encode(long)) == 0) {
        long returnValue = (long) value.toDouble;
        [invocation setReturnValue: &returnValue];
    } else if (strcmp(type, @encode(unsigned long)) == 0) {
        unsigned long returnValue = (unsigned long) value.toDouble;
        [invocation setReturnValue: &returnValue];
    } else if (strcmp(type, @encode(long long)) == 0) {
        long long returnValue = (long long) value.toDouble;
        [invocation setReturnValue: &returnValue];
    } else if (strcmp(type, @encode(unsigned long long)) == 0) {
        unsigned long long returnValue = (unsigned long long) value.toDouble;
        [invocation setReturnValue: &returnValue];
    } else if (strcmp(type, @encode(float)) == 0) {
        float returnValue = value.toDouble;
        [invocation setReturnValue: &returnValue];
    } else if (strcmp(type, @encode(double)) == 0) {
        double returnValue = value.toDouble;
        [invocation setReturnValue: &returnValue];
    } else if (strlen(type) >= 1 && type[0] == '{') {
        if (strcmp(type, @encode(CGRect)) == 0) {
            CGRect returnValue = value.toRect;
            [invocation setReturnValue: &returnValue];
        } else if (strcmp(type, @encode(CGSize)) == 0) {
            CGSize returnValue = value.toSize;
            [invocation setReturnValue: &returnValue];
        } else if (strcmp(type, @encode(CGPoint)) == 0) {
            CGPoint returnValue = value.toPoint;
            [invocation setReturnValue: &returnValue];
        } else if (strcmp(type, @encode(NSRange)) == 0) {
            NSRange returnValue = value.toRange;
            [invocation setReturnValue: &returnValue];
        } else {
            void (*setStructReturnValue)(const char* , JSValue*, NSInvocation*) = (void (*)(const char* , JSValue*, NSInvocation*))dlsym(RTLD_DEFAULT, "setStructReturnValue");
            setStructReturnValue(type, value, invocation);
        }
    } else if (strcmp(type, @encode(id)) == 0) {
        id __unsafe_unretained returnValue = value.toObject;
        [invocation setReturnValue: &returnValue];
    } else if (strcmp(type, @encode(SEL)) == 0) {
        SEL returnValue = NSSelectorFromString(value.toString);
        [invocation setReturnValue: &returnValue];
    } else if (strcmp(type, "#") == 0) {
        Class returnValue = objc_getClass([[value[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
        [invocation setReturnValue: &returnValue];
    } else if (strcmp(type, @encode(void*)) == 0 ||
               (strlen(type) >= 2 && type[0] == '^' && type[1] == '{')) {
        id __unsafe_unretained returnValue = value.toObject;
        [invocation setReturnValue: &returnValue];
    }
}

void setupForwardingImplementations(Class targetClass, Class cls, JSValue* instanceFunctions)
{
    Class extCls = NSClassFromString([NSString stringWithFormat: @"%@Ext",  NSStringFromClass(cls)]);

    unsigned int numberOfInstanceMethods = 0;
    Method* instanceMethods = class_copyMethodList(cls, &numberOfInstanceMethods);
    for (unsigned int i = 0; i < numberOfInstanceMethods; i++) {
        Method method = instanceMethods[i];
        struct objc_method_description* description = method_getDescription(method);
        
        NSString* propertyName = propertyNameFromSelector(description->name);
        JSValue* function = instanceFunctions[propertyName];
        if (!function.isUndefined) {
            if (extCls) {
                NSString* superSelectorName = [NSString stringWithFormat: @"super%@", NSStringFromSelector(description->name)];
                SEL superSelector = NSSelectorFromString(superSelectorName);
                Method extMethod = class_getInstanceMethod(extCls, superSelector);
                class_addMethod(targetClass, superSelector, method_getImplementation(extMethod), description->types);
            }
            class_addMethod(targetClass, description->name, _objc_msgForward, description->types);
        }
    }
    if (instanceMethods) {
        free(instanceMethods);
    }
    
    Class superClass = class_getSuperclass(cls);
    if (superClass) {
        setupForwardingImplementations(targetClass, superClass, instanceFunctions);
    }
}

void forwardInvocation(id self, SEL _cmd, NSInvocation* invocation)
{
    JSContext* context = [BridgeSupport mainContext];
    
    NSString* propertyName = propertyNameFromSelector(invocation.selector);
    JSValue* function = propertyForObject(self, propertyName);
    
    if (!function.isUndefined) {
        NSArray* arguments = extractArguments(invocation);
        JSValue* result = callJSFunction(context, function, self, arguments);
        setReturnValue(result, invocation);
    }
}

NSMethodSignature* methodSignatureForSelector(id self, SEL _cmd, SEL selector)
{
    NSMethodSignature* methodSignature = nil;
    Class cls = object_getClass(self);
    
    methodSignature = [cls instanceMethodSignatureForSelector: selector];
    if (methodSignature) {
        return methodSignature;
    }
    
    NSUInteger numberOfArguments = [[NSStringFromSelector(selector) componentsSeparatedByString: @":"] count] - 1;
    return [NSMethodSignature signatureWithObjCTypes: [[@"@@:" stringByPaddingToLength: numberOfArguments + 3 withString: @"@" startingAtIndex: 0] UTF8String]];
}

BOOL respondsToSelector(id self, SEL _cmd, SEL selector)
{
    NSString* propertyName = propertyNameFromSelector(selector);
    JSValue* function = propertyForObject(self, propertyName);
    
    return !function.isUndefined;
}

// JavaScriptCore takes care of inheritance when it comes to instance methods
// and properties with the exception of NSObject. Class methods however are only
// added to the constructor object that corresponds to the class object.
// Following code traverses a class's hierarchy and adds JSExport protocols
// corresponding to static methods to the class. It also adds NSObject's instance
// protocols as JavaScriptCore doesn't do that.
// We can't do this at generation time due to categories and self-sufficient modules.
void addSuperClassProtocols(Class cls)
{
    Class superCls = [cls superclass];
    Protocol* jsExportProtocol = objc_getProtocol("JSExport");

    while (YES) {
        unsigned protocolsCount;
        Protocol** protocols = class_copyProtocolList(superCls, &protocolsCount);
        for (unsigned i = 0; i < protocolsCount; i++) {
            if ([@(protocol_getName(protocols[i])) hasSuffix: @"ClassExports"] &&
                protocol_conformsToProtocol(protocols[i], jsExportProtocol)) {
                class_addProtocol(cls, protocols[i]);
            }
        }

        if (superCls == [NSObject class]) {
            for (unsigned i = 0; i < protocolsCount; i++) {
                if ([@(protocol_getName(protocols[i])) hasSuffix: @"InstanceExports"] &&
                    protocol_conformsToProtocol(protocols[i], jsExportProtocol)) {
                    class_addProtocol(cls, protocols[i]);
                }
            }
            free(protocols);
            break;
        }

        free(protocols);
        superCls = [superCls superclass];
    }
}

@implementation ClassExtension

+(id) createClass: (NSString *) className extending:(NSString *)baseClass conformingTo:(NSArray *)protocols withInstanceMembers:(JSValue *)instanceMembers
{
    NSCharacterSet* wsCharSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    baseClass = [baseClass stringByTrimmingCharactersInSet: wsCharSet];
    className = [className stringByTrimmingCharactersInSet: wsCharSet];
    Class baseCls = NSClassFromString(baseClass);
    if(baseCls == nil)
        return baseCls; //will be return as undefined in JS if the base class is not available
    Class cls = objc_getClass(className.UTF8String);
    if (cls) {
        objc_disposeClassPair(cls);
    }
    cls = objc_allocateClassPair(baseCls, className.UTF8String, 0);
    objc_registerClassPair(cls);

    Class superClass = class_getSuperclass(cls);
    if (superClass) {
        setupForwardingImplementations(cls, superClass, instanceMembers);
    }

    NSString* types;
    BOOL result;
    
    types = [NSString stringWithFormat: @"%s%s%s%s", @encode(NSMethodSignature), @encode(id), @encode(SEL), @encode(SEL)];
    result = class_addMethod(cls, @selector(methodSignatureForSelector:), (IMP) methodSignatureForSelector, types.UTF8String);
    
    types = [NSString stringWithFormat: @"%s%s%s%s", @encode(void), @encode(id), @encode(SEL), @encode(NSInvocation)];
    result = class_addMethod(cls, @selector(forwardInvocation:), (IMP) forwardInvocation, types.UTF8String);
    
    types = [NSString stringWithFormat: @"%s%s%s%s", @encode(BOOL), @encode(id), @encode(SEL), @encode(SEL)];
    result = class_addMethod(cls, @selector(respondsToSelector:), (IMP) respondsToSelector, types.UTF8String);
    
    for (NSString* protocol in protocols) {
        class_addProtocol(cls, NSProtocolFromString([protocol stringByTrimmingCharactersInSet: wsCharSet]));
    }
    
    Protocol* superExports = NSProtocolFromString([NSString stringWithFormat: @"%@ExtExports", baseClass]);
    if (superExports) {
        class_addProtocol(cls, superExports);
    }
    // Adding super class's class protocols will take care of making sure
    // that the new class gets its super class's instance protocols as well
    addSuperClassProtocols(cls);

    JSContext* context = [JSContext currentContext];

    NSString* key = NSStringFromClass(cls);

    // This is to avoid a catch-22 situation: The moment cls is added to
    // JSContext, JSCore starts looking at the methods of cls
    context[key] = [JSValue valueWithNewObjectInContext: context];
    context[key][JSBInstanceMembersKey] = instanceMembers;

    context[key] = cls;
    context[key][@"className"] = key;
    context[key][JSBInstanceMembersKey] = instanceMembers;
    
    return cls;
}

+(id)import: (NSString*) className
{
    Class cls = NSClassFromString(className);
    if(cls == nil){//will return undefined in JS if class is not available
        return cls;
    }
    if (!class_conformsToProtocol(cls, objc_getProtocol("NSObjectClassExports"))) {
        addSuperClassProtocols(cls);
    }

    Class builtins[] = { [NSNull class], [NSString class], [NSNumber class],
                         [NSDictionary class], [NSArray class], [NSDate class] };

    JSValue* classObj = [JSValue valueWithObject: cls inContext: [JSContext currentContext]];

    if (!classObj.isNull) {
        for (int i = 0; i < sizeof(builtins)/sizeof(Class); i++) {
            if ([cls isSubclassOfClass: builtins[i]]) {
                classObj[@"alloc"] = [JSValue valueWithUndefinedInContext: [JSContext currentContext]];
            }
        }
        classObj[@"className"] = className;
    }
    return classObj;
}

@end
