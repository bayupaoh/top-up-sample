//
//  PaymentUseCaseTests.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 21/05/25.
//

import XCTest
@testable import PaymentCore
@testable import PaymentCoreLive

final class PaymentUseCaseTests: XCTestCase {
    
    func testFetchTransactionStatusSuccess() async throws {
        // Given
        let mockService = MockPaymentService()
        let expectedContext = TransactionContext(
            transactionStatus: 4,
            merchantDetails: MerchantDetails(
                logoURL: "https://logo.url",
                name: "Test Merchant"
            ),
            appliedPaymentType: "30_days",
            checkoutAmount: "9.000",
            orderId: "ORDER123",
            itemList: [],
            expirationTime: "1680508832",
            amount: "9.090",
            transactionToken: "token-123"
        )
        mockService.result = .success(expectedContext)
        let useCase = PaymentUseCase(service: mockService)
        
        // When
        let result = try await useCase.fetchTransactionStatus()
        
        // Then
        XCTAssertEqual(result.orderId, "ORDER123")
        XCTAssertEqual(result.merchantDetails.name, "Test Merchant")
        XCTAssertEqual(result.transactionStatus, 4)
    }
    
    func testFetchTransactionStatusFailure() async {
        // Given
        enum TestError: Error { case mock }
        let mockService = MockPaymentService()
        mockService.result = .failure(TestError.mock)
        let useCase = PaymentUseCase(service: mockService)

        // When / Then
        do {
            _ = try await useCase.fetchTransactionStatus()
            XCTFail("Expected to throw but did not")
        } catch {
            XCTAssertTrue(error is TestError)
        }
    }
}
