/*
Copyright (c) 2008-2015 Pivotal Labs

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/
var automationConfig;
var failedTestSuites = [];
var myReporter = {
jasmineStarted: function(suiteInfo) {
    kony.automation.report("jasmineStarted", suiteInfo);
},
    
suiteStarted: function(result) {
    kony.automation.report("suiteStarted", result);
},
    
specStarted: function(result) {
    kony.automation.report("specStarted", result);
},
    
specDone: function(result) {
    kony.automation.report("specDone", result);
},
    
suiteDone: function(result) {
    kony.automation.report("suiteDone", result);
},
    
jasmineDone: function() {
    kony.automation.report("jasmineDone");
}
};

var baseTemplate = `
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="user-scalable = no">
      <meta name="description" content="">
      <meta name="author" content="">
      <title>
         Visualizer
      </title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!--Inline Style Starts-->
<style>
    body,
    html {
        height: 100%;
    }
    body {
        font-family: 'Helvetica';
        margin: 0;
        padding: 0;
        height: 100%;
        position: relative;
        letter-spacing: 0.5px;
        min-width: 1024px;
    }

    body,
    div,
    p,
    span,
    a,
    input,
    head,
    table,
    tr,
    tbody,
    thead,
    td,
    ul,
    li,
    ol,
    i,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6,
    dl,
    dt,
    dd,
    select,
    input {
        margin: 0;
        padding: 0;
    }

    p {
        font-family: 'Helvetica';
    }

    h4 {
        font-family: 'Helvetica';
        font-weight: 400;
    }

    a {
        text-decoration: none !important;
    }

    .parent-heading {
        /* background: #F2F4F7; */
        padding: 10px 15px;
    }

    .label-heading {
        font-size: 18px;
        color: #444444;
        font-weight: bold;
    }

    .label-heading-suite {
            top: 5px;
            position: inherit;
            padding: 8px 5px 5px 0px;
            font-size: 18px;
            color: #444444;
            font-weight: bold;
        }



    .sub-heading {
        font-size: 12px;
        color: #333333;
        font-weight: 100;
        margin-left: 8px;
    }

    .date {
        font-size: 12px;
        color: #333333;
        opacity: 0.7;
        font-weight: 100;
        margin-left: 8px;
        position: absolute;
        top: 14px;
    }

    .info-sections .passed {
        border: 1px solid #34C84A;
        border-radius: 4px;
        padding: 5px 10px;
        width: fit-content;
    }

    .info-sections .passed-text {
        font-size: 10px;
        color: #34C84A;
        /* font-weight: 600; */
    }

    .info-sections .failed {
        border: 1px solid #FF4743;
        border-radius: 4px;
        padding: 5px 10px;
        width: fit-content
    }

    .info-sections .failed-text {
        font-size: 10px;
        color: #FF4743;
        /* font-weight: 600; */
    }

    .info-sections .pending {
        border: 1px solid #FF8B00;
        border-radius: 4px;
        padding: 5px 10px;
        width: fit-content
    }

    .info-sections .pending-text {
        font-size: 10px;
        color: #FF8B00;
        /* font-weight: 600; */
    }

    .ml-10 {
        margin-left: 10px;
    }

    .mr-20 {
        margin-right: 20px;
    }

    .info-sections {
        display: inline-block;
        margin-top: 12px;
    }
    .accordion {
        background-color: #f7f7f7;
        border: 1px solid #E6E6E6 !important;
        color: #444;
        cursor: pointer;
        padding: 10px 15px;
        width: 100%;
        border: none;
        text-align: left;
        outline: none;
        transition: 0.4s;
    }

    .accordion-dialog {
        background-color: #e2e5e8;
        padding: 15px 0px;
        padding-left: 18px;
        padding-right: 70px;
        width: -webkit-fill-available;
        display: table
    }

    .active,
    .accordion:hover {
        background-color: #F7F7F7
    }

    .panel {
        /* padding: 0 18px; */
        display: none;
        background-color: white;
        overflow: hidden;
        border: 1px solid #E6E6E6;
        border-radius: 0px;
        box-shadow: none;
        margin-bottom: 5px;
        border-top: 0px;
    }

    .content-accordian {
        padding: 15px 0px;
        padding-left: 18px;
        padding-right: 70px;
        border-bottom: 1px solid #E6E6E6;
        width: -webkit-fill-available;
        display: table
    }

    .container-data {
        width: 100%;
    }

    .col-sm-3,
    .col-sm-1 {
        float: left;
    }

    .fa {
        font-size: 12px;
        color: #333333
    }

    .accordian-title {
        font-size: 12px;
        color: #333333;
        font-weight: 300
    }

    .passed-circle {
        background-color: #34C84A;
        font-size: 10px;
        color: #fff;
        padding: 4px 8px;
        border-radius: 20px;
    }

    .failed-circle {
        background-color: #FF4743;
        font-size: 10px;
        color: #fff;
        padding: 4px 8px;
        border-radius: 20px;
        margin-left: 6px;
    }

    .disabled {
        opacity: 0.6;
    }

    .pending-circle {
        background-color: #FF8B00;
        font-size: 10px;
        color: #fff;
        padding: 4px 8px;
        border-radius: 20px;
        margin-left: 6px;
    }

    .info-area {
        margin-top: -1px;
        position: absolute;
        float: right;
        right: 26px;
    }

    .accordion.active > .fa-chevron-right {
        transform: rotate(90deg)
    }

    .accordian-section {
        padding: 0px 15px;
        height: -webkit-fill-available;
    }

    .p-0 {
        padding: 0px;
    }

    .accordian-heading {
        color: #333333;
        font-size: 12px;
        opacity: 0.5;
    }

    .accordian-value {
        color: #333333;
        font-size: 12px;
        opacity: 1;
        margin-top: 2px;
        /*float: right;   */
        right: 26px;
    }

    .success {
        color: #34C84A
    }

    .last-section .passed {
        background-color: #34C84A;
        color: #fff;
        font-size: 10px;
        font-weight: 300;
        display: inline-block;
        /* padding: 4px 18px; */
        width: 70px;
        /* height: 20px; */
        line-height: 23px;
        border-radius: 4px
    }

    .last-section .failed {
        background-color: #FF4743;
        color: #fff;
        font-size: 10px;
        font-weight: 300;
        display: inline-block;
        /* padding: 4px 18px; */
        width: 70px;
        /* height: 20px; */
        line-height: 23px;
        border-radius: 4px
    }

    .last-section .pending {
        background-color: #FF8B00;
        color: #fff;
        font-size: 10px;
        font-weight: 300;
        display: inline-block;
        /* padding: 4px 18px; */
        width: 70px;
        /* height: 20px; */
        line-height: 23px !important;
        border-radius: 4px
    }

    .last-section {
        padding-top: 7px;
        padding-right: 0px;
        text-align: center;
    }

    .w-30 {
        width: 30%
    }

    .w-10 {
        width: 10%;
    }

    .mb-5 {
        margin-bottom: 5px;
    }

    div.content-accordian:hover {
        background-color: rgb(230, 230, 230, 0.2)/* opacity: 0.4; */
    }

    .failed-info-section {
        //height: 163px;
        overflow: auto;
        display: list-item;
    }

    .failed-info-section:hover {
        background-color: #fff !important
    }

    .active-color {
        background-color: rgb(230, 230, 230, 0.2)
    }

    .view span {
        height: 11px;
        width: 55px;
        color: #003E75;
        font-size: 12px;
        letter-spacing: 0;
        line-height: 11px;
    }

    .view:hover,
    .view:visited,
    .view:active,
    .view:focus {
        text-decoration: none !important;
        color: #2F90FF !important;
    }

    .linkicon {
        color: #2F90FF;
        transform: rotate(270deg);
    }

    .ml-5 {
        margin-left: 5px;
    }

    .failed-content {
        font-size: 12px;
        color: #333333;
        line-height: 22px;
        padding-left: 16px;
        width: 95%;
    }

    .error-text {
        color: #FF4743
    }

    .d-none {
        display: none;
    }

    .last-row {
        border-bottom: none
    }
    /*invisible scrollbar*/

    .failed-info-section::-webkit-scrollbar {
        width: 0 !important
    }

    .failed-info-section {
        overflow: -moz-scrollbars-none;
    }

    .failed-info-section {
        -ms-overflow-style: none;
    }

    .pull-left {
        float: left!important;
    }

    .arrow-arrow {
        border-bottom: 1.7px solid #2F90FF;
        border-right: 1.7px solid #2F90FF;
        width: 6px;
        height: 6px;
        transform: rotate(-45deg);
        display: inline-block;
    }
    .report-img {
        border: 4px solid #444444a6;
        cursor: zoom-in;
        width: 150px;
    }
    .wrapper {
        display: flex;
        flex-direction: row;
        width:100%;
        margin : 0;
    }
    .first-div {
        margin : 0;
        float : left;
    }
    .accordion-spec {
        display: none;
        top: 0px;
        left: 0px;
        width:-webkit-fill-available;
        height:-webkit-fill-available;
        position: absolute;
        background-color: #ebeef0;
        z-index: 10;
        padding:5px 20px 10px 20px;
    }

    .second-div {
        /* //width:60%; */
        margin : 0;
        float : left ;
    }

    .count-span {
        height: 11px;
        width: 12px;
        color: #FF5255;
        font-size: 12px;
        letter-spacing: 0;
        line-height: NaNpx;
    }

    .btn-close {
        border-radius: 4px;
        border: none;
        outline: none;
        background: #003E75;
        width: 75px;
        height: 25px;
        position: absolute;
        right: 20px;
        top: 5px;
        font-size: 12px;
        color: #FFFFFF;
        letter-spacing: 0.33px;
        line-height: 12px;
    }

    @media all {
        .featherlight {
            display: none;
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 2147483647;
            text-align: center;
            white-space: nowrap;
            cursor: pointer;
            background: #333;
            background: rgba(0, 0, 0, 0);
            height: 100%
        }

        .featherlight:last-of-type {
            background: rgba(0, 0, 0, .7)
        }

        .featherlight:before {
            content: '';
            display: inline-block;
            height: 100%;
            vertical-align: middle;
            margin-right: -.25em
        }

        .featherlight .featherlight-content {
            position: relative;
            text-align: left;
            vertical-align: middle;
            display: inline-block;
            overflow: auto;
            margin-left: auto;
            margin-top: auto;
            margin-right: auto;
            margin-bottom: auto;
            max-height: 95%;
            padding-left: 5px;
            padding-right: 5px;
            padding-top: 5px;
            padding-bottom: 5px;
            background: #8c8d8f;
            white-space: normal
        }

        .featherlight .featherlight-inner {
            display: block;
            background: #FFFFFF;
        }

        .featherlight .featherlight-close-icon {
            position: absolute;
            z-index: 9999;
            top: 0;
            right: 0;
            line-height: 25px;
            width: 25px;
            cursor: pointer;
            text-align: center;
            font-family: Arial, sans-serif;
            background: #fff;
            background: rgba(255, 255, 255, .3);
            color: #000
        }

        .featherlight .featherlight-image {
            border: 4px
        }

        .featherlight-iframe .featherlight-content {
            border-bottom: 0;
            padding: 0
        }

        .featherlight iframe {
            border: 0
        }
    }

      </style>
      <!--Inline Style Ends-->
   </head>
   <body>
      <div class="parentContainer">
         <div class="parentContainer1">
            <div class="parent-heading">
               <div class="heading">
                  <h4 class="label-heading">Visualizer Testing Result  <span class="date">{{date}}</span></h4>
               </div>
               <div class="info-sections">
                  <div class="passed pull-left">
                     <p class="passed-text">Passed : {{passedCount}}</p>
                  </div>
                  <div class="failed pull-left ml-10">
                     <p class="failed-text">Failed : {{failedCount}}</p>
                  </div>
                  <div class="pending pull-left ml-10">
                     <p class="pending-text">Pending : {{pendingCount}}</p>
                  </div>
               </div>
            </div>
            <div class="accordian-section">
                {%{suites}%}
            </div>
         </div>
      </div>
    <div id='myModal' class='featherlight' style='display:none'>
        <div class='featherlight-content'>
            <img alt='' class='featherlight-image featherlight-inner' id='img01' style='height:400px;'>
        </div>
    </div>
   </body>
   <script type="text/javascript">
      var acc = document.getElementsByClassName("accordion");
      var i;
      for (i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function() {
               this.classList.toggle("active");
               var panel = this.nextElementSibling;
               if(panel.style.display === "block") {
                  panel.style.display = "none";
               } else {
                  panel.style.display = "block";
               }
            });
      }

      var getClosest = function(element, className){
         for( ;element && element !== document; element = element.parentNode ) {
            if(element.classList.contains(className)) {
               return element;
            }
         }
      }

      var views = document.getElementsByClassName("view");
      for(i = 0; i < views.length; i++) {
         views[i].addEventListener("click", function() {
            var view = getClosest(this, 'col-sm-12');
            var viewChildren = view.parentElement.children;
            for(var i in viewChildren) {
                if(i === 'length'){
                    break;
                }
                if(viewChildren[i] !== this.parentElement && viewChildren[i].className === 'col-sm-12 content-accordian')
                viewChildren[i].style.display = 'none';
            }

            var mb = document.getElementsByClassName('mb-5');

            for(var i = 0; i < mb.length; i++) {
                var item = mb.item(i);
                if(item !== view.parentElement.parentElement){
                    item.style.display = 'none';
                }
            }

            if(view) {
               var log = view.nextElementSibling;
               var parentHead = document.getElementsByClassName('parent-heading')[0];
               if(log.style.display === "block") {
                  log.style.display = "none";
               } else {
                  log.style.display = "block";
                  parentHead.style.display = "none";
               }
            }
         });
      }
    var closeExpectations = function(e){
        e.parentElement.style.display = 'none';
        var parentHead = document.getElementsByClassName('parent-heading')[0];
        parentHead.style.display = 'block';
        var panel = getClosest(e, 'panel')
        var viewChildren = panel.children;
        for(var i in viewChildren) {
            if(i === 'length'){
                break;
            }
            if(viewChildren[i] !== this.parentElement && viewChildren[i].className === 'col-sm-12 content-accordian')
            viewChildren[i].style.display = 'table';
        }
        var mb = document.getElementsByClassName('mb-5');

        for(var i = 0; i < mb.length; i++) {
            var item = mb.item(i);
            if(item !== panel.parentElement){
                item.style.display = 'block';
            }
        }
   };
    var modal = document.getElementById('myModal');
    var modalImg = document.getElementById('img01');
    var imgs = document.getElementsByClassName('report-img');
    for (i = 0; i < imgs.length; i++) {
        imgs[i].addEventListener('click', function() {
            modal.style.display = 'block';
            modalImg.src = this.src;
        });
    }
    modal.onclick = function() {
        modal.style.display = 'none';
    }
   </script>
