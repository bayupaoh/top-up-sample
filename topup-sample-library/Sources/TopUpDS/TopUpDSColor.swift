//
//  Sample.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 16/05/25.
//

import UIKit

enum ColorPrimitive: String {

    case affluent600 = "affluent-600"
    case affluent700 = "affluent-700"
    case blue0 = "blue-0"
    case blue50 = "blue-50"
    case blue100 = "blue-100"
    case blue200 = "blue-200"
    case blue300 = "blue-300"
    case blue400 = "blue-400"
    case blue500 = "blue-500"
    case blue600 = "blue-600"
    case blue700 = "blue-700"
    case blue800 = "blue-800"
    case blue900 = "blue-900"
    case blue950 = "blue-950"
    case cyan0 = "cyan-0"
    case cyan50 = "cyan-50"
    case cyan100 = "cyan-100"
    case cyan200 = "cyan-200"
    case cyan300 = "cyan-300"
    case cyan400 = "cyan-400"
    case cyan500 = "cyan-500"
    case cyan600 = "cyan-600"
    case cyan700 = "cyan-700"
    case cyan800 = "cyan-800"
    case cyan900 = "cyan-900"
    case cyan950 = "cyan-950"
    case yellow0 = "yellow-0"
    case yellow50 = "yellow-50"
    case yellow100 = "yellow-100"
    case yellow200 = "yellow-200"
    case yellow300 = "yellow-300"
    case yellow400 = "yellow-400"
    case yellow500 = "yellow-500"
    case yellow600 = "yellow-600"
    case yellow700 = "yellow-700"
    case yellow800 = "yellow-800"
    case yellow900 = "yellow-900"
    case yellow950 = "yellow-950"
    case red0 = "red-0"
    case red50 = "red-50"
    case red100 = "red-100"
    case red200 = "red-200"
    case red300 = "red-300"
    case red400 = "red-400"
    case red500 = "red-500"
    case red600 = "red-600"
    case red700 = "red-700"
    case red800 = "red-800"
    case red900 = "red-900"
    case red950 = "red-950"
    case orange0 = "orange-0"
    case orange50 = "orange-50"
    case orange100 = "orange-100"
    case orange200 = "orange-200"
    case orange300 = "orange-300"
    case orange400 = "orange-400"
    case orange500 = "orange-500"
    case orange600 = "orange-600"
    case orange700 = "orange-700"
    case orange800 = "orange-800"
    case orange900 = "orange-900"
    case orange950 = "orange-950"
    case green0 = "green-0"
    case green50 = "green-50"
    case green100 = "green-100"
    case green200 = "green-200"
    case green300 = "green-300"
    case green400 = "green-400"
    case green500 = "green-500"
    case green600 = "green-600"
    case green700 = "green-700"
    case green800 = "green-800"
    case green900 = "green-900"
    case green950 = "green-950"
    case skyBlue0 = "skyblue-0"
    case skyBlue50 = "skyblue-50"
    case skyBlue100 = "skyblue-100"
    case skyBlue200 = "skyblue-200"
    case skyBlue300 = "skyblue-300"
    case skyBlue400 = "skyblue-400"
    case skyBlue500 = "skyblue-500"
    case skyBlue600 = "skyblue-600"
    case skyBlue700 = "skyblue-700"
    case skyBlue800 = "skyblue-800"
    case skyBlue900 = "skyblue-900"
    case skyBlue950 = "skyblue-950"
    case neutral0 = "neutral-0"
    case neutral25 = "neutral-25"
    case neutral50 = "neutral-50"
    case neutral100 = "neutral-100"
    case neutral200 = "neutral-200"
    case neutral300 = "neutral-300"
    case neutral400 = "neutral-400"
    case neutral500 = "neutral-500"
    case neutral600 = "neutral-600"
    case neutral700 = "neutral-700"
    case neutral800 = "neutral-800"
    case neutral900 = "neutral-900"
    case neutral950 = "neutral-950"

