{
    'target_defaults': {
        'xcode_settings': {
            'SDKROOT': 'iphoneos',
            'DEFINES_MODULE': 'YES',
            'CLANG_ENABLE_MODULES': 'YES',
            'ALWAYS_SEARCH_USER_PATHS': 'NO',
            'DYLIB_INSTALL_NAME_BASE': '@rpath',
            'PRODUCT_BUNDLE_IDENTIFIER': 'com.kony.$(PRODUCT_NAME)',
            'CURRENT_PROJECT_VERSION': '1',
            'DYLIB_CURRENT_VERSION': '1.0.0',
            'DYLIB_COMPATIBILITY_VERSION': '1.0.0',
            'GCC_OPTIMIZATION_LEVEL': '0',
            'OTHER_LDFLAGS': [
                '-weak_framework Foundation -weak_framework CoreFoundation -weak_framework CFNetwork',
            ],
        },
        'mac_bundle': 1,
    },
    'targets': [
        {
            'target_name': 'NFIUtility',
            'type': 'shared_library',
            'sources': [
                '../src/NFIUtility/CallbackSupport.h',
                '../src/NFIUtility/CallbackSupport.m',
                '../src/NFIUtility/NFIUtility.h',
                '../src/NFIUtility/PointerSupport.h',
                '../src/NFIUtility/PointerSupport.m',
            ],
            'mac_framework_headers':[
                '../src/NFIUtility/CallbackSupport.h',
                '../src/NFIUtility/NFIUtility.h',
                '../src/NFIUtility/PointerSupport.h',
            ],
            'xcode_settings': {
                'INFOPLIST_FILE': '../src/NFIUtility/Info.plist'
            },
        },
        {
    "target_name": "NFIKonyKVOWrapper", 
    "mac_framework_headers": [
        "KonyKVOWrapper/simulator/NFIKonyKVOWrapperLoader.h", 
        "KonyKVOWrapper/simulator/NFIKonyKVOWrapper.h"
    ], 
    "xcode_settings": {
        "HEADER_SEARCH_PATHS": [
            "/Volumes/DATA/source-code/nativeframeworks/iOS/nativebinding/gen-src/KonyKVOWrapper/thirdparty/KonyKVOWrapper/KonyKVOWrapper.framework/Headers"
        ], 
        "INFOPLIST_FILE": "KonyKVOWrapper/Info.plist", 
        "FRAMEWORK_SEARCH_PATHS": "/Volumes/DATA/source-code/nativeframeworks/iOS/nativebinding/gen-src/KonyKVOWrapper/thirdparty/**", 
        "OTHER_LDFLAGS": []
    }, 
    "sources": [
        "<!@(ls KonyKVOWrapper/simulator/*)"
    ], 
    "dependencies": [
        "NFIUtility"
    ], 
    "type": "shared_library", 
    "link_settings": {
        "libraries": [
            "/Volumes/DATA/source-code/nativeframeworks/iOS/nativebinding/gen-src/KonyKVOWrapper/thirdparty/KonyKVOWrapper/KonyKVOWrapper.framework"
        ]
    }
}],}