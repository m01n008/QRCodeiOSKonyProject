_kony.automation = _kony.automation || {};
kony.automation = kony.automation || {};
//kony.automation.playback = kony.automation.playback || {};
//kony.automation.action = kony.automation.action || {};
//kony.automation.userWidget = kony.automation.userWidget || {};
kony.automation.widget = kony.automation.widget || {};
//kony.automation.gesture = kony.automation.gesture || {};
//
//kony.automation.alert = kony.automation.alert || {};
//kony.automation.appmenu = kony.automation.appmenu || {};
//kony.automation.browser = kony.automation.browser || {};
//kony.automation.button = kony.automation.button || {};
//kony.automation.calendar = kony.automation.calendar || {};
//kony.automation.checkboxgroup = kony.automation.checkboxgroup || {};
//kony.automation.radiobuttongroup = kony.automation.radiobuttongroup || {};
//kony.automation.combobox = kony.automation.combobox || {};
//kony.automation.datagrid = kony.automation.datagrid || {};
//kony.automation.box = kony.automation.box || {};
//kony.automation.flexcontainer = kony.automation.flexcontainer || {};
//kony.automation.flexscrollcontainer = kony.automation.flexscrollcontainer || {};
//kony.automation.horizontalimagestrip = kony.automation.horizontalimagestrip || {};
//kony.automation.imagegallery = kony.automation.imagegallery || {};
//kony.automation.link = kony.automation.link || {};
//kony.automation.listbox = kony.automation.listbox || {};
//kony.automation.pickerview = kony.automation.pickerview || {};
//kony.automation.richtext = kony.automation.richtext || {};
//kony.automation.segmentedui = kony.automation.segmentedui || {};
//kony.automation.slider = kony.automation.slider || {};
//kony.automation.switch = kony.automation.switch || {};
//kony.automation.tabpane = kony.automation.tabpane || {};
//kony.automation.textbox = kony.automation.textbox || {};
//kony.automation.textarea = kony.automation.textarea || {};
//kony.automation.camera = kony.automation.camera || {};
//kony.automation.signaturecapture = kony.automation.signaturecapture || {};
//
//kony.automation.scrollDirection = {
//    Top : 0,
//    Bottom :1,
//    Left : 2,
//    Right : 3
//};

_kony.automation.GetController = function (formFriendlyName) {

    var tmpController = null;
    //var formID = formFriendlyName;
    var formInfo = _resolveFormInfo(formFriendlyName);
    var formID = formInfo["formName"];
    var appName = formInfo["appName"];
    var tmpFormName =  kony.mvc.registry.get(formID,appName);
    if (null != tmpFormName) {
        formID = tmpFormName
    }
  /*  if (formID in _kony.mvc.viewName2viewId) {
        formID = _kony.mvc.viewName2viewId[formID]
    }
    if (null != formID) {
        if (formID in _kony.mvc.viewId2ControllerNameMap) {
            var ctrlName = _kony.mvc.viewId2ControllerNameMap[formID];
            if (ctrlName in _kony.mvc.ctrlname2ControllerMap) {
                tmpController = _kony.mvc.ctrlname2ControllerMap[ctrlName]
            }
        }
    }*/
    if (formID in _kony.mvc.getViewName2viewIdMap(appName)) {
                formID = _kony.mvc.getViewName2viewIdMap(appName)[formID];
            }
    if (null != formID) {
            if (formID in _kony.mvc.getViewId2ControllerNameMap(appName)) {
                var ctrlName = _kony.mvc.getViewId2ControllerNameMap(appName)[formID];
                if (ctrlName in _kony.mvc.getControllerName2ControllerMap(appName)) {
                    tmpController = _kony.mvc.getControllerName2ControllerMap(appName)[ctrlName];
                }
            }
        }
    return tmpController;
}

_resolveAppName =function(formID)
{
    var appName="";
    if(formID.split("/").length == 2)
        appName=formID.split("/")[formID.split("/").length-2];
    else
        appName= appConfig.appName;// this has to be replaced _kony.mvc.getCurrentAppName();
    return appName;
}

