define("userfrmQRController", {
    onScanQRBtnClick: function() {
        QRCodeFFIiOS.scanQRCode(this.QRScannedResultCallBack);
    },
    onGenQRBtnClick: function() {
        var input = null;
        input = this.view.URLtextBox.text;
        input = {
            input
        }; 
        QRCodeFFIiOS.genQRCode(input, this.QRGenResultCallBack);
    },
    QRGenResultCallBack: function(result) {
        this.view.qrImage.base64 = result.base64Text;
        this.view.qrImage.isVisible = true;
    },
    QRScannedResultCallBack: function(result) {
        this.view.URLtextBox.text = result.qrlink;  
        alert("QRCode Scanned");
    },
});
define("frmQRControllerActions", {
    /*
      This is an auto generated file and any modifications to it may result in corruption of the action sequence.
    */
    /** onClick defined for btnGenQR **/
    AS_Button_a2d6bc54057c408fb857c9316601491c: function AS_Button_a2d6bc54057c408fb857c9316601491c(eventobject) {
        var self = this;
        return self.onGenQRBtnClick.call(this);
    },
    /** onClick defined for btnScanQR **/
    AS_Button_e2d74e7cea8647a08a4edda10f26ef29: function AS_Button_e2d74e7cea8647a08a4edda10f26ef29(eventobject) {
        var self = this;
        return self.onScanQRBtnClick.call(this);
    }
});
define("frmQRController", ["userfrmQRController", "frmQRControllerActions"], function() {
    var controller = require("userfrmQRController");
    var controllerActions = ["frmQRControllerActions"];
    return kony.visualizer.mixinControllerActions(controller, controllerActions);
});
