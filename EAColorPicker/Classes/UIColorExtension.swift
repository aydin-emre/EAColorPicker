//
//  UIColorExtension.swift
//  EAColorPicker
//
//  Created by Emre AYDIN on 1/1/21.
//

import UIKit

@available(iOS 10.0, *)
extension UIColor {
    
    func toHex() -> String {
        let components = self.cgColor.components
        let r: CGFloat = components?[0] ?? 0.0
        let g: CGFloat = components?[1] ?? 0.0
        let b: CGFloat = components?[2] ?? 0.0
        
        let hexString = String.init(format: "%02lX%02lX%02lX", lroundf(Float(r * 255)), lroundf(Float(g * 255)), lroundf(Float(b * 255)))
        return hexString
    }
    
    var uiExtendedSRGBColorSpaceToUIColor: UIColor {
        guard let components = cgColor.components else { return UIColor.white }
        return CGColor(colorSpace: .extendedSRGB, components: components)?
            .converted(to: .sRGB, intent: .relativeColorimetric, options: nil)?.color ?? UIColor.white
    }
    
}

@available(iOS 10.0, *)
extension CGColorSpace {
    
    static let sRGB = CGColorSpace(name: CGColorSpace.sRGB)!
    static let extendedSRGB = CGColorSpace(name: CGColorSpace.extendedSRGB)!
    
}

extension CGColor {
    
    var color: UIColor { .init(cgColor: self) }
    
}