_resolveFormInfo = function(formID)
{
  var formInfo={};
  formInfo["formName"]=formID.split("/")[formID.split("/").length-1];
  formInfo["appName"]=_resolveAppName(formID);
  return formInfo;
}

kony.automation.widget.getFormId = function (formFriendlyName) {
    if (typeof formFriendlyName === "string") {
        var formInfo = _resolveFormInfo(formFriendlyName);
        var formID = formInfo["formName"];
        var parentWidget = this[formID]; 
        if (null == parentWidget || null == parentWidget._konyControllerName) {
            var tmpFormName = kony.mvc.registry.get(formID,formInfo["appName"]);
            if (null != tmpFormName) {
                formID = tmpFormName;
            }
        }
    }
    return formID.split("/")[formID.split("/").length-1];
}

kony.automation.widget.isCurrentForm = function(parentIdentifier){
    if(_resolveAppName(parentIdentifier)!= kony.application.getCurrentForm().appName)
        return false;
    parentIdentifier = kony.automation.widget.getFormId(parentIdentifier);
    if(parentIdentifier !== kony.application.getCurrentForm().id)
        return false;
    return true;
}
/**
 * API call from platform
 * Returns a list of widget paths matching the given criteria
 * @param widgetPath Path of the target widget (container) as aray of strings
 * @param filters Array of objects defining the filters/criteria to be satisfied
 * @param widgetFilters Array of widget constants defining on which the filters can apply.
 */
kony.automation.getWidgetsByFilter = function(widgetPath, filters,searchableWidgets) { //Exposed API
    var widgetModel = null, widgetsList=[];
    if(searchableWidgets === null)  //if searchablewidgets not provided, pass null from platform
        searchableWidgets=[];
    if(!Array.isArray(widgetPath) || !Array.isArray(filters) || filters.length == 0 || !Array.isArray(searchableWidgets)) {
        return {
            exceptionType: "Jasmine",
            errorCode: 203,
            errorMsg: "Invalid type of arguments passed"
        }
    }
    widgetModel = kony.automation.widget.getWidget.call(this,widgetPath);
    if(!widgetModel)
    {
        return {
            exceptionType: "Jasmine",
            errorCode: 201,
            errorMsg: "The widget could not be found at the widgetpath. If the widgetpath is right, try using waitFor API before performing widget actions."
        }
    }
    if(widgetModel.exceptionType && widgetModel.exceptionType === "Jasmine")
        return widgetModel;
    if (getwidgetType(widgetModel) === "Form" || getwidgetType(widgetModel) === "FlexContainer" || getwidgetType(widgetModel) === "FlexScrollContainer") {
        widgetsList = _getWidgetsRecursively(widgetModel,searchableWidgets,filters);
        if(widgetsList.length > 0 && widgetsList[0] === widgetModel)
            widgetsList.shift(); //removing the containerWidget.
    }
    
    return widgetsList;
}
/**
 * Returns a list of widget models inside the given container widget (recursively)
 * @param parentWidget Parent Widget model for which the children are required
 */
var _getWidgetsRecursively = function (parentWidget,searchableWidgets, filters) {
    var widgetsList = [], validWidget = false, widgets = null;
    if(searchableWidgets.length>0) {
        if(searchableWidgets.includes(getwidgetType(parentWidget)) && _checkCriteria(parentWidget, filters))
            validWidget = true;
    }
    else if(_checkCriteria(parentWidget, filters)){
        validWidget = true;
    }
    if(validWidget) {
        widgetsList.push(parentWidget);
    }
    if (typeof parentWidget.widgets === 'function')
        widgets = parentWidget.widgets();
    if (widgets && widgets.length > 0) {
        for (var i = 0; i < widgets.length; i++) {
            widgetsList = widgetsList.concat(_getWidgetsRecursively(widgets[i],searchableWidgets, filters));
        }
    }
    return widgetsList;
}
/**
 * Returns a list of widget models matching the given criteria
 * @param widgetsList List of the widget models which need to be filtered
 * @param filters Array of objects defining the filters/criteria to be satisfied
 */
