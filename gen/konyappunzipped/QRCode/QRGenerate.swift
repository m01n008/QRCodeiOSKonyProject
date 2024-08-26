//
//  QRGenerate.swift
//  KonyJS
//
//  Created by Zain Shaikh on 19/12/2023.
//

import Foundation
import UIKit

@objc(QRGenerate)
class QRGenerate : NSObject {
    
    var qrcodeImage: CIImage! = nil
    
    @objc
    func makeQrCode(_ callBackForKony:CallBack,paramDict: Dictionary<String, Any>) {
        qrcodeImage = nil
        let text = paramDict["text"] as! String
        guard let filter = CIFilter(name: "CIQRCodeGenerator") else { return }
        guard let data = text.data(using: .isoLatin1, allowLossyConversion: false) else { return }

        filter.setValue(data, forKey: "inputMessage")
        filter.setValue("M", forKey: "inputCorrectionLevel")

        qrcodeImage = filter.outputImage

        if let qrcodeImage = qrcodeImage {
            let scaleFactor = 400 / qrcodeImage.extent.width
                        let scaledImage = qrcodeImage.transformed(by: CGAffineTransform(scaleX: scaleFactor, y: scaleFactor))

                        let context = CIContext()
                        if let cgImage = context.createCGImage(scaledImage, from: scaledImage.extent) {
                            let uiImage = UIImage(cgImage: cgImage)

                            if let imageData = uiImage.pngData() {
                                let base64String = imageData.base64EncodedString()
                                let initData = ["base64Text": base64String]
                                print(initData)
                                let instanceOfGenericClass: ScanQRWrapperClass = ScanQRWrapperClass()
                                instanceOfGenericClass.executeCallBack(initData, callBackForKony)
                            }
            }
        }
    }
}
