//
//  ProductsViewModel.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 21/05/25.
//

import Combine
import PulsaAndDataCore

enum ProductsPageState {
    case loading
    case success
    case error(String?)
}

protocol ProductsViewModelState {
    var pageState: ProductsPageState { get }
    var products: [Product] { get }
}

protocol ProductsViewModelAction {
    func fetchProducts(query: String) async
}

typealias ProductsViewModelProtocol = ProductsViewModelState & ProductsViewModelAction

final class ProductsViewModel: ProductsViewModelProtocol {
    @Published private(set) var pageState: ProductsPageState = .loading
    @Published private(set) var products: [Product] = []
    
    private let useCase: ProductUseCaseProtocol
    
    init(useCase: ProductUseCaseProtocol) {
        self.useCase = useCase
    }
    
    func fetchProducts(query: String) async {
        guard query.count >= 4 else {
            self.products = []
            return
        }
        
        pageState = .loading
        do {
            let products = try await useCase.fetchProducts()
            self.pageState = .success
            self.products = products
        } catch {
            self.pageState = .error(error.localizedDescription)
        }
    }
}