</html>`;
var suiteHTML = `<div class="mb-5"> <button class="accordion"> <i class="fa fa-chevron-right "></i> <span class="accordian-title ml-10 mr-20">Suite description : {{description}}</span> <span class="info-area "> <span class="passed-circle">{{passedCount}}</span> <span class="failed-circle">{{failedCount}}</span> <span class="pending-circle">{{pendingCount}}</span> </span> </button>
    <div class="panel" style="display: none"> {%{specs}%}</div>
</div>`;
var failedExpectationContent = `<div class='col-sm-12 content-accordian failed-info-section' style='display:block; width:-webkit-fill-available;'>
    <div class='wrapper'>
        <div class='first-div' style='display:{{screenShotVisibilty}}'> <img class='report-img' src='{{failedScreenShot}}'></div>
        <div class='second-div'>
            <p class='failed-content'>{{lineDetails}}</p>
            <p class='failed-content'>{{message}}</p>
            <p class='failed-content'>{{stack}}</p>
        </div>
    </div>
</div>`;
var passedExpectationContent = `<div class="col-sm-3 w-30">
    <p class="accordian-heading">Failed Expectations :</p>
    <p class="accordian-value success">None</p>
</div>`;
var failedExpectationView = `<div class="col-sm-3 w-30">
    <p class="accordian-heading">Failed Expectations :</p>
    <p class="accordian-value"><span class="count-span">{{failedExpCount}}</span>&nbsp;&nbsp;<a href="javascript:void(0)" class="view"><span>View Details</span></a></p>
