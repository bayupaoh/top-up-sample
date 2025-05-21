//
//  TopUpTab.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 17/05/25.
//

import UIKit

public class TopUpTabView: UIView {
    public var isSelected: Bool = true {
        didSet {
            titleLabel.font = isSelected ? .bodySmSemiBold() : .bodySmSemiBold()
            titleLabel.textColor = isSelected ? .textBrand() : .textSubtle()
            activeDividerView.isHidden = !isSelected
            inactiveDividerView.isHidden = isSelected
        }
    }

    public var title: String = "" {
        didSet {
            titleLabel.text = title
        }
    }

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .textDefault()
        label.font = .bodySmSemiBold()
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var activeDividerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .borderDefault()
        return view
    }()
    
    private lazy var inactiveDividerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .borderBrand()
        return view
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupConstraints()
    }

    private func setupConstraints() {
        addSubview(titleLabel)
        titleLabel
            .anchorX()
            .anchorTopBottom(
                toTop: self.topAnchor,
                toBottom: self.bottomAnchor,
                constant: .init(.spaceSm(), .spaceSm())
            )
        addSubview(inactiveDividerView)
        addSubview(activeDividerView)
        inactiveDividerView
            .anchorLeadingTrailing(
                toLeading: self.leadingAnchor,
                toTrailing: self.trailingAnchor
            )
            .anchorBottom(to: self.bottomAnchor)
            .anchorHeightSize(constant: 1.0, type: .constant)
        activeDividerView
            .anchorLeadingTrailing(
                toLeading: self.leadingAnchor,
                toTrailing: self.trailingAnchor
            )
            .anchorBottom(to: self.bottomAnchor)
            .anchorHeightSize(constant: 2.0, type: .constant)
    }
}
