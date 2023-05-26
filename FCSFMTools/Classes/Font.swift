//
//  LC.swift
//  LittleCase
//
//  Created by fumin on 2021/7/28.
//

import UIKit

public extension UIFont {
    public enum FontName: String {
        case pingFangSCRegular = "PingFangSC-Regular"
        case pingFangSCMedium = "PingFangSC-Medium"
        case pingFangSCSemibold = "PingFangSC-Semibold"
    }
    public  static func font(name: UIFont.FontName? = .pingFangSCRegular, size: CGFloat, weight: UIFont.Weight? = nil) -> UIFont {
        if let weight = weight {
            return UIFont.systemFont(ofSize: size, weight: weight)
        }
        else {
            if let font = UIFont(name: name?.rawValue ?? UIFont.FontName.pingFangSCRegular.rawValue, size: size) {
                return font
            }
            return UIFont.systemFont(ofSize: size)
        }
    }
    
    
}
