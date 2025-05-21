//
//  TransactionUseCaseProtocol.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 21/05/25.
//

import Foundation

public protocol PaymentUseCaseProtocol {
    func fetchTransactionStatus() async throws -> TransactionContext
}