    var color: UIColor {
        switch self {
        case .affluent600: return UIColor(hexString: "#041F5B")
        case .affluent700: return UIColor(hexString: "#04143A")
        case .blue0: return UIColor(hexString: "#FFFFFF")
        case .blue50: return UIColor(hexString: "#E8E9FB")
        case .blue100: return UIColor(hexString: "#CDCFF7")
        case .blue200: return UIColor(hexString: "#9C9FF0")
        case .blue300: return UIColor(hexString: "#6A70E8")
        case .blue400: return UIColor(hexString: "#3940E1")
        case .blue500: return UIColor(hexString: "#1A22C9")
        case .blue600: return UIColor(hexString: "#141B9F")
        case .blue700: return UIColor(hexString: "#0F1478")
        case .blue800: return UIColor(hexString: "#0B0D50")
        case .blue900: return UIColor(hexString: "#050728")
        case .blue950: return UIColor(hexString: "#030416")
        case .cyan0: return UIColor(hexString: "#FFFFFF")
        case .cyan50: return UIColor(hexString: "#E5FFF6")
        case .cyan100: return UIColor(hexString: "#CCFFEE")
        case .cyan200: return UIColor(hexString: "#95FFDB")
        case .cyan300: return UIColor(hexString: "#60FFCA")
        case .cyan400: return UIColor(hexString: "#30FFB9")
        case .cyan500: return UIColor(hexString: "#08F6A6")
        case .cyan600: return UIColor(hexString: "#04C785")
        case .cyan700: return UIColor(hexString: "#009463")
        case .cyan800: return UIColor(hexString: "#016141")
        case .cyan900: return UIColor(hexString: "#013322")
        case .cyan950: return UIColor(hexString: "#011911")
        case .yellow0: return UIColor(hexString: "#FFFFFF")
        case .yellow50: return UIColor(hexString: "#FEF6E7")
        case .yellow100: return UIColor(hexString: "#FCEDD0")
        case .yellow200: return UIColor(hexString: "#FADCA5")
        case .yellow300: return UIColor(hexString: "#F7CA77")
        case .yellow400: return UIColor(hexString: "#F5B74C")
        case .yellow500: return UIColor(hexString: "#F2A92E")
        case .yellow600: return UIColor(hexString: "#C68621")
        case .yellow700: return UIColor(hexString: "#966517")
        case .yellow800: return UIColor(hexString: "#66450D")
        case .yellow900: return UIColor(hexString: "#302104")
        case .yellow950: return UIColor(hexString: "#181002")
        case .red0: return UIColor(hexString: "#FFFFFF")
        case .red50: return UIColor(hexString: "#FDE0E1")
        case .red100: return UIColor(hexString: "#FBC3C3")
        case .red200: return UIColor(hexString: "#F88687")
        case .red300: return UIColor(hexString: "#F6494C")
        case .red400: return UIColor(hexString: "#F6141E")
        case .red500: return UIColor(hexString: "#C70812")
        case .red600: return UIColor(hexString: "#9D050B")
        case .red700: return UIColor(hexString: "#750306")
        case .red800: return UIColor(hexString: "#4F0103")
        case .red900: return UIColor(hexString: "#270001")
        case .red950: return UIColor(hexString: "#130000")
        case .orange0: return UIColor(hexString: "#FFFFFF")
        case .orange50: return UIColor(hexString: "#FEF2E6")
        case .orange100: return UIColor(hexString: "#FDE5CE")
        case .orange200: return UIColor(hexString: "#FCCA9D")
        case .orange300: return UIColor(hexString: "#FAB16D")
        case .orange400: return UIColor(hexString: "#F99740")
        case .orange500: return UIColor(hexString: "#F87B22")
        case .orange600: return UIColor(hexString: "#C66419")
        case .orange700: return UIColor(hexString: "#954B10")
        case .orange800: return UIColor(hexString: "#633107")
        case .orange900: return UIColor(hexString: "#321902")
        case .orange950: return UIColor(hexString: "#180C01")
        case .green0: return UIColor(hexString: "#FFFFFF")
        case .green50: return UIColor(hexString: "#EEF7EF")
        case .green100: return UIColor(hexString: "#DDF0DD")
        case .green200: return UIColor(hexString: "#BCE0BB")
        case .green300: return UIColor(hexString: "#9BD199")
        case .green400: return UIColor(hexString: "#77C074")
        case .green500: return UIColor(hexString: "#5AAF55")
        case .green600: return UIColor(hexString: "#478B43")
        case .green700: return UIColor(hexString: "#376B33")
        case .green800: return UIColor(hexString: "#244722")
        case .green900: return UIColor(hexString: "#112411")
        case .green950: return UIColor(hexString: "#091208")
        case .skyBlue0: return UIColor(hexString: "#FFFFFF")
        case .skyBlue50: return UIColor(hexString: "#E8F3FE")
        case .skyBlue100: return UIColor(hexString: "#D5EAFC")
        case .skyBlue200: return UIColor(hexString: "#ACD5F9")
        case .skyBlue300: return UIColor(hexString: "#80BEF6")
        case .skyBlue400: return UIColor(hexString: "#58A9F2")
        case .skyBlue500: return UIColor(hexString: "#3796F0")
        case .skyBlue600: return UIColor(hexString: "#2477CD")
        case .skyBlue700: return UIColor(hexString: "#195999")
        case .skyBlue800: return UIColor(hexString: "#103D69")
        case .skyBlue900: return UIColor(hexString: "#061F34")
        case .skyBlue950: return UIColor(hexString: "#020E18")
        case .neutral0: return UIColor(hexString: "#FFFFFF")
        case .neutral25: return UIColor(hexString: "#F0F1F4")
        case .neutral50: return UIColor(hexString: "#E7E9EE")
        case .neutral100: return UIColor(hexString: "#D9DCE3")
        case .neutral200: return UIColor(hexString: "#C2C6D2")
        case .neutral300: return UIColor(hexString: "#AAB0C1")
        case .neutral400: return UIColor(hexString: "#9098AD")
        case .neutral500: return UIColor(hexString: "#78829B")
        case .neutral600: return UIColor(hexString: "#616B84")
        case .neutral700: return UIColor(hexString: "#50586C")
        case .neutral800: return UIColor(hexString: "#3F4556")
        case .neutral900: return UIColor(hexString: "#2C303B")
        case .neutral950: return UIColor(hexString: "#22262F")
        }
    }

}