</div>`;
var specHTML = `<div class='col-sm-12 content-accordian'>
    <div class='container-data'>
        <div class='col-sm-3 w-30'>
            <p class='accordian-heading'>Spec Description :</p>
            <p class='accordian-value'>{{description}}</p>
        </div> {%{failedView}%}<div class='col-sm-3 w-30'>
            <p class='accordian-heading'>Execution Time :</p>
            <p class='accordian-value'>{{duration}}</p>
        </div>
        <div class='col-sm-1 last-section p-0 w-10'> <label class='{{status}}'>{{status}}</label></div>
    </div>
</div>
<div class='accordion-spec' style='display:none'>
    <div class='heading'>
        <h4 class='label-heading-suite'>Suite description:&nbsp;{{suiteDescription}}</h4>
    </div>
    <div style="border: 0.5px solid #A1ACB1 !important;">
        <div class='col-sm-12 accordion-dialog'>
            <div class='container-data'>
                <div class='col-sm-3 w-30'>
                    <p class='accordian-title'>Spec Description :</p>
                    <p class='accordian-value'>{{description}}</p>
                </div>
                <div class='col-sm-3 w-30'>
                    <p class='accordian-title'>Failed Expectations :</p>
                    <p class='accordian-value'> <span>{{failedExpCount}}</span></p>
                </div>
                <div class='col-sm-3 w-30'>
                    <p class='accordian-title'>Execution Time :</p>
                    <p class='accordian-value'>{{duration}}</p>
                </div>
                <div class='col-sm-1 last-section p-0 w-10'> <label class='{{status}}'>{{status}}</label></div>
            </div>
        </div>
        <div class="col-sm-12" style="display:block; background-color: #FFFFFF;"> {%{failedContent}%}</div>
    </div> <button class="btn-close" onclick="closeExpectations(this)">Back</button>
