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
    public static func createQRImage(_ encode: String) -> UIImage? {
        
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
}