var _checkCriteria = function(widget,filters) {
    var filter = null, criteria = 0, caseSensitive=true, validWidget = false, passed= false, propertyName = "", actualValue = "", valueToCompare = "";
    
    for(var i = 0; i < filters.length; i++) {
        filter = filters[i];
        passed = false;
        if(!(filter.hasOwnProperty('property') && filter.hasOwnProperty('value')))
            continue;
        if(filter.hasOwnProperty('searchCriteria') && typeof criteria === 'number')
            criteria = filter['searchCriteria'];
        if(filter.hasOwnProperty('caseSensitive') && typeof filter['caseSensitive'] === 'boolean')
            caseSensitive = filter['caseSensitive']
        propertyName = filter['property'];
        actualValue = widget[propertyName];
        valueToCompare = filter['value'];
        if(actualValue === undefined)
            continue;
        switch (criteria) {
            case 0: {//kony.automation.SEARCH_CRITERIA_EQUAL
                if(typeof valueToCompare === 'string' && typeof actualValue === 'string' && !caseSensitive )
                {
                    if(valueToCompare.toLowerCase() === actualValue.toLowerCase())
                    passed = true;
                }
                else if (valueToCompare === actualValue) {
                    passed = true;
                }
                break;
            }
            case 1: {//kony.automation.SEARCH_CRITERIA_CONTAINS
                if(typeof valueToCompare === 'string' && typeof actualValue === 'string' )
                {
                    if(caseSenitive) {
                        if(actualValue.includes(valueToCompare))
                        passed = true;
                    }
                    else if(actualValue.toLowerCase().includes(valueToCompare.toLowerCase()))
                    {
                        passed = true;
                    }
                }
                break;
            }
            case 2: {//kony.automation.SEARCH_CRITERIA_STARTSWITH
                if(typeof valueToCompare === 'string' && typeof actualValue === 'string' )
                {
                    if(caseSensitive){
                        if(actualValue.startsWith(valueToCompare))
                        passed = true;
                    }
                    else if(actualValue.toLowerCase().startsWith(valueToCompare.toLowerCase()))
                    {
                        passed = true;
                    }
                }
                break;
            }
            case 3: {//kony.automation.SEARCH_CRITERIA_ENDSWITH
                if(typeof valueToCompare === 'string' && typeof actualValue === 'string' )
                {
                    if(caseSensitive){
                        if(actualValue.endsWith(valueToCompare))
                        passed = true;
                    }
                    else if(actualValue.toLowerCase().endsWith(valueToCompare.toLowerCase())) {
                        passed = true;
                    }
                }
                break;
            }
            case 4: {//kony.automation.SEARCH_CRITERIA_GREATER
                if(typeof valueToCompare == 'number' && typeof actualValue == 'number') {
                    if( actualValue > valueToCompare ) {
                        passed = true;
                    }
                }
                break;
            }
            case 5: {//kony.automation.SEARCH_CRITERIA_GREATER_EQUAL
                if(typeof valueToCompare == 'number' && typeof actualValue == 'number') {
                    if( actualValue >= valueToCompare ) {
                        passed = true;
                    }
                }
                break;
            }
            case 6: {//kony.automation.SEARCH_CRITERIA_LESSER
                if(typeof valueToCompare == 'number' && typeof actualValue == 'number') {
                    if( actualValue < valueToCompare ) {
                        passed = true;
                    }
                }
                break;
            }
            case 7: {//kony.automation.SEARCH_CRITERIA_LESSER_EQUAL
                if(typeof valueToCompare == 'number' && typeof actualValue == 'number') {
                    if( actualValue <= valueToCompare ) {
                        passed = true;
                    }
                }
                break;
            }
        }
        if(passed){
            validWidget = true;
        } else {
            return false;
        }
    };
    return validWidget;
}
/**
 * To get the model type of widget
 * platform dependant
 * @param widgetModel WidgetModel for which widgetType is required.
 */