enum ColorSemantic: String {

    // MARK: - Background
    case bgWhite = "bg-white"
    case bgGreyDefault = "bg-grey-default"
    case bgGreyBold = "bg-grey-bold"
    case bgGreySubtlest = "bg-grey-subtlest"
    case bgGreySubtle = "bg-grey-subtle"
    case bgDisabled = "bg-disabled"
    case bgOverlay = "bg-overlay"
    case bgBrandBoldDefault = "bg-brand-bold-default"
    case bgBrandBoldPressed = "bg-brand-bold-pressed"
    case bgBrandSubtleDefault = "bg-brand-subtle-default"
    case bgBrandSubtlePressed = "bg-brand-subtle-pressed"
    case bgSuccessBold = "bg-success-bold"
    case bgSuccessSubtle = "bg-success-subtle"
    case bgInfoBold = "bg-info-bold"
    case bgInfoSubtle = "bg-info-subtle"
    case bgWarningBold = "bg-warning-bold"
    case bgWarningSubtle = "bg-warning-subtle"
    case bgErrorBold = "bg-error-bold"
    case bgErrorSubtle = "bg-error-subtle"

    // MARK: - Text
    case textDefault = "text-default"
    case textSubtle = "text-subtle"
    case textSubtlest = "text-subtlest"
    case textDisabled = "text-disabled"
    case textInverse = "text-inverse"
    case textBrand = "text-brand"
    case textSuccess = "text-success"
    case textInfo = "text-info"
    case textWarning = "text-warning"
    case textError = "text-error"
    case textLink = "text-link"

    // MARK: - Icon
    case iconDefault = "icon-default"
    case iconSubtle = "icon-subtle"
    case iconInverse = "icon-inverse"
    case iconBrand = "icon-brand"
    case iconBrand2 = "icon-brand2"
    case iconDisabled = "icon-disabled"
    case iconSuccess = "icon-success"
    case iconInfo = "icon-info"
    case iconWarning = "icon-warning"
    case iconError = "icon-error"

    // MARK: - Border
    case borderDefault = "border-default"
    case borderDefaultBold = "border-default-bold"
    case borderBrand = "border-brand"
    case borderError = "border-error"
    case borderSuccess = "border-success"

