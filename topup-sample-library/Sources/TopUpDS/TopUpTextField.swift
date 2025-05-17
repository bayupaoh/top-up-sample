//
//  TopUpPhoneTextField.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 16/05/25.
//

import UIKit
import UIKitUtils

public class TopUpTextField: UIView {
    public var isLeadingIconHidden: Bool = true {
        didSet {
            leadingIconContainerView.isHidden = isLeadingIconHidden
        }
    }

    public var isSecondaryTrailingIconHidden: Bool = true {
        didSet {
            trailingIcon2ContainerView.isHidden = isSecondaryTrailingIconHidden
        }
    }

    public var isTrailingIconHidden: Bool = true {
        didSet {
            trailingIconContainerView.isHidden = isTrailingIconHidden
        }
    }
    
    public var leadingIcon: UIImage? {
        didSet {
            leadingIconImageView.image = leadingIcon
        }
    }

    public var secondaryTrailingIcon: UIImage? {
        didSet {
            trailingIcon2ImageView.image = secondaryTrailingIcon
        }
    }

    public var trailingIcon: UIImage? {
        didSet {
            trailingIconImageView.image = trailingIcon
        }
    }
    
    public var placeholder: String = "" {
        didSet {
            textField.placeholder = placeholder
        }
    }
    
    public var keyboardType: UIKeyboardType = .default {
        didSet {
            textField.keyboardType = keyboardType
        }
    }

    var onTextFieldChanged: ((String?) -> Void)?
    var onLeadingIconDidPressed: (() -> Void)?
    var onSecondaryTrailingIconDidPressed: (() -> Void)?
    var onTrailingIconDidPressed: (() -> Void)?

    private lazy var containerStackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.alignment = .fill
        view.axis = .horizontal
        view.distribution = .fill
        view.spacing = CGFloat.spaceXs()
        return view
    }()
    
    private lazy var leadingIconContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        return view
    }()

    private lazy var leadingIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .iconSubtle()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private lazy var containerTextFieldStackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.alignment = .fill
        view.axis = .vertical
        view.distribution = .fill
        view.spacing = CGFloat.spaceXs()
        return view
    }()

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .textDefault()
        label.font = .bodyXsSemiBold()
        label.numberOfLines = 1
        return label
    }()

    private lazy var captionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .textSubtle()
        label.font = .bodyXsReguler()
        label.numberOfLines = 1
        return label
    }()

    private lazy var errorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .textError()
        label.font = .bodyXsReguler()
        label.numberOfLines = 1
        label.isHidden = true
        return label
    }()

    private lazy var textFieldStackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.alignment = .fill
        view.axis = .horizontal
        view.distribution = .fill
        view.spacing = CGFloat.spaceSm()
        return view
    }()

    private lazy var textFieldView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.bgWhite()
        return view
    }()

    private lazy var trailingIcon2ContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        view.isHidden = true
        return view
    }()

    
    private lazy var textFieldDividerView: TopUpDSDivider = {
        let view = TopUpDSDivider()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.type = .module
        return view
    }()

    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.adjustsFontForContentSizeCategory = true
        textField.font = .bodySmReguler()
        textField.textColor = .textDefault()
        return textField
    }()
    
    private lazy var trailingIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .iconSubtle()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private lazy var trailingIconContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        return view
    }()

    private lazy var trailingIcon2ImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .iconDefault()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()


    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupAppearances()
        setupConstraints()
    }

    public func showCaptionText(_ text: String) {
        errorLabel.isHidden = true
        captionLabel.isHidden = false
        captionLabel.text = text
    }

    public func showErrorText(_ text: String) {
        errorLabel.isHidden = false
        captionLabel.isHidden = true
        errorLabel.text = text
    }

    private func setupAppearances() {
        leadingIconContainerView.isHidden = isLeadingIconHidden
        trailingIcon2ContainerView.isHidden = isSecondaryTrailingIconHidden
        trailingIconContainerView.isHidden = isTrailingIconHidden
        leadingIconImageView.image = leadingIcon
        trailingIcon2ImageView.image = secondaryTrailingIcon
        trailingIconImageView.image = trailingIcon
        textField.placeholder = placeholder
        textField.keyboardType = keyboardType
        errorLabel.isHidden = true
        captionLabel.isHidden = true
    }

    private func setupConstraints() {
        addSubview(containerStackView)
        containerStackView
            .anchorLeading(to: self.leadingAnchor, constant: .spaceLg())
            .anchorTrailing(to: self.trailingAnchor, constant: .spaceLg())
            .anchorTop(to: self.topAnchor, constant: .space0())
            .anchorBottom(to: self.bottomAnchor, constant: .space0())
        containerStackView.addArrangedSubview(leadingIconContainerView)
        leadingIconContainerView.addSubview(leadingIconImageView)
        leadingIconImageView
            .anchorCenterXY()
            .anchorHeightSize(constant: .spaceXl(), type: .constant)
            .anchorWidthSize(constant: .spaceXl(), type: .constant)
            .anchorLeadingTrailing(
                toLeading: leadingIconContainerView.leadingAnchor,
                toTrailing: leadingIconContainerView.trailingAnchor,
                constant: .init(.space0(), .space0()))
        containerStackView.addArrangedSubview(containerTextFieldStackView)
        containerTextFieldStackView.addArrangedSubview(titleLabel)
        containerTextFieldStackView.addArrangedSubview(textFieldStackView)
        containerTextFieldStackView.addArrangedSubview(captionLabel)
        containerTextFieldStackView.addArrangedSubview(errorLabel)
        textFieldStackView.addArrangedSubview(textFieldView)
        textFieldView.addSubview(textField)
        trailingIconImageView
            .anchorAll(
                top: textFieldView.topAnchor,
                bottom: textFieldView.bottomAnchor,
                leading: textFieldView.leadingAnchor,
                trailing: textFieldView.trailingAnchor
            )
        textFieldView.addSubview(textFieldDividerView)
        textFieldDividerView
            .anchorLeadingTrailing(
                toLeading: textFieldView.leadingAnchor,
                toTrailing: textFieldView.trailingAnchor
            )
            .anchorBottom(to: textFieldView.bottomAnchor)
        textFieldView.addSubview(trailingIconContainerView)
        trailingIconContainerView
            .anchorTopBottom(
                toTop: textFieldView.topAnchor,
                toBottom: textFieldView.bottomAnchor,
                constant: .init(.space0(), .space0())
            )
            .anchorTrailing(to: textFieldView.trailingAnchor, constant: .space0())
        trailingIconContainerView.addSubview(trailingIconImageView)
        trailingIconImageView
            .anchorAll(
                top: trailingIconContainerView.topAnchor,
                bottom: trailingIconContainerView.bottomAnchor,
                leading: trailingIconContainerView.leadingAnchor,
                trailing: trailingIconContainerView.trailingAnchor
            )
        textFieldStackView.addArrangedSubview(trailingIcon2ContainerView)
        trailingIcon2ContainerView.addSubview(trailingIcon2ImageView)
        trailingIcon2ImageView
            .anchorAll(
                top: trailingIcon2ContainerView.topAnchor,
                bottom: trailingIcon2ContainerView.bottomAnchor,
                leading: trailingIcon2ContainerView.leadingAnchor,
                trailing: trailingIcon2ContainerView.trailingAnchor
            )
    }
}
