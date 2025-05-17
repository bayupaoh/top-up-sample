//
//  TopUpDSFont.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 16/05/25.
//

import UIKit

public extension UIFont {

    class func heading2Xl() -> UIFont {
        UIFont.systemFont(ofSize: 24, weight: .bold).scaledFont()
    }
    class func headingXl() -> UIFont {
        UIFont.systemFont(ofSize: 20, weight: .bold).scaledFont()
    }
    class func headingLg() -> UIFont {
        UIFont.systemFont(ofSize: 18, weight: .bold).scaledFont()
    }
    class func headingMd() -> UIFont {
        UIFont.systemFont(ofSize: 16, weight: .bold).scaledFont()
    }
    class func headingSm() -> UIFont {
        UIFont.systemFont(ofSize: 14, weight: .bold).scaledFont()
    }
    class func bodyMdReguler() -> UIFont {
        UIFont.systemFont(ofSize: 16, weight: .regular).scaledFont()
    }
    class func bodyMdSemiBold() -> UIFont {
        UIFont.systemFont(ofSize: 16, weight: .semibold).scaledFont()
    }
    class func bodySmReguler() -> UIFont {
        UIFont.systemFont(ofSize: 14, weight: .regular).scaledFont()
    }
    class func bodySmSemiBold() -> UIFont {
        UIFont.systemFont(ofSize: 14, weight: .semibold).scaledFont()
    }
    class func bodyXsReguler() -> UIFont {
        UIFont.systemFont(ofSize: 12, weight: .regular).scaledFont()
    }
    class func bodyXsSemiBold() -> UIFont {
        UIFont.systemFont(ofSize: 12, weight: .semibold).scaledFont()
    }
    class func bodyXxsReguler() -> UIFont {
        UIFont.systemFont(ofSize: 10, weight: .regular).scaledFont()
    }
    class func bodyXxsSemiBold() -> UIFont {
        UIFont.systemFont(ofSize: 10, weight: .semibold).scaledFont()
    }

    private func scaledFont() -> UIFont {
        UIFontMetrics.default.scaledFont(for: self)
    }
}

public extension NSAttributedString {

    static func heading2Xl(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 36.0,
            font: .heading2Xl(),
            textColor: textColor,
            isUnderline: false
        )
    }

    static func headingXl(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 30.0,
            font: .headingXl(),
            textColor: textColor,
            isUnderline: false
        )
    }

    static func headingLg(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 27.0,
            font: .headingLg(),
            textColor: textColor,
            isUnderline: false
        )
    }

    static func headingMd(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 24.0,
            font: .headingMd(),
            textColor: textColor,
            isUnderline: false
        )
    }

    static func headingSm(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 21.0,
            font: .headingSm(),
            textColor: textColor,
            isUnderline: false
        )
    }

    static func bodyMdReguler(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 24.0,
            font: .bodyMdReguler(),
            textColor: textColor,
            isUnderline: false
        )
    }

    static func bodyMdSemiBold(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 24.0,
            font: .bodyMdSemiBold(),
            textColor: textColor,
            isUnderline: false
        )
    }

    static func bodyMdUnderline(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 24.0,
            font: .bodyMdReguler(),
            textColor: textColor,
            isUnderline: true
        )
    }

    static func bodySmReguler(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 24.0,
            font: .bodySmReguler(),
            textColor: textColor,
            isUnderline: false
        )
    }

    static func bodySmSemiBold(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 24.0,
            font: .bodySmSemiBold(),
            textColor: textColor,
            isUnderline: false
        )
    }

    static func bodySmUnderline(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 24.0,
            font: .bodySmReguler(),
            textColor: textColor,
            isUnderline: true
        )
    }

    static func bodyXsReguler(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 20.0,
            font: .bodyXsReguler(),
            textColor: textColor,
            isUnderline: false
        )
    }

    static func bodyXsSemiBold(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 20.0,
            font: .bodyXsSemiBold(),
            textColor: textColor,
            isUnderline: false
        )
    }

    static func bodyXsUnderline(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 16.0,
            font: .bodyXsReguler(),
            textColor: textColor,
            isUnderline: true
        )
    }

    static func bodyXxsReguler(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 16.0,
            font: .bodyXxsReguler(),
            textColor: textColor,
            isUnderline: false
        )
    }

    static func bodyXxsSemiBold(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 16.0,
            font: .bodyXxsSemiBold(),
            textColor: textColor,
            isUnderline: false
        )
    }

    static func bodyXxsUnderline(
        value: String,
        textColor: UIColor = .textDefault(),
        alignment: NSTextAlignment = .left
    ) -> NSAttributedString {
        return setTypography(
            value: value,
            alignment: alignment,
            lineHeight: 16.0,
            font: .bodyXxsReguler(),
            textColor: textColor,
            isUnderline: true
        )
    }

    private static func setTypography(
        value: String,
        alignment: NSTextAlignment,
        lineHeight: Double,
        font: UIFont,
        textColor: UIColor,
        isUnderline: Bool
    ) -> NSAttributedString {
        let baselineOffset = (lineHeight - font.lineHeight) / 2.0
        let mutableParagraphStyle = NSMutableParagraphStyle()
        mutableParagraphStyle.minimumLineHeight = lineHeight
        mutableParagraphStyle.maximumLineHeight = lineHeight
        mutableParagraphStyle.alignment = alignment
        mutableParagraphStyle.lineBreakMode = .byTruncatingTail
        var attributes: [NSAttributedString.Key : Any] = [
            .font: font,
            .foregroundColor: textColor,
            .baselineOffset: baselineOffset,
            .paragraphStyle: mutableParagraphStyle
        ]

        if isUnderline {
            attributes[.underlineStyle] = NSUnderlineStyle.single.rawValue
        }

        let attributtedString = NSAttributedString(
            string: value,
            attributes: attributes
        )
        return attributtedString
    }
}
