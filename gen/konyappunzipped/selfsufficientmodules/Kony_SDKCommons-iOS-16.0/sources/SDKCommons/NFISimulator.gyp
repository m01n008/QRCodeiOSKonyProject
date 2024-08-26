{
    'target_defaults': {
        'xcode_settings': {
            'ENABLE_BITCODE': 'NO',
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
                'ENABLE_BITCODE': 'NO',
                'INFOPLIST_FILE': '../src/NFIUtility/Info.plist'
            },
        },
        {
    "target_name": "NFISDKCommons",
    "type": "shared_library",
    "dependencies": [
        "NFIUtility"
    ],
    "sources": [
        "<!@(ls SDKCommons/simulator/*)"
    ],
    "mac_framework_headers": [
        "SDKCommons/simulator/NFISDKCommonsLoader.h",
        "SDKCommons/simulator/NFISDKCommons.h"
    ],
    "link_settings": {
        "libraries": [
            "../gen-src/SDKCommons/thirdparty/FMDB.xcframework/ios-arm64_x86_64-simulator/FMDB.framework",
            "../gen-src/SDKCommons/thirdparty/SDKCommons.xcframework/ios-arm64_x86_64-simulator/SDKCommons.framework",
            "../gen-src/SDKCommons/thirdparty/SQLCipher.xcframework/ios-arm64_x86_64-simulator/SQLCipher.framework"
        ]
    },
    "xcode_settings": {
        "ENABLE_BITCODE": "NO",
        "INFOPLIST_FILE": "SDKCommons/Info.plist",
        "OTHER_LDFLAGS": [],
        "FRAMEWORK_SEARCH_PATHS": [
            "../gen-src/SDKCommons/thirdparty/FMDB.xcframework/ios-arm64_x86_64-simulator",
            "../gen-src/SDKCommons/thirdparty/SDKCommons.xcframework/ios-arm64_x86_64-simulator",
            "../gen-src/SDKCommons/thirdparty/SQLCipher.xcframework/ios-arm64_x86_64-simulator"
        ],
        "HEADER_SEARCH_PATHS": [
            "../gen-src/SDKCommons/thirdparty/FMDB.xcframework/ios-arm64_x86_64-simulator/FMDB.framework/Headers",
            "../gen-src/SDKCommons/thirdparty/SDKCommons.xcframework/ios-arm64_x86_64-simulator/SDKCommons.framework/Headers",
            "../gen-src/SDKCommons/thirdparty/SQLCipher.xcframework/ios-arm64_x86_64-simulator/SQLCipher.framework/Headers"
        ]
    }
}],}