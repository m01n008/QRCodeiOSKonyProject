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
    "target_name": "NFIBinary",
    "type": "shared_library",
    "dependencies": [
        "NFIUtility"
    ],
    "sources": [
        "<!@(ls Binary/simulator/*)"
    ],
    "mac_framework_headers": [
        "Binary/simulator/NFIBinaryLoader.h",
        "Binary/simulator/NFIBinary.h"
    ],
    "link_settings": {
        "libraries": [
            "../gen-src/Binary/thirdparty/Binary.xcframework/ios-arm64_x86_64-simulator/Binary.framework",
            "../gen-src/Binary/thirdparty/Task.xcframework/ios-arm64_x86_64-simulator/Task.framework"
        ]
    },
    "xcode_settings": {
        "ENABLE_BITCODE": "NO",
        "INFOPLIST_FILE": "Binary/Info.plist",
        "OTHER_LDFLAGS": [],
        "FRAMEWORK_SEARCH_PATHS": [
            "../gen-src/Binary/thirdparty/Binary.xcframework/ios-arm64_x86_64-simulator",
            "../gen-src/Binary/thirdparty/Task.xcframework/ios-arm64_x86_64-simulator"
        ],
        "HEADER_SEARCH_PATHS": [
            "../gen-src/Binary/thirdparty/Binary.xcframework/ios-arm64_x86_64-simulator/Binary.framework/Headers",
            "../gen-src/Binary/thirdparty/Task.xcframework/ios-arm64_x86_64-simulator/Task.framework/Headers"
        ]
    }
}],}