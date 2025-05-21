//
//  MockPaymentService.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 21/05/25.
//

import XCTest
@testable import PaymentCore
@testable import PaymentCoreLive

final class MockPaymentService: PaymentServiceProtocol {
    
    var result: Result<TransactionContext, Error>!
    
    func fetchTransactionStatus() async throws -> TransactionContext {
        switch result {
        case .success(let context):
            return context
        case .failure(let error):
            throw error
        case .none:
            fatalError("Mock result not set")
        }
    }
}
