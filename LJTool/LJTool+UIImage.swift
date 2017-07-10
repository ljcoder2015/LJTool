//
//  LJTool+UIImage.swift
//  LovedEveryMonth
//
//  Created by ljcoder on 2017/6/23.
//  Copyright © 2017年 shanglv. All rights reserved.
//

import Foundation
import UIKit

extension UIImage: LJToolCompatible {
    
}

extension LJTool where Base: UIImage {

    /// Create QRImage
    ///
    /// - Parameter encode: encode string
    /// - Returns: QR image
    public static func QRImage(_ encode: String) -> UIImage? {
        
        let data = encode.data(using: .utf8)
        
        let filter = CIFilter(name: "CIQRCodeGenerator")
        filter?.setValue(data, forKey: "inputMessage")
        
        // 获取二维码图片
        let outputImage = filter?.outputImage
        let transform = CGAffineTransform(scaleX: 10, y: 10)
        let transformImage = outputImage?.applying(transform)
        
        //保存二维码图片
        guard let image = transformImage else {
            return nil
        }
        let context = CIContext(options: nil)
        let imageRef = context.createCGImage(image, from: image.extent)
        guard let CGImage = imageRef else {
            return nil
        }
        return UIImage(cgImage: CGImage)
    }
    
    /// Create Image with color
    ///
    /// - Parameters:
    ///   - color: image color
    ///   - size: image size, default is CGSize(width: 6, height: 6)
    /// - Returns: color image
    public static func image(with color: UIColor, size: CGSize = CGSize(width: 6, height: 6)) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
        let context = UIGraphicsGetCurrentContext()
        guard let currentContext = context else {
            return nil
        }
        currentContext.setFillColor(color.cgColor)
        currentContext.fill(CGRect(x: 0, y: 0, width: size.width, height: size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
