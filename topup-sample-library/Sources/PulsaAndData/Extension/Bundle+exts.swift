//
//  Bundle+exts.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 18/05/25.
//

import Foundation
import Utils

extension Bundle {
    public static let pulsaAndData = Bundle.module
}

extension String {
    var localized: String {
        localized(bundle: .pulsaAndData)
    }
}

