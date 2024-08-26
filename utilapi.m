
BOOL isSDK50() {
    
#ifdef __IPHONE_7_0
    return YES;
#else
    return NO;
#endif
    
}


BOOL isSDK60() {
    
#ifdef __IPHONE_8_0
    return YES;
#else
    return NO;
#endif
    
}

BOOL isSDK70() {
    
#ifdef __IPHONE_9_0
    return YES;
#else
    return NO;
#endif
    
}

BOOL isSDK80() {
#ifdef __IPHONE_10_0
    return YES;
#else
    return NO;
#endif
}
