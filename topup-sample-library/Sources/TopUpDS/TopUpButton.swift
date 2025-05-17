//
//  TopUpButton.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 17/05/25.
//

import UIKit

public enum TopUpButtonStyle {
    case primary
    case secondary

    var backgroundColor: UIColor {
        switch self {
        case .primary:
            return .bgBrandBold()
        case .secondary:
            return .bgButtton()
        }
    }

    var titleColor: UIColor {
        return .textWhite()
    }

    var pressedTitleColor: UIColor {
        return .textWhite()
    }

    var pressedBgColor: UIColor {
        switch self {
        case .primary:
            return .bgBrandBold()
        case .secondary:
            return .bgButtton()
        }
    }

    var disabledBgColor: UIColor {
        switch self {
        case .primary:
            return .bgBrandBold()
        case .secondary:
            return .bgButtton()
        }
    }

    var disabledTitleColor: UIColor {
        return .textWhite()
    }

    var indicatorColor: UIColor {
        return .textWhite()
    }
}

public enum TopUpButtonSize {
    case small
    case large

    var height: CGFloat {
        switch self {
        case .small:
            return 32
        case .large:
            return 48
        }
    }

    var cornerRadius: CGFloat {
        switch self {
        case .small:
            return 12
        case .large:
            return 16
        }
    }

    var font: UIFont {
        switch self {
        case .small:
            return .bodySmReguler()
        case .large:
            return .bodyMdReguler()
        }
    }
    var verticalInsets: CGFloat {
        switch self {
        case .small:
            return 4
        case .large:
            return 12
        }
    }
    var horizontalInsets: CGFloat {
        switch self {
        case .small:
            return 16
        case .large:
            return 24
        }
    }
}

public class TopUpButton : UIButton {
    var originalButtonText: String?
    var activityIndicator: UIActivityIndicatorView!

    var buttonStyle: TopUpButtonStyle = .primary {
        didSet {
            applyStyle()
        }
    }
    var buttonSize: TopUpButtonSize = .large {
        didSet {
            applyStyle()
        }
    }

    override open var isHighlighted: Bool {
        didSet {
            super.isHighlighted = isHighlighted
            backgroundColor = isHighlighted ? buttonStyle.pressedBgColor : buttonStyle.backgroundColor
        }
    }

    init(_ style: TopUpButtonStyle = .primary, _ size: TopUpButtonSize = .large) {
        super.init(frame: .zero)
        self.buttonSize = size
        self.buttonStyle = style
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    private func applyStyle() {
        titleLabel?.adjustsFontForContentSizeCategory = true
        titleLabel?.font = buttonSize.font
        layer.cornerRadius = buttonSize.cornerRadius
        setTitleColor(buttonStyle.titleColor, for: .normal)
        setTitleColor(buttonStyle.disabledTitleColor, for: .disabled)
        setTitleColor(buttonStyle.pressedTitleColor, for: .selected)
        setTitleColor(buttonStyle.pressedTitleColor, for: .highlighted)
        setBackgroundColor(buttonStyle.backgroundColor, for: .normal)
        setBackgroundColor(buttonStyle.disabledBgColor, for: .disabled)
        self.anchorHeightSize(constant: buttonSize.height, type: .constant)
    }

    public func showLoading() {
        originalButtonText = self.titleLabel?.text
        self.setTitle("", for: .normal)

        if (activityIndicator == nil) {
            activityIndicator = createActivityIndicator()
        }

        showSpinning()
    }

    public func hideLoading() {
        self.setTitle(self.originalButtonText, for: .normal)
        activityIndicator.stopAnimating()
    }

    private func createActivityIndicator() -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView()
        activityIndicatorView.hidesWhenStopped = true
        activityIndicatorView.color = buttonStyle.indicatorColor
        return activityIndicatorView
    }

    private func showSpinning() {
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(activityIndicator)
        centerActivityIndicatorInButton()
        activityIndicator.startAnimating()
    }

    private func centerActivityIndicatorInButton() {
        let xCenterConstraint = NSLayoutConstraint(
            item: self,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: activityIndicator,
            attribute: .centerX,
            multiplier: 1,
            constant: 0
        )
        self.addConstraint(xCenterConstraint)

        let yCenterConstraint = NSLayoutConstraint(
            item: self,
            attribute: .centerY,
            relatedBy: .equal,
            toItem: activityIndicator,
            attribute: .centerY,
            multiplier: 1,
            constant: 0
        )
        self.addConstraint(yCenterConstraint)
    }
    
    private func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        clipsToBounds = true
        setBackgroundImage(image(withColor: color), for: state)
    }
    
    private func image(withColor color: UIColor) -> UIImage? {
        let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(color.cgColor)
            context.fill(rect)
        }
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
