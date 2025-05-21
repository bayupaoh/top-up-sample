//
//  TransactionResponse.swift
//  topup-sample-library
//
//  Created by Bayu Firmawan Paoh on 21/05/25.
//

import Foundation

public struct TransactionStatusResponse: Codable {
    public let message: String
    public let status: String
    public let transactionContext: TransactionContext

    enum CodingKeys: String, CodingKey {
        case message, status
        case transactionContext = "transaction_context"
    }
}

public struct TransactionContext: Codable {
    public let transactionStatus: Int
    public let merchantDetails: MerchantDetails
    public let appliedPaymentType: String
    public let checkoutAmount: String
    public let orderId: String
    public let itemList: [TransactionItem]
    public let expirationTime: String
    public let amount: String
    public let transactionToken: String

    enum CodingKeys: String, CodingKey {
        case transactionStatus = "transaction_status"
        case merchantDetails = "merchant_details"
        case appliedPaymentType = "applied_payment_type"
        case checkoutAmount = "checkout_amount"
        case orderId = "order_id"
        case itemList = "item_list"
        case expirationTime = "expiration_time"
        case amount
        case transactionToken = "transaction_token"
    }
}

public struct MerchantDetails: Codable {
    public let logoURL: String
    public let name: String

    enum CodingKeys: String, CodingKey {
        case logoURL = "logo_url"
        case name
    }
}

public struct TransactionItem: Codable {
    public let aggregatedPrice: String?
    public let quantity: Int
    public let status: String?
    public let unitPrice: String?
    public let totalAmount: String
    public let pId: Int?
    public let skuType: Int
    public let name: String
    public let category: String?
    public let sku: String

    enum CodingKeys: String, CodingKey {
        case aggregatedPrice = "aggregated_price"
        case quantity
        case status
        case unitPrice = "unit_price"
        case totalAmount = "total_amount"
        case pId = "p_id"
        case skuType = "sku_type"
        case name, category, sku
    }
}
