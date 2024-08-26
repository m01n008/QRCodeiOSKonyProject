// JS to lua bridge api//1. internal.shownativeform(“formid”)//2. internal.showdynamicform(“formid”)//3. internal.showspaform(“formid”)//4. internal.executefunctioninspacontext(“functionname”, “params”);//5. internal.executefunctioninnativecontext(“functionname”, “params”);//6. internal.executefunctionintccontext(“functionname”, “params”);//7. internal.isshellinbackground()internal = {

	
	setshellbackgroundstatus: function(hybridshellstatus)
	{
		if("boolean" == typeof(hybridshellstatus))
		{
			internal.konyhybridshellglobals.isHybridShellinBackground = hybridshellstatus;
		}
	},
		//internal.isshellinbackground()  	isshellinbackground: function()     {    	return internal.konyhybridshellglobals.isHybridShellinBackground;  	},	// internal.shownativeform(“formid”)   	shownativeform: function(formid)     {		if (typeof(formid) == "string")         {			window.location.replace ("konyhybridcall://shownativeform?formid="+formid);		}  	},    // internal.showdynamicform(“formid”)  	showdynamicform: function(formid)     {		if (typeof(formid) == "string")         {			window.location.replace ("konyhybridcall://showdynamicform?formid="+formid);		}  	},    // internal.showspaform(“formid”)  	showspaform: function(formid)     {		if (typeof(formid) == "string")         {			window.location.replace ("konyhybridcall://showspaform?formid="+formid);		}  	},	// var json = [ { "string":"prajakt","number":2,"boolean":true , "table": [1,2,4,5] },"prajakt123", 1,true];	// internal.executefunctioninnativecontext(“functionname”, “params”);    executefunctioninnativecontext: function(funcid, jsonparams)     {        if (typeof(funcid) == "string")         {            var str = "konyhybridcall://executefunctioninnativecontext?funcid="+funcid;            if(jsonparams != null)            {                str = str + "&params="+JSON.stringify(jsonparams);            }            window.location.replace (str);        }  	},    // internal.executefunctioninspacontext(“functionname”, “params”);    executefunctioninspacontext: function(funcid, jsonparams)     {        if (typeof(funcid) == "string")         {            var str = "konyhybridcall://executefunctioninspacontext?funcid="+funcid;            if(jsonparams != null)            {                str = str + "&params="+JSON.stringify(jsonparams);            }            window.location.replace (str);        }  	},    // internal.executefunctionintccontext(“functionname”, “params”);    executefunctionintccontext: function(funcid, jsonparams)     {        if (typeof(funcid) == "string")         {            var str = "konyhybridcall://executefunctionintccontext?funcid="+funcid;            if(jsonparams != null)            {                str = str + "&params="+JSON.stringify(jsonparams);            }            window.location.replace (str);        }  	}};

internal.konyhybridshellglobals = 	{ isHybridShellinBackground : false };





