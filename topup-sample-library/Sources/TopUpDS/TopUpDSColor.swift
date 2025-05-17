//
//  Sample.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 16/05/25.
//

import UIKit

public extension UIColor {

    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let alpha: UInt64
        let red: UInt64
        let green: UInt64
        let blue: UInt64

        switch hex.count {
        case 3: // RGB (12-bit)
            (alpha, red, green, blue) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (alpha, red, green, blue) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (alpha, red, green, blue) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (alpha, red, green, blue) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: CGFloat(alpha) / 255)
    }

    class func bgWhite() -> UIColor { return UIColor(hexString: "#ffffff") }
    class func bgBrandBold() -> UIColor { return UIColor(hexString: "#239beb") }
    class func bgButtton() -> UIColor { return UIColor(hexString: "#eb915c") }

    class func textDefault() -> UIColor { return UIColor(hexString: "#2d2d2d") }
    class func textSubtle() -> UIColor { return UIColor(hexString: "#a1a1a1") }
    class func textWhite() -> UIColor { return UIColor(hexString: "#ffffff") }
    class func textError() -> UIColor { return UIColor(hexString: "#C70812") }
    class func textTabSelected() -> UIColor { return UIColor(hexString: "#eb915c") }

    class func iconDefault() -> UIColor { return UIColor(hexString: "#6d6d6d") }
    class func iconSubtle() -> UIColor { return UIColor(hexString: "#9b9b9b") }
    class func iconWhite() -> UIColor { return UIColor(hexString: "#ffffff") }

    class func borderDefault() -> UIColor { return UIColor(hexString: "#2d2d2d") }
    class func borderTabSelected() -> UIColor { return UIColor(hexString: "#eb915c") }
}
