//
//  TopUpSpaceAndRadius.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 16/05/25.
//

import UIKit

// MARK: - Space
public extension CGFloat {

    static func space0() -> CGFloat { return 0.0 }
    static func spaceXxs() -> CGFloat { return 2.0 }
    static func spaceXs() -> CGFloat { return 4.0 }
    static func spaceSm() -> CGFloat { return 8.0 }
    static func spaceMd() -> CGFloat { return 12.0 }
    static func spaceLg() -> CGFloat { return 16.0 }
    static func spaceXl() -> CGFloat { return 24.0 }
    static func space2Xl() -> CGFloat { return 32.0 }
    static func space3Xl() -> CGFloat { return 40.0 }
    static func space4Xl() -> CGFloat { return 48.0 }

}

// MARK: - Radius
public extension CALayer {

    func radiusSm() { cornerRadius = 8.0 }
    func radiusMd() { cornerRadius = 16.0 }
    func radiusLg() { cornerRadius = 24.0 }
    func radiusFull(size: CGSize) { cornerRadius = ([size.width, size.height].min() ?? 2) / 2 }

}
