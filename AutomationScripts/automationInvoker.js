//automationInvoker.js
var scriptsURL = undefined;
var scripts_name = "AutomationScripts";
//http request to get metaInfo.json file and check the automationWindowOpened flag, then proccesed to start automation web socket client.
function invokeJasmineAutomation() {
    if (!appConfig.testAutomation || !appConfig.testAutomation.scriptsURL || !appConfig.testAutomation.scriptsURL.startsWith("http")) {
        //invalid server automation server url.
        kony.print("invalid test automation configuration.")
        return;
    }

    var automationConfig=appConfig.testAutomation;
    automationConfig["projectName"] = appConfig.appName;
    if(automationConfig.fetchScriptsFromLocalStorage) {
        launchAutomationWithScripts(automationConfig);
        return;
     }

    var getPOMContent = function(pomObjectFileURL,reqcallback) {
    var pomObjectRequest = new kony.net.HttpRequest();
    try {
    pomObjectRequest.open(constants.HTTP_METHOD_GET, pomObjectFileURL, false);
    pomObjectRequest.onReadyStateChange = function () {
        if(pomObjectRequest.readyState == constants.HTTP_READY_STATE_DONE) {
            if(pomObjectRequest.status == 200) {
            try {
            if(pomObjectRequest.responseText) {
                automationConfig["POMContent"] = JSON.parse(pomObjectRequest.responseText);
            } else {
                kony.print('Invalid Page Object Model found.');
            }
            } catch(exception) {
                kony.print('Unable to read Page Object Model file.');
                kony.print('Exception in Page Object Model file: ' + exception.message);
            }
            }   else if(pomObjectRequest.status == 404) {
            kony.print('No Page Object found. There are no Page Objects Deployed.');
            } else {
            kony.print('Failed to load Page Object. Request status: ' + pomObjectRequest.status);
            }
            reqcallback();
        } else {
            kony.print('Invoke Page Object Model request readyState: ' +
        pomObjectRequest.readyState + ' request status: ' + pomObjectRequest.status);
        }
        };
    pomObjectRequest.send();
    } catch(exception) {
        kony.print('Page Object Model file request error: '+ exception.message);
        reqcallback();
    }
    }

    scriptsURL = appConfig.testAutomation.scriptsURL;
    var pomObjectFileURL = scriptsURL + getChannelName() + "PageObjectModel.json";
    try {
        var metaInfoURL = scriptsURL + getChannelName() + "metaInfo.json";
        var metaInfoRequest = new kony.net.HttpRequest();
        metaInfoRequest.timeout = 10 * 1000;//10 seconds
        metaInfoRequest.open(constants.HTTP_METHOD_GET, metaInfoURL, false);
        metaInfoRequest.onReadyStateChange = function () {
            if (metaInfoRequest.readyState == constants.HTTP_READY_STATE_DONE) {
                if (metaInfoRequest.status == 200) {
                    try {
                        
                        var ipAddress = scriptsURL.split('://')[1].split(':')[0];
                        kony.print("request responseType:" + metaInfoRequest.responseType);
                        if (metaInfoRequest.responseText) {
                            var response = JSON.parse(metaInfoRequest.responseText);
                            if (response.automationWindowOpened) {
                                var portNumber = 9111;
                                if (isNaN(appConfig.testAutomation.webSocketPort)) {
                                    kony.print("invalid value provided for test automation web socket client port number. continuing with default port 9111.");
                                }
                                else {
                                    portNumber = parseInt(appConfig.testAutomation.webSocketPort);
                                }
                                //starting automation web socket client.
                                kony.automation.startAutomationClient(ipAddress, portNumber,automationConfig);
                            }
                            else {
                                //starting with regular playback.
                                fetchAutomationScripts(automationConfig);
                            }
                        } else {
                            kony.print("Invalid meta information found.continuing with automation scripts playback.");
                        }
                    }
                    catch (e) {
                        kony.print("unable to read file metaInfo.json");
                        logError(e);
                    }
                }
                else if (metaInfoRequest.status == 404) {
                    kony.print("No meta information found.There are no automation scripts deployed.");
                }
                else {
                    kony.print("failed to start automation. request status:" + metaInfoRequest.statusText);
                }
            }
            else {
                kony.print("invoke jasmine automation request.readyState: " + metaInfoRequest.readyState
                           + " request status:" + metaInfoRequest.statusText);
            }
        };
        getPOMContent(pomObjectFileURL,function(){metaInfoRequest.send();});

    } catch (e) {
        logError(e);
    }
    
}

function logError(e) {
    var err = kony.getError(e);
    if (err instanceof KonyError)
        kony.print("" + "\tMessage:" + err.Message);
}

//Below function to write the data in files of data directory path of device.
function saveResponse(file, data, isRaw) {
    try {
        kony.print("data : " + data);
        if (file.exists()) {
            file.remove(true);
        }
        file.createFile();
        file.write(data, false);
        return file.fullPath;
    }
    catch (err) {
        kony.print("CATCH : saveResponse " + err);
    }
}
//Following function is to ensure the path and create files & directories in the data directory path of device.
function ensurePath(path) {
    try {
        kony.print("path" + path);
        var file = null;
        var bPath = kony.io.FileSystem.getDataDirectoryPath() + "\/";
        file = new kony.io.File(bPath + path);
        if (file.exists()) {
            file.remove();
            kony.print("removed existing scripts zip file.");
        }
        kony.print("file : " + file);
        return file;
    }
    catch (err) {
        kony.print("CATCH : ensurePath " + err);
    }
}

