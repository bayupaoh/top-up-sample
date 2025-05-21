//
//  Untitled.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 20/05/25.
//

import Foundation
import PulsaAndDataCore

final public class ProductsUseCase: ProductUseCaseProtocol {
    
    private let service: ProductServiceProtocol

    init(service: ProductServiceProtocol) {
        self.service = service
    }

    public func fetchProducts() async throws -> [Product] {
        try await service.fetchProducts()
    }

}