var getwidgetType = function(widgetModel) {
    var type, widgetMap, widgetType;

    type = kony.type(widgetModel);
    widgetMap = {
        "kony.ui.Browser" : "Browser",
        "kony.ui.Button" : "Button",
        "kony.ui.Calendar" : "Calendar",
        "kony.ui.Camera" : "Camera",
        "kony.ui.LuaCanvas" : "Canvas",
        "kony.ui.CheckBoxGroup" : "CheckBoxGroup",
        "kony.ui.CollectionView" : "CollectionView",
//        "kony.ui.KonyCustomWidget" : "CustomWidget", //ps
        "kony.ui.DataGrid" : "DataGrid",
        "kony.ui.FlexContainer" : "FlexContainer",
        "kony.ui.FlexScrollContainer" : "FlexScrollContainer",
        "_kony.mvc.Form2" : "Form", //ps
        "kony.ui.Form2" : "Form",
        "kony.ui.Image2" : "Image",
        "kony.ui.Label": "Label",
        "kony.ui.ListBox" : "ListBox",
        "kony.ui.Map" : "Map",
        "kony.ui.PickerView" : "PickerView", //ps
        "kony.ui.RadioButtonGroup" : "RadioButtonGroup",
        "kony.ui.ReactNativeContainer" : "ReactNativeContainer", //ps
        "kony.ui.NativeContainer" : "NativeContainer", //ps
        "kony.ui.RichText" : "RichText",
        "kony.ui.SegmentedUI2" : "Segment",
        "kony.ui.Slider" : "Slider",
        "kony.ui.Switch" : "Switch",
        "kony.ui.TabPane" : "TabPane",
        "kony.ui.TextArea2" : "TextArea",
        "kony.ui.TextBox2" : "TextBox",
        "kony.ui.Video" : "Video",
        "kony.ui.MLCamera"  : "MLCamera"
    }
    widgetType = widgetMap[type];
    return widgetType;
}
kony.automation.widget.getWidget = function (parentIdentifiers) {
    var parentWidget = null;
    for (i = 0; i < parentIdentifiers.length; i++) {
        var parentIdentifier = parentIdentifiers[i];
        if (i == 0) {
            if (typeof parentIdentifier === "string") {
                if(!kony.application.getCurrentForm()){
                    return  {exceptionType:"Jasmine",errorCode: 205, errorMsg: "Ensure that the current form is rendered. Try using waitFor API before performing widget actions"};
                }
                
                if(!kony.automation.widget.isCurrentForm(parentIdentifier)){
                    return  {exceptionType:"Jasmine",errorCode: 205, errorMsg: "Ensure that the form in the widgetpath matches the current form. Try using waitFor API before performing widget actions"};
                }
                
                parentWidget = globalObj[kony.automation.widget.getFormId(parentIdentifier)];
                if (null == parentWidget) {
                    var tmpController = _kony.automation.GetController(parentIdentifier, true);
                    if (null != tmpController) {
                        parentWidget = tmpController.view;
                    }
                    else {
                        return null;
                    }
                }
            }
            else {
                parentWidget = parentIdentifier;
            }
        }
        else {
            var temp = null;
            if (parentIdentifier.indexOf("[") !== -1) {
               var widget = parentIdentifier.substr(0, parentIdentifier.indexOf("["));
               var index = parentIdentifier.slice(parentIdentifier.indexOf("[")+1, parentIdentifier.indexOf("]"));
               temp = parentWidget[widget];
               if(!temp)
                   return null;
               try {
                    if (index.length === 0) {
                        return { exceptionType:"Jasmine",errorCode: 207, errorMsg: "Invalid section or row info found." };
                    }
                    index = index.split(",").map(Number);
                   if(index.length > 2 || index.length < 1 || ((index.length == 2) && (Number.isNaN(index[0]) || Number.isNaN(index[1]))) || (index.length == 1 && Number.isNaN(index[0])))
                    {
                        return {exceptionType:"Jasmine",errorCode: 207, errorMsg: "Invalid section or row info found."};
                    }
                }catch(e) {
                    return {exceptionType:"Jasmine",errorCode: 207, errorMsg: "Invalid section or row info found."};
                }
               
               rowFlexArr = temp.getRowByIndex(index);
               temp = rowFlexArr ? rowFlexArr[0] : null;
           }
            else {

                if (parentWidget.id == parentIdentifier) {
                    temp = parentWidget;
                }
                else {
                    var temp = parentWidget[parentIdentifier];
                }
            }
            //TODO: when row is not visible, getRowByIndex returns nil and the below code fails
//            if (temp == null && Object.prototype.hasOwnProperty.call(parentWidget, "getView")) {
//                temp = parentWidget.getView()[parentIdentifier];
//            }
            parentWidget = temp;
        }
    }
    return parentWidget;
}
kony.automation.widget.getProperty = function (parentIdentifiers, newText) {
    var parentWidget = kony.automation.widget.getWidget.call(this, parentIdentifiers);
    if(!parentWidget){
        return {errorCode: 201, errorMsg: "The widget could not be found at the path. If the path is right, try using waitFor api before performing widget actions."};
    }
    if (null != parentWidget)
    {
        var temp = parentWidget[newText];
        //TODO verify the use case for below code
//        if (temp == null && Object.prototype.hasOwnProperty.call(parentWidget, "getView")) {
//            temp = parentWidget.getView()[newText];
//        }
        return temp;
    }
}
//_kony.callWidgetAutomationAPI = function (api)
//{
//    var widgetPath = arguments[1];
//    var widget = kony.automation.widget.getWidget.call(this, widgetPath);
//    var args = Array.prototype.slice.call(arguments, 2);
//    args.unshift(widget);
//    var ctor = stringToFunction(api);
//    ctor.apply(globalObj, args);
//}
//
//kony.automation.waitFor = function (parentIdentifiers) {
//    return kony.automation.widget.getWidget.call(this, parentIdentifiers);
//}
//
//kony.automation.flexscrollcontainer.scroll = function (widget, startPoint, movePoints, endPoint) {
//    if (widget.onScrollStart != null) {
//        widget.onScrollStart.call(widget, widget, startPoint);
//    }
//    if (widget.onScrolling != null)
//    {
//        for (i = 0; i < movePoints.length; i++)
//        {
//            _kony.automation.flexscrollcontainer.scroll(widget, movePoints[i]);
//        }
//    }
//    if (widget.onScrollEnd != null) {
//        _kony.automation.flexscrollcontainer.scroll(widget, endPoint);
//    }
//}
//
//kony.automation.widget.touch = function (widgetIdentifier, startPoint, movePoints, endPoint) {
//    var widget = kony.automation.widget.getWidget.call(this, widgetIdentifier);
//    if (widget.onTouchStart!= null) {
//        widget.onTouchStart.call(widget, startPoint);
//    }
//    if (widget.onTouchMove != null) {
//        for (i = 0; i < movePoints.length; i++) {
//            widget.onTouchMove.call(widget, movePoints[i]);
//        }
//    }
//    if (widget.onTouchEnd != null) {
//        widget.onTouchEnd.call(widget, endPoint);
//    }
//}
//
//kony.automation.userWidget.getView = function (parentIdentifier, widgetIdentifier)
//{
//    if (typeof parentIdentifier === "string") {
//        var tmpController = _kony.mvc.GetController(parentIdentifier, true);
//        if (null != tmpController) {
//            var widget = tmpController.view[widgetIdentifier];
//            if (null != widget) {
//                return widget.getView();
//            }
//        }
//    }
//    else {
//        var widget = parentIdentifier[widgetIdentifier];
//        if (null != widget) {
//            return widget.getView();
//        }
//    }
//}