    // MARK: - Speciality
    case overlayDefault = "overlay-default"

}

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
    
    class func bgWhite() -> UIColor { return ColorPrimitive.neutral0.color }
    class func bgGreyDefault() -> UIColor { return ColorPrimitive.neutral200.color }
    class func bgGreyBold() -> UIColor { return ColorPrimitive.neutral500.color }
    class func bgGreySubtlest() -> UIColor { return ColorPrimitive.neutral25.color }
    class func bgGreySubtle() -> UIColor { return ColorPrimitive.neutral50.color }
    class func bgDisabled() -> UIColor { return ColorPrimitive.neutral50.color }
    class func bgOverlay() -> UIColor { return ColorPrimitive.neutral950.color.withAlphaComponent(0.7) }
    class func bgBrandBoldDefault() -> UIColor { return ColorPrimitive.blue500.color }
    class func bgBrandBoldPressed() -> UIColor { return ColorPrimitive.blue600.color }
    class func bgBrandSubtleDefault() -> UIColor { return ColorPrimitive.blue50.color }
    class func bgBrandSubtlePressed() -> UIColor { return ColorPrimitive.blue200.color }
    class func bgSuccessBold() -> UIColor { return ColorPrimitive.green600.color }
    class func bgSuccessSubtle() -> UIColor { return ColorPrimitive.green50.color }
    class func bgInfoBold() -> UIColor { return ColorPrimitive.skyBlue600.color }
    class func bgInfoSubtle() -> UIColor { return ColorPrimitive.skyBlue50.color }
    class func bgWarningBold() -> UIColor { return ColorPrimitive.orange500.color }
    class func bgWarningSubtle() -> UIColor { return ColorPrimitive.orange50.color }
    class func bgErrorBold() -> UIColor { return ColorPrimitive.red500.color }
    class func bgErrorSubtle() -> UIColor { return ColorPrimitive.red50.color }

    class func textDefault() -> UIColor { return ColorPrimitive.neutral950.color }
    class func textSubtle() -> UIColor { return ColorPrimitive.neutral500.color }
    class func textSubtlest() -> UIColor { return ColorPrimitive.neutral400.color }
    class func textDisabled() -> UIColor { return ColorPrimitive.neutral200.color }
    class func textInverse() -> UIColor { return ColorPrimitive.neutral0.color }
    class func textBrand() -> UIColor { return ColorPrimitive.blue500.color }
    class func textSuccess() -> UIColor { return ColorPrimitive.green600.color }
    class func textInfo() -> UIColor { return ColorPrimitive.skyBlue600.color }
    class func textWarning() -> UIColor { return ColorPrimitive.orange500.color }
    class func textError() -> UIColor { return ColorPrimitive.red500.color }
    class func textLink() -> UIColor { return ColorPrimitive.blue500.color }

    class func iconDefault() -> UIColor { return ColorPrimitive.neutral950.color }
    class func iconSubtle() -> UIColor { return ColorPrimitive.neutral500.color }
    class func iconInverse() -> UIColor { return ColorPrimitive.neutral0.color }
    class func iconBrand() -> UIColor { return ColorPrimitive.blue500.color }
    class func iconBrand2() -> UIColor { return ColorPrimitive.yellow500.color }
    class func iconDisabled() -> UIColor { return ColorPrimitive.neutral200.color }
    class func iconSuccess() -> UIColor { return ColorPrimitive.green600.color }
    class func iconInfo() -> UIColor { return ColorPrimitive.skyBlue600.color }
    class func iconWarning() -> UIColor { return ColorPrimitive.orange500.color }
    class func iconError() -> UIColor { return ColorPrimitive.red500.color }

    class func borderDefault() -> UIColor { return ColorPrimitive.neutral50.color }
    class func borderDefaultBold() -> UIColor { return ColorPrimitive.neutral200.color }
    class func borderBrand() -> UIColor { return ColorPrimitive.blue500.color }
    class func borderError() -> UIColor { return ColorPrimitive.red500.color }
    class func borderSuccess() -> UIColor { return ColorPrimitive.green600.color }

    class func overlayDefault() -> UIColor { return ColorPrimitive.neutral950.color.withAlphaComponent(0.7) }
}
