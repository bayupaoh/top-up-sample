//
//  String+Exts.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 18/05/25.
//

import Foundation

public extension String {
    func localized(bundle: Bundle) -> String {
        NSLocalizedString(
            self,
            bundle: bundle,
            comment: ""
        )
    }
}