function getPOMContentFromFile(extractedScriptsPath,automationConfig)
{
    var pomObjectFile = extractedScriptsPath + constants.FILE_PATH_SEPARATOR + "PageObjectModel.json";
    var metaFile = new kony.io.File(pomObjectFile);
    var json = null;
    if(metaFile.exists()){
        var body = metaFile.read();
        if(body !== null){
           json  = JSON.parse(body.text);
        }
    }
    automationConfig["POMContent"] = json;
}
//download the automation scripts zip file, extracts zip file, invokes automation start
function fetchAutomationScripts(automationConfig) {
    try {
        var endUrl = scriptsURL + getChannelName() + getZipScriptsFileName();
        var request = new kony.net.HttpRequest();
        request.timeout = 10 * 1000;//10 seconds
        request.open(constants.HTTP_METHOD_GET, endUrl, false);
        request.onReadyStateChange = function () {
            
            if (request.readyState == constants.HTTP_READY_STATE_DONE) {
                if (request.status == 200) {
                    try {
                        kony.print("response: " + JSON.stringify(request.response));
                        var resulttable = request.response;
                        kony.print("typeof: " + typeof (resulttable));
                        kony.print("request.status : " + request.status);
                        var scripts_name = "AutomationScripts";
                        
                        //save zip response
                        saveResponse(ensurePath(scripts_name + ".zip"), resulttable, true);
                        
                        
                        var bPath = kony.io.FileSystem.getDataDirectoryPath();
                        var extractedScriptsPath = bPath + constants.FILE_PATH_SEPARATOR + scripts_name;
                        var zipFilePath = bPath + constants.FILE_PATH_SEPARATOR + scripts_name + ".zip";
                        
                        //remove existing AutomationScripts folder
                        var folder = new kony.io.File(extractedScriptsPath);
                        if (folder.exists()) {
                            folder.remove();
                        }
                        
                        //unzip now
                        kony.io.unzip(zipFilePath, extractedScriptsPath);
                        
                        //remove zip file
                        var file = new kony.io.File(zipFilePath);
                        file.remove();
                        getPOMContentFromFile(extractedScriptsPath,automationConfig);
                        //call native with sandbox memory folder path
                        kony.automation.start(extractedScriptsPath,automationConfig);
                    }
                    catch (e) {
                        kony.print("automation scripts download request successful. and failed to start.");
                        logError(e);
                    }
                }
                else {
                    kony.print("fetch automation scripts request.status: " + request.statusText);
                }
            }
            else {
                kony.print("fetch automation scripts request.readyState: " + metaInfoRequest.readyState
                           + " request status:" + metaInfoRequest.statusText);
            }
        };
        request.send();
    }
    catch (e) {
        kony.print("fetch automation scripts download request failed.");
        logError(e);
    }
}

function launchAutomationWithScripts(automationConfig) {
    var bPath = kony.io.FileSystem.getApplicationDirectoryPath();
    var index = bPath.lastIndexOf("/Frameworks/");
    var appPackagePath = bPath.substr(0, index);
    var xtraDataPackagePath = appPackagePath + constants.FILE_PATH_SEPARATOR + "aatp"+ constants.FILE_PATH_SEPARATOR + "data";
    var scriptsPath = xtraDataPackagePath + constants.FILE_PATH_SEPARATOR + scripts_name;
    getPOMContentFromFile(scriptsPath,automationConfig);
    kony.print("A folder named " + scripts_name + " containing all the .js files from the deployed location are to be placed in the extra data package path:" + xtraDataPackagePath);
    //call native with sandbox memory folder path
    kony.automation.start(scriptsPath,automationConfig);
}

function getChannelName() {
    var result;
    var deviceInfo = kony.os.deviceInfo();
    var platformName = (deviceInfo.name).toLowerCase();
    
    if (platformName == "windows10" || platformName == "windows8" || platformName.indexOf("ipad") !== -1) {
        result = "Tablet/";
    }
    else if (platformName == "windows10mobile" || platformName == "WindowsPhone" || platformName.indexOf("iphone") !== -1) {
        result = "Mobile/";
    }
    else if (platformName.indexOf("windows 10") !== -1 || platformName == "windows 7") {
        result = "Desktop/";
    }
    else if (platformName == "android") {
        result = "Mobile/";
        if ((deviceInfo.deviceHeight / (160 * deviceInfo.density)) > 6)
            result = "Tablet/";
    }
    else {
        kony.print("Failed to find the channel.")
    }
    return result;
}

function getZipScriptsFileName() {
    var deviceInfo = kony.os.deviceInfo();
    var platformName = (deviceInfo.name).toLowerCase();
    if (platformName.indexOf("ipad") !== -1 || platformName.indexOf("iphone") !== -1) {
        return "automationScripts.tar";
    }
    else {
        return "automationScripts.zip";
    }
}
