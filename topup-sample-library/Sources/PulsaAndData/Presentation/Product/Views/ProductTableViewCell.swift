//
//  NominalTableViewCell.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 19/05/25.
//

import UIKit
import TopUpDS

final class ProductTableViewCell: UITableViewCell {
    private lazy var nominalLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .textDefault()
        label.font = .bodyXsReguler()
        label.numberOfLines = 1
        label.text = "Nominal"
        return label
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .textDefault()
        label.font = .bodyMdReguler()
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var button: TopUpButton = {
        let button = TopUpButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.buttonStyle = .primary
        button.buttonSize = .small
        button.originalButtonText = "Rp.1000"
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        addSubview(nominalLabel)
        nominalLabel
            .anchorTop(
                to: self.topAnchor,
                constant: .spaceMd()
            )
            .anchorLeading(
                to: self.leadingAnchor,
                constant: .spaceLg()
            )
        addSubview(titleLabel)
        titleLabel
            .anchorTop(
                to: nominalLabel.bottomAnchor,
                constant: .spaceXs()
            )
            .anchorLeading(
                to: self.leadingAnchor,
                constant: .spaceLg()
            )
            .anchorBottom(
                to: self.bottomAnchor,
                constant: .spaceMd()
            )
        addSubview(button)
        button
            .anchorTrailing(
                to: self.trailingAnchor,
                constant: .spaceLg()
            )
            .anchorWidthSize(
                constant: .space3Xl(),
                type: .constant
            )
    }
}