var oldFileObj = null;
kony.automation.jasmineStatusReport = function (content) {
    if(!content)
        return;
    
    if (null !== oldFileObj) {
        oldFileObj.remove(false);
    }
    var applName = appConfig.appName;
    var filePath = kony.io.FileSystem.getDataDirectoryPath() + "/JasmineTestResults/TestResult" + "_" + applName + getDate() + ".html";
    
    var fileObj = new kony.io.File(filePath);
    fileObj.createFile();
    fileObj.write(content, false);
    kony.print("The test result report can be found at the following location: " + filePath);
    
    oldFileObj = fileObj;

    if(typeof __coverage__ !== 'undefined' &&  __coverage__ !== null)
    {
        kony.print("writing coverage report into file");
        writeReportJSONIntoFile(JSON.stringify(__coverage__));
    }
    else
    {
        kony.print("Instrument js files and enable code coverage to get __coverage__");
    }
};

function writeReportJSONIntoFile(coverageContent)
{
    var coverageFileLoc = kony.io.FileSystem.getDataDirectoryPath() + "/JasmineTestResults/" + appConfig.appName +"_coverage.json";
    var myFileName = new kony.io.File(coverageFileLoc)
    if(myFileName.exists())
    myFileName.remove();
    var myFile = myFileName.createFile();
    try
    {
        var writing = new kony.io.File(coverageFileLoc).write(coverageContent);
        if (writing !== null) {
        kony.print("writing can be done on Existing Files");
        }
        else {
        kony.print("writing on nonExisting file returns null");
        }
    }
    catch (err) {
        kony.print("can't try write on NonExistingFile, causes Error");
    }
    kony.print("The coverage.json can be found at the following location: " + coverageFileLoc);
}
/**
 MADPIOS-4880 : Capture all the failed test suite under a json file
*/
function isCaptureFailedTestSuiteNeeded() {
    var bPath = kony.io.FileSystem.getApplicationDirectoryPath();
    var index = bPath.lastIndexOf("/Frameworks/");
    var appPackagePath = bPath.substr(0, index);
    var xtraDataPackagePath = appPackagePath + constants.FILE_PATH_SEPARATOR + "aatp"+ constants.FILE_PATH_SEPARATOR + "data";
    var scriptsPath = xtraDataPackagePath + constants.FILE_PATH_SEPARATOR + scripts_name;
    var filePath = scriptsPath + constants.FILE_PATH_SEPARATOR + "metaInfo.json";
    var metaFile = new kony.io.File(filePath);
    if(metaFile.exists()){
        var body = metaFile.read();
        if(body !== null){
            var json = JSON.parse(body.text);
            if(json.hasOwnProperty("captureFailedTestSuites"))
                return json.captureFailedTestSuites;
        }
    }
    return false;
};
kony.automation.capturingFailedSuites = function (content){
    if(!content || !isCaptureFailedTestSuiteNeeded())
        return;
    var fileName = appConfig.appName+'_FailedTestSuites.json';
    var filePath = kony.io.FileSystem.getDataDirectoryPath() + "/JasmineTestResults/"+fileName;
    var fileObj = new kony.io.File(filePath);
    fileObj.createFile();
    fileObj.write(content, false);
    kony.print("The reRun failed test suite report can be found at the following location: " + filePath);
}
getDate = function () {
    if(appConfig.testAutomation.fetchScriptsFromLocalStorage == true)
        return "";
    
    var today = new Date();
    
    var mm = today.getMonth();
    mm = mm < 9 ? "0" + (mm + 1) : mm + 1; // getMonth() is zero-based
    
    var dd = today.getDate();
    dd = dd < 10 ? "0" + dd : dd;
    
    var hh = today.getHours();
    hh = hh < 10 ? "0" + hh : hh;
    
    var min = today.getMinutes();
    min = min < 10 ? "0" + min : min;
    
    var ss = today.getSeconds();
    ss = ss < 10 ? "0" + ss : ss;
    
    return "_" + dd + "-" + mm + "-" + today.getFullYear() + "_" + hh + "-" + min + "-" + ss;
};
