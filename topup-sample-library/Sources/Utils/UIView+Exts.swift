//
//  Sample.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 16/05/25.
//

import UIKit

public extension UIView {
    func fixConstraintsInView(_ container: UIView!) {
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0)
        ])
    }
    
    func anchorCenterXToSuperview(constant: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        if let anchor = superview?.centerXAnchor {
            centerXAnchor.constraint(equalTo: anchor, constant: constant).isActive = true
        }
    }
    
    func anchorCenterYToSuperview(constant: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        if let anchor = superview?.centerYAnchor {
            centerYAnchor.constraint(equalTo: anchor, constant: constant).isActive = true
        }
    }
    
    func anchorCenterSuperview() {
        anchorCenterXToSuperview()
        anchorCenterYToSuperview()
    }
    
}

public extension UIView {
    enum ConstraintType {
        case constant
        case propotionalTo(NSLayoutDimension)
    }
    
    struct LTConstants {
        var leading: CGFloat
        var trailing: CGFloat
        
        public init(_ leading: CGFloat, _ trailing: CGFloat) {
            self.leading = leading
            self.trailing = trailing
        }
    }
    
    struct TBConstants {
        var top: CGFloat
        var bottom: CGFloat
        
        public init(_ top: CGFloat, _ bottom: CGFloat) {
            self.top = top
            self.bottom = bottom
        }
    }
    
    struct AllConstants {
        var top: CGFloat
        var bottom: CGFloat
        var leading: CGFloat
        var trailing: CGFloat
        
        public init(_ leading: CGFloat, _ top: CGFloat, _ trailing: CGFloat, _ bottom: CGFloat) {
            self.top = top
            self.bottom = bottom
            self.leading = leading
            self.trailing = trailing
        }
    }
    
    @discardableResult
    func anchorX(constant: CGFloat = 0.0) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        if let centerX = superview?.centerXAnchor {
            self.centerXAnchor.constraint(equalTo: centerX, constant: constant).isActive = true
        }
        return self
    }
    
    @discardableResult
    func anchorY(constant: CGFloat = 0.0) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        if let anchorY = superview?.centerYAnchor {
            self.centerYAnchor.constraint(equalTo: anchorY, constant: constant).isActive = true
        }
        return self
    }
    
    @discardableResult
    func anchorCenterXY() -> Self {
        self.anchorX()
        self.anchorY()
        return self
    }
    
    @discardableResult
    func anchorTop(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        if superview != nil {
            self.topAnchor.constraint(equalTo: anchor, constant: constant).isActive = true
        }
        return self
    }
    
    @discardableResult
    func anchorBottom(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        if superview != nil {
            self.bottomAnchor.constraint(equalTo: anchor, constant: -constant).isActive = true
        }
        return self
    }
    
    @discardableResult
    func anchorTopBottom(toTop anchorTop: NSLayoutYAxisAnchor, toBottom anchorBottom: NSLayoutYAxisAnchor, constant: TBConstants = .init(0, 0)) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        self.anchorTop(to: anchorTop, constant: constant.top)
        self.anchorBottom(to: anchorBottom, constant: constant.bottom)
        return self
    }
    
    @discardableResult
    func anchorLeading(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        if superview != nil {
            self.leadingAnchor.constraint(equalTo: anchor, constant: constant).isActive = true
        }
        return self
    }
    
    @discardableResult
    func anchorTrailing(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        if superview != nil {
            self.trailingAnchor.constraint(equalTo: anchor, constant: -constant).isActive = true
        }
        return self
    }
    
    @discardableResult
    func anchorLeadingTrailing(toLeading anchorLeading: NSLayoutXAxisAnchor, toTrailing anchorTrailing: NSLayoutXAxisAnchor, constant: LTConstants = .init(0, 0)) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        self.anchorLeading(to: anchorLeading, constant: constant.leading)
        self.anchorTrailing(to: anchorTrailing, constant: constant.trailing)
        return self
    }
    
    @discardableResult
    func anchorAll(
        top anchorTop: NSLayoutYAxisAnchor,
        bottom anchorBottom: NSLayoutYAxisAnchor,
        leading anchorLeading: NSLayoutXAxisAnchor,
        trailing anchorTrailing: NSLayoutXAxisAnchor,
        constant: AllConstants = .init(0, 0, 0, 0)
    ) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        self.anchorTop(to: anchorTop, constant: constant.top)
        self.anchorBottom(to: anchorBottom, constant: constant.bottom)
        self.anchorLeading(to: anchorLeading, constant: constant.leading)
        self.anchorTrailing(to: anchorTrailing, constant: constant.trailing)
        return self
    }
    
    @discardableResult
    func anchorAll(
        to view: UIView,
        constant: AllConstants = .init(0, 0, 0, 0)
    ) -> Self {
        self.anchorTop(to: view.topAnchor, constant: constant.top)
        self.anchorBottom(to: view.bottomAnchor, constant: constant.bottom)
        self.anchorLeading(to: view.leadingAnchor, constant: constant.leading)
        self.anchorTrailing(to: view.trailingAnchor, constant: constant.trailing)
        return self
    }
    
    @discardableResult
    func anchorWidthSize(constant: CGFloat, type: ConstraintType) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        guard let _ = superview else { return self }
        switch type {
        case .constant:
            self.widthAnchor.constraint(equalToConstant: constant).isActive = true
        case .propotionalTo(let anchor):
            self.widthAnchor.constraint(equalTo: anchor, multiplier: constant).isActive = true
        }
        return self
    }
    
    func anchorWidthSize(greaterThanOrEqualTo constant: CGFloat, type: ConstraintType) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        guard let _ = superview else { return self }
        switch type {
        case .constant:
            self.widthAnchor.constraint(greaterThanOrEqualToConstant: constant).isActive = true
        case .propotionalTo(let anchor):
            self.widthAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).isActive = true
        }
        return self
    }
    
    @discardableResult
    func anchorHeightSize(constant: CGFloat, type: ConstraintType) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        guard let _ = superview else { return self }
        switch type {
        case .constant:
            self.heightAnchor.constraint(equalToConstant: constant).isActive = true
        case .propotionalTo(let anchor):
            self.heightAnchor.constraint(equalTo: anchor, multiplier: constant).isActive = true
        }
        return self
    }
    
    @discardableResult
    func anchorHeightSize(greaterThanOrEqualTo constant: CGFloat, type: ConstraintType) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        guard let _ = superview else { return self }
        switch type {
        case .constant:
            self.heightAnchor.constraint(greaterThanOrEqualToConstant: constant).isActive = true
        case .propotionalTo(let anchor):
            self.heightAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).isActive = true
        }
        return self
    }
    
    @discardableResult
    func anchorSize(to view: UIView) -> Self {
        if superview != nil {
            self.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            self.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        }
        return self
    }
    
    func anchor(
        to targetView: UIView?,
        sourceAttribute: NSLayoutConstraint.Attribute,
        targetAttribute: NSLayoutConstraint.Attribute,
        relation: NSLayoutConstraint.Relation = .equal,
        multiplier: CGFloat = 1,
        constant: CGFloat = 0
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(
            item: self,
            attribute: sourceAttribute,
            relatedBy: relation,
            toItem: targetView,
            attribute: targetAttribute,
            multiplier: multiplier,
            constant: constant
        ).isActive = true
    }
}
