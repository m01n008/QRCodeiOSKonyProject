//
//  WebConstants.h
//  VM
//
//  Created by Praveen Kothapeta on 21/03/17.
//
//

#ifndef WebConstants_h
#define WebConstants_h

#define LOCAL_DATA_DIR [KONYJS_FRAMEWORK_PATH stringByAppendingPathComponent:@"web/localfiles"]
#define CORDOVA_WWW_DIR [KONYJS_FRAMEWORK_PATH stringByAppendingPathComponent:@"web/cordova/www"]
#define LIBRARY_DIR_PATH @"/Library"

typedef enum WEBDATATYPE {
    
    DEFAULT_DATA,
    NIL_DATA,
    URL_DATA,
    HTML_DATA,
    LOCAL_DATA,
    RAW_DATA
    
} WEBDATATYPE;

#define WEBVIEW_ERROR_UNKNOWN                               1000
#define STR_WEBVIEW_ERROR_UNKNOWN                           @"Unknown error while connecting"

#define WEBVIEW_ERROR_HOST_LOOKUP                           1001
#define STR_WEBVIEW_ERROR_HOST_LOOKUP                       @"Cannot connect to host"

#define WEBVIEW_ERROR_IO                                    1002
#define STR_WEBVIEW_ERROR_IO                                @"Input Stream Related Errors"

#define WEBVIEW_ERROR_AUTHENTICATION_REQUIRED               1003
#define STR_WEBVIEW_ERROR_AUTHENTICATION_REQUIRED           @"Permission Related"

#define WEBVIEW_ERROR_BAD_URL                               1004
#define STR_WEBVIEW_ERROR_BAD_URL                           @"Invalid input url"

#define WEBVIEW_ERROR_FILE                                  1006
#define STR_WEBVIEW_ERROR_FILE                              @"File Errors"

#define WEBVIEW_ERROR_NO_NETWORK                            1007
#define STR_WEBVIEW_ERROR_NO_NETWORK                        @"Device Connectivity related issues"

#define WEBVIEW_ERROR_BAD_SERVER_RESPONSE                   1009
#define STR_WEBVIEW_ERROR_BAD_SERVER_RESPONSE               @"Invalid Server Response"

#define WEBVIEW_ERROR_TIMEOUT                               1010
#define STR_WEBVIEW_ERROR_TIMEOUT                           @"Request timed out"

#define WEBVIEW_ERROR_USER_CANCELLED                        1011
#define STR_WEBVIEW_ERROR_USER_CANCELLED                    @"User Cancelled"

#define WEBVIEW_ERROR_REDIRECT_LOOP                         1012
#define STR_WEBVIEW_ERROR_REDIRECT_LOOP                     @"Redirection related Errors"

#define WEBVIEW_ERROR_USER_CANCELLED_AUTHENTICATION         1014
#define STR_WEBVIEW_ERROR_USER_CANCELLED_AUTHENTICATION     @"User cancelled authentication"

#define WEBVIEW_ERROR_REQUIRES_SECURE_CONNECTION            1015
#define STR_WEBVIEW_ERROR_REQUIRES_SECURE_CONNECTION        @"App transport security requires secure connection"

#define WEBVIEW_ERROR_RESOURCE_UNAVAILABLE                  1016
#define STR_WEBVIEW_ERROR_RESOURCE_UNAVAILABLE              @"Resource related Errors"

#define WEBVIEW_ERROR_FAILED_SSL_HANDSHAKE                  1018
#define STR_WEBVIEW_ERROR_FAILED_SSL_HANDSHAKE              @"SSL related error"

#define NATIVE_CALL_IDENTIFIER @"konyhybridcall://args?function="
#define NATIVE_CALL_PARAM_IDENTIFIER @"&params="

#define ABOUT_BLANK_URL_STRING @"about:blank"
#define ERR_CODE @"errorCode"
#define ERR_MSG @"errorMessage"
#define ERR_DETAILS @"errorDetails"
#define ERR_HTTP_CODE @"httpStatusCode"

#define ORIGINAL_URL @"originalURL"
#define QUERY_PARAMS  @"queryParams"

#define HTTP_STATUS_CODE @-1

#endif /* WebConstants_h */