</div>`;

var templatingEngine = {
suites: function(suites) {
    var suitesTemplate = "", suitesCount = suites.length,
    index;
    
    for(index = 0; index < suitesCount; index++) {
        suitesTemplate += templatingEngine.parseHTML(suites[index], suiteHTML);
    }
    return suitesTemplate;
},
specs: function(specs) {
    var specsTemplate = "", specsCount = specs.length,
    index;
    
    for(index = 0; index < specsCount; index++) {
        specsTemplate += templatingEngine.parseHTML(specs[index], specHTML);
    }
    return specsTemplate;
},
failedView: function(failedExpectations) {
    var expectationTemplate = "", expectationsLength = failedExpectations.length,index=0,failedCount={};
    
//    for(index = 0; index < expectationsLength; index++) {
//        expectationTemplate += templatingEngine.parseHTML(failedExpectations[index], failedExpectationView);
//    }
    if(expectationsLength>0){
       failedCount['failedExpCount']=expectationsLength;
       expectationTemplate += templatingEngine.parseHTML(failedCount, failedExpectationView);
    }
    
    if(failedExpectations.length === 0) {
        expectationTemplate += templatingEngine.parseHTML(failedExpectations[index], passedExpectationContent);
    }
    return expectationTemplate;
},
failedContent: function(failedExpectations) {
    var expectationTemplate = "", expectationsLength = failedExpectations.length,
    index;
    
    for(index = 0; index < expectationsLength; index++) {
        expectationTemplate += templatingEngine.parseHTML(failedExpectations[index], failedExpectationContent);
    }
    return expectationTemplate;
},
parseHTML: function(data, template) {
    //direct substitute
    var match, regex = /{{[a-zA-Z]*}}/gm, key, subtemplate;
    
    do {
        match = regex.exec(template);
        regex.lastIndex = 0;
        if(match) {
            match = match[0];
            key = match.substr(2, match.length - 4);
            template = template.split(match).join(data[key]);
        }
    } while(match);
    
    //sub-parser
    regex = /{%{[a-zA-Z.]*}%}/gm;
    do {
        match = regex.exec(template);
        regex.lastIndex = 0;
        if(match) {
            match = match[0];
            key = match.substr(3, match.length - 6);
            subtemplate = templatingEngine[key](data[key]);
            template = template.split(match).join(subtemplate);
        }
    } while(match);
    
    
    return template;
}
};
var reportingInput = {};

var specStartDurations = {};

var defaultReporter = {
    jasmineStarted: function (suiteInfo) {
        reportingInput = {
            status: '',
            passedCount: 0,
            failedCount: 0,
            pendingCount: 0,
            suites: []
        };
        automationConfig=kony.automation.getAutomationConfig();
        kony.automation.report("jasmineStatusReport","jasmineStarted",null,null);
    },
    suiteStarted: function (result) {
        reportingInput.suites.push({
            'description': result.description,
            'specs': [],
            'passedCount': 0,
            'failedCount': 0,
            'pendingCount':0
        });
        kony.automation.report("jasmineStatusReport","suiteStarted",null,null);
    },
    specStarted: function (result) {
        specStartDurations[result.id] = new Date().getTime();
        kony.automation.report("jasmineStatusReport","specStarted",null,null);
    },
    specDone: function (result) {
        var failure, passed, i, spec = {
            'failedContent': []
        };

        // suspectLine
        for (i = 0; i < result.failedExpectations.length; i++) {
            var failedScreenShotAvailability = true;
            failure = result.failedExpectations[i];
            failure.lineDetails="";
            if(failure.additionalDetails!=undefined && failure.additionalDetails.lineNumber!=undefined && failure.additionalDetails.colNumber!=undefined )
            {
                if(automationConfig.windowType=="TestCase")
                    failure.additionalDetails.lineNumber=failure.additionalDetails.lineNumber-1;
                failure.lineDetails="TestCase"+"&lt"+result.description+"&gt"+"failed at line:"+failure.additionalDetails.lineNumber+" col:"+failure.additionalDetails.colNumber;

            }
            if(failure.additionalDetails.failedScreenShot == '' || failure.additionalDetails.failedScreenShot == null){
                failedScreenShotAvailability = false;
            }
            spec.failedContent.push({
                'message': failure.message,
                'stack': failure.stack,
                'failedScreenShot':failure.additionalDetails.failedScreenShot, //bhavana
                "lineDetails":failure.lineDetails,
                'screenShotVisibilty': failedScreenShotAvailability ? 'block' : 'none'
            });
        }
        var suiteInfo = reportingInput.suites[reportingInput.suites.length - 1];
        if(i > 0)
            suiteInfo.failedCount++
        else
            suiteInfo.passedCount++
        spec.failedView = spec.failedContent;
        spec.failedExpCount=result.failedExpectations.length;
        spec.suiteDescription=suiteInfo.description;
        spec.status = result.status;
        spec.description = result.description;
        spec.duration = (new Date().getTime() - specStartDurations[result.id]) + ' ms';
        suiteInfo.specs.push(spec);
        reportingInput.date = getDate();
        reporterHTML = templatingEngine.parseHTML(reportingInput, baseTemplate);
        kony.automation.report("jasmineStatusReport","specDone",reporterHTML,reportingInput);
    },

    suiteDone: function (result) {
        var suite = reportingInput.suites[reportingInput.suites.length - 1],
            spec = suite.specs, i, suiteStatus = 'passed';

        suite.passedCount = 0;
        suite.failedCount = 0;
        suite.pendingCount = 0;

        for (i = 0; i < spec.length; i++) {
            if (spec[i].status === 'failed') {
                if (suiteStatus === 'passed') {
                    suiteStatus = 'failed';
                }
                suite.failedCount++;
            } else if (spec[i].status === 'pending') {
                if (suiteStatus === 'passed') {
                    suiteStatus = 'pending';
                }
                suite.pendingCount++;
            } else {
                suite.passedCount++;
            }
        }
        suite.status = suiteStatus;
        reportingInput.date = getDate();
        switch(suiteStatus) {
            case "passed":
            reportingInput.passedCount++;
            break;
            case "failed":
            reportingInput.failedCount++;
            break;
            case "pending":
            reportingInput.pendingCount++;
            break;
         }
        reporterHTML = templatingEngine.parseHTML(reportingInput, baseTemplate);
        kony.automation.report("jasmineStatusReport","suiteDone", reporterHTML,reportingInput);
        if(suiteStatus === 'failed'){
            failedTestSuites.push(suite.description);
        }
    },
    jasmineDone: function (result) {
        //replace Variables in html
        var suite = reportingInput.suites, i, jasmineStatus = 'passed', passedCount = 0,
            failedCount = 0, pendingCount = 0;

        for (i = 0; i < suite.length; i++) {
            if (suite[i].status === 'failed') {
                if (jasmineStatus === 'passed') {
                    jasmineStatus = 'failed';
                }
                failedCount++;
            } else if (suite[i].status === 'pending') {
                if (jasmineStatus === 'passed') {
                    jasmineStatus = 'pending';
                }
                pendingCount++;
            } else {
                passedCount++;
            }
        }
        reportingInput.status = jasmineStatus;
        reportingInput.pendingCount = pendingCount;
        reportingInput.failedCount = failedCount;
        reportingInput.passedCount = passedCount;
        reportingInput.date = getDate();

        reporterHTML = templatingEngine.parseHTML(reportingInput, baseTemplate);
        kony.automation.report("jasmineStatusReport","jasmineDone",reporterHTML,reportingInput);
        //Capturing Failed Test Suites by reading captureFailedTestSuites key value from metaInfo.json
        var rerunSuites = {
            "failedTestSuites" : failedTestSuites
        };
        kony.automation.report("jasmineStatusReport","jasmineDone","capturingFailedSuites",JSON.stringify(rerunSuites));
    }
};


getDate = function () {
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
    
    return dd + "-" + mm + "-" + today.getFullYear() + " " + hh + ":" + min + ":" + ss;
};

