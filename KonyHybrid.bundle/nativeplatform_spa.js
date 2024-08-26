
// JS to lua bridge api
//1. internal.shownativeform(“formid”)
//2. internal.showdynamicform(“formid”)
//3. internal.showspaform(“formid”)
//4. internal.executefunctioninspacontext(“functionname”, “params”);
//5. internal.executefunctioninnativecontext(“functionname”, “params”);
//6. internal.executefunctionintccontext(“functionname”, “params”);
//7. internal.isshellinbackground()



internal = {
    
setshellbackgroundstatus: function(hybridshellstatus) {
    if("boolean" == typeof(hybridshellstatus)) {
        kony.print("in internal.setshellbackgroundstatus : " + hybridshellstatus);
        internal.konyhybridshellglobals.isHybridShellinBackground = hybridshellstatus;
    }
},
	
    //internal.isshellinbackground()
isshellinbackground: function()  {
    kony.print("in internal.isshellinbackground : ");
    return internal.konyhybridshellglobals.isHybridShellinBackground;
},
  	
    // internal.shownativeform(“formid”)
shownativeform: function(formid) {
    if (typeof(formid) == "string") {
        kony.print("in internal.shownativeform : " + formid);
        internal.konyhybridjsbridge.invokeIosUIWebViewDelegate ("konyhybridcall://shownativeform?formid="+formid);
    }
},
    
    
    // internal.showdynamicform(“formid”)
showdynamicform: function(formid) {
    if (typeof(formid) == "string") {
        kony.print("in internal.showdynamicform : " + formid);
        internal.konyhybridjsbridge.invokeIosUIWebViewDelegate ("konyhybridcall://showdynamicform?formid="+formid);
    }
},
    
    
    // internal.showspaform(“formid”)
showspaform: function(formid) {
    if (typeof(formid) == "string") {
        kony.print("in internal.showspaform : " + formid);
        internal.konyhybridjsbridge.invokeIosUIWebViewDelegate ("konyhybridcall://showspaform?formid="+formid);
    }
},
    
    
    // var json = [ { "string":"prajakt","number":2,"boolean":true , "table": [1,2,4,5] },"prajakt123", 1,true];
    // internal.executefunctioninnativecontext(“functionname”, “params”);
executefunctioninnativecontext: function(funcid, jsonparams) {
    //jsonparams = convertluatojsonobject(jsonparams);
    if (typeof(funcid) == "string") {
        var str = "konyhybridcall://executefunctioninnativecontext?funcid="+funcid;
        if(jsonparams != null) {
            str = str + "&params="+JSON.stringify(jsonparams);
        }
        kony.print("in internal.executefunctioninnativecontext : " + str);
        internal.konyhybridjsbridge.invokeIosUIWebViewDelegate (str);
    }
},
    
    
    // internal.executefunctioninspacontext(“functionname”, “params”);
executefunctioninspacontext: function(funcid, jsonparams) {
    if (typeof(funcid) == "string") {
        var str = "konyhybridcall://executefunctioninspacontext?funcid="+funcid;
        if(jsonparams != null) {
            str = str + "&params="+JSON.stringify(jsonparams);
        }
        kony.print("in internal.executefunctioninspacontext : " + str);
        internal.konyhybridjsbridge.invokeIosUIWebViewDelegate (str);
    }
},
    
    
    
    // internal.executefunctionintccontext(“functionname”, “params”);
executefunctionintccontext: function(funcid, jsonparams) {
    if (typeof(funcid) == "string") {
        var str = "konyhybridcall://executefunctionintccontext?funcid="+funcid;
        if(jsonparams != null) {
            str = str + "&params="+JSON.stringify(jsonparams);
        }
        kony.print("in internal.executefunctionintccontext : " + str);
        internal.konyhybridjsbridge.invokeIosUIWebViewDelegate (str);
    }
}
};


//hybrid.shownativeform = internal.shownativeform;
//hybrid.showdynamicform = internal.showdynamicform;
//hybrid.showspaform = internal.showspaform;
//hybrid.isshellinbackground = internal.isshellinbackground;

hybrid.executefunctioninspacontext = internal.executefunctioninspacontext;
hybrid.executefunctioninnativecontext = internal.executefunctioninnativecontext;
hybrid.executefunctionintccontext = internal.executefunctionintccontext;


//logging func
kony.print = function() {
    var _params = arguments[0];
    if(_params != null) {
        var str = "konyhybridcall://hybridlog : ";
        str = str + JSON.stringify(_params);
        internal.konyhybridjsbridge.invokeIosUIWebViewDelegate(str);
    }
};


internal.konyhybridshellglobals = 	{ isHybridShellinBackground : false };


internal.convertluatojsonobject =  function(luaobj) {
    if (typeof luaobj == "object") {
        luastr = JSON.stringify(luaobj);
        obj2 = JSON.parse(luastr, function(key, value)
                          {
                          if (value instanceof Array)
                          {
                          value.splice(0, 1);
                          }
                          return value
                          });
        return obj2;
    }
    else {
        return luaobj;
    }
};

internal.konyhybridjsbridge = {};
internal.konyhybridjsbridge.invokeIosUIWebViewDelegate = function(arg) {
    var iframe = document.createElement("IFRAME");
    iframe.setAttribute("src", arg);
    // For some reason we need to set a non-empty size for the iOS6 simulator...
    iframe.setAttribute("height", "1px");
    iframe.setAttribute("width", "1px");
    document.documentElement.appendChild(iframe);
    iframe.parentNode.removeChild(iframe);
    iframe = null;
};


