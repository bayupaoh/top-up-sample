//
//  TopUpDSDivider.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 16/05/25.
//

import UIKit
import UIKitUtils

public enum TopUpDSDividerType: String {

    case module
    case section
    case dash

}

public class TopUpDSDivider: UIView {

    private let heightModuleDivider: CGFloat = 12
    private let heightSectionDivider: CGFloat = 1
    private let heightDashDivider: CGFloat = 1

    private let perDashLength: CGFloat = 5.0
    private let spaceBetweenDash: CGFloat = 3.0
    private var dashBorder: CAShapeLayer?

    public var type: TopUpDSDividerType = .module {
        didSet {
            setupDivider()
        }
    }

    public var dashColor: UIColor = .borderDefault() {
        didSet {
            setupDivider()
        }
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }

    public override func draw(_ rect: CGRect) {
        super.draw(rect)
        guard type == .dash else { return }
        let path = UIBezierPath()

        let p0 = CGPoint(x: self.bounds.minX, y: self.bounds.midY)
        path.move(to: p0)

        let p1 = CGPoint(x: self.bounds.maxX, y: self.bounds.midY)
        path.addLine(to: p1)
        path.lineWidth = frame.size.height

        let dashes: [ CGFloat ] = [5, 3]
        path.setLineDash(dashes, count: dashes.count, phase: 0.0)

        path.lineCapStyle = .butt
        dashColor.set()
        path.stroke()
    }

    private func configure() {
        backgroundColor = .borderDefault()
        layer.cornerRadius = 0
    }

    private func setupDivider() {
        switch type {
        case .module:
            setupModuleDivider()
        case .section:
            setupSectionDivider()
        case .dash:
            setupDashDivider()
        }
        layoutIfNeeded()
    }

    private func setupModuleDivider() {
        constraints.forEach { constraint in
            if constraint.firstAttribute == .height {
                constraint.constant = heightModuleDivider
            }
        }
        self.anchorHeightSize(constant: heightModuleDivider, type: .constant)
    }

    private func setupSectionDivider() {
        constraints.forEach { constraint in
            if constraint.firstAttribute == .height {
                constraint.constant = heightSectionDivider
            }
        }
        anchorHeightSize(constant: heightSectionDivider, type: .constant)
    }

    private func setupDashDivider() {
        backgroundColor = .clear
        constraints.forEach { constraint in
            if constraint.firstAttribute == .height {
                constraint.constant = heightDashDivider
            }
        }
        anchorHeightSize(constant: heightDashDivider, type: .constant)
    }
}

