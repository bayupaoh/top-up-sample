//
//  VoucherUseCase.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 21/05/25.
//

import Foundation
import VoucherCore

final public class ProductsUseCase: VoucherUseCaseProtocol {
    
    private let service: VoucherUseCaseProtocol

    init(service: VoucherUseCaseProtocol) {
        self.service = service
    }

    public func fetchVouchers() async throws -> [Voucher] {
        try await service.fetchVouchers()
    }

}
