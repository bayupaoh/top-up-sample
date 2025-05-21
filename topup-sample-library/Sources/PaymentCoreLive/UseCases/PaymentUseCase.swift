//
//  TransactionUseCase.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 21/05/25.
//

import Foundation
import PaymentCore

final public class PaymentUseCase: PaymentUseCaseProtocol {
    
    private let service: PaymentServiceProtocol

    init(service: PaymentServiceProtocol) {
        self.service = service
    }

    public func fetchTransactionStatus() async throws -> TransactionContext {
        try await service.fetchTransactionStatus()
    }

}
