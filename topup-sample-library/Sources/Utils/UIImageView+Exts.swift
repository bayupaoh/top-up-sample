//
//  UIImageView+Exts.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 19/05/25.
//

import UIKit
import Kingfisher

public extension UIImageView {
    func setImage(url: String) {
        kf.setImage(with: URL(string: url))
    }
}
