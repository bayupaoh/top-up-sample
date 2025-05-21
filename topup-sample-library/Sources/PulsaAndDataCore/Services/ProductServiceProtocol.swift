//
//  ProductServiceProtocol.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 20/05/25.
//

import Foundation

public protocol ProductServiceProtocol {
    func fetchProducts() async throws -> [Product]
}
