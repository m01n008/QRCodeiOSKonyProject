//startup.js
var globalhttpheaders = {};
var appConfig = {
    appId: "QRPOC",
    appName: "QRCodeFFIKonyProject",
    appVersion: "1.0.0",
    isDebug: true,
    isMFApp: false,
    eventTypes: ["FormEntry", "Error", "Crash"],
};
sessionID = "";

function setAppBehaviors() {
    kony.application.setApplicationBehaviors({
        applyMarginPaddingInBCGMode: false,
        adherePercentageStrictly: true,
        retainSpaceOnHide: true,
        marginsIncludedInWidgetContainerWeight: true,
        isMVC: true,
        APILevel: 8400,
        isCompositeApp: false
    });
};

function themeCallBack() {
    initializeGlobalVariables();
    applicationController = require("applicationController");
    callAppMenu();
    kony.application.setApplicationInitializationEvents({
        init: applicationController.appInit,
        postappinit: function(eventObj) {
            return applicationController.postAppInitCallBack(eventObj);
        },
        showstartupform: function() {
            new kony.mvc.Navigation("frmQR").navigate();
        }
    });
};

function loadResources() {
    kony.logger.configure();
    _kony.mvc.initCompositeApp(false);
    globalhttpheaders = {};
    sdkInitConfig = {
        "appConfig": appConfig,
        "isMFApp": appConfig.isMFApp,
        "eventTypes": appConfig.eventTypes,
    }
    kony.theme.setCurrentTheme("default", themeCallBack, themeCallBack);
};
kony.application.setApplicationMode(constants.APPLICATION_MODE_NATIVE);
//This is the entry point for the application.When Locale comes,Local API call will be the entry point.
loadResources();
debugger;